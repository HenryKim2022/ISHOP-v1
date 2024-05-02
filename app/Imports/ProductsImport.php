<?php

namespace App\Imports;

use App\Models\Attribute;
use App\Models\AttributeValue;
use App\Models\Brand;
use App\Models\BrandLang;
use App\Models\BundleDeal;
use App\Models\BundleDealLang;
use App\Models\Category;
use App\Models\CategoryLang;
use App\Models\InventoryAttribute;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\ProductImage;
use App\Models\ProductLang;
use App\Models\ShippingRule;
use App\Models\ShippingRuleLang;
use App\Models\TaxRuleLang;
use App\Models\TaxRules;
use App\Models\UpdatedInventory;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Config;
use Maatwebsite\Excel\Concerns\ToCollection;

class ProductsImport implements ToCollection
{

    protected $lang;

    public function __construct($lang)
    {
        $this->lang = $lang;
    }


    /**
     * @return \Illuminate\Support\Collection
     */
    public function collection(Collection $rows)
    {
        $lang = $this->lang;

        $adminId = Auth::user()->id;
        // Skip the first row (header/title row)
        $data = $rows->skip(1);





        if ($lang) {

            $brands = Brand::leftJoin('brand_langs as br',
                function ($join) use ($lang) {
                    $join->on('br.brand_id', '=', 'brands.id');
                    $join->where('br.lang', $lang);
                })->select('brands.id', 'br.title');

            $taxRules = TaxRules::leftJoin('tax_rule_langs as tr',
                function ($join) use ($lang) {
                    $join->on('tr.tax_rule_id', '=', 'tax_rules.id');
                    $join->where('tr.lang', $lang);
                })->select('tax_rules.id', 'tr.title');




            $shippingRules = ShippingRule::leftJoin('shipping_rule_langs as sr',
                function ($join) use ($lang) {
                    $join->on('sr.shipping_rule_id', '=', 'shipping_rules.id');
                    $join->where('sr.lang', $lang);
                })->select('shipping_rules.id', 'sr.title');


            $bundleDeals = BundleDeal::leftJoin('bundle_deal_langs as bd',
                function ($join) use ($lang) {
                    $join->on('bd.bundle_deal_id', '=', 'bundle_deals.id');
                    $join->where('bd.lang', $lang);
                })->select('bundle_deals.id', 'bd.title');

            $categories = Category::leftJoin('category_langs as cl',
                function ($join) use ($lang) {
                    $join->on('cl.category_id', '=', 'categories.id');
                    $join->where('cl.lang', $lang);
                })->select('categories.id', 'cl.title');

            $attrValues = AttributeValue::leftJoin('attribute_value_langs as avl',
                function ($join) use ($lang) {
                    $join->on('avl.attribute_value_id', '=', 'attribute_values.id');
                    $join->where('avl.lang', $lang);
                })->select('attribute_values.id', 'avl.title');

        } else {
            $brands = Brand::get();
            $taxRules = TaxRules::get();
            $shippingRules = ShippingRule::get();
            $bundleDeals = BundleDeal::get();
            $categories = Category::get();
            $attrValues = AttributeValue::get();
        }

        $brandsArr = [];
        foreach ($brands as $i) {
            $brandsArr[$i->title] = $i->id;
        }

        $taxRulesArr = [];
        foreach ($taxRules as $i) {
            $taxRulesArr[$i->title] = $i->id;
        }




        $shippingRulesArr = [];
        foreach ($shippingRules as $i) {
            $shippingRulesArr[$i->title] = $i->id;
        }

        $bundleDealsArr = [];
        foreach ($bundleDeals as $i) {
            $bundleDealsArr[$i->title] = $i->id;
        }

        $categoriesArr = [];
        foreach ($categories as $i) {
            $categoriesArr[$i->title] = $i->id;
        }

        $attrValuesArr = [];
        foreach ($attrValues as $i) {
            $attrValuesArr[$i->title] = $i->id;
        }

        // Process the data as needed
        foreach ($data as $row) {

            if(count($row) != 26){
                throw new \Exception( __('lang.invalid_bulk', [], $lang));
            }


            $slug = $row[12];

            $prod = Product::where('slug', $slug)->first();
            $count = 1;
            while ($prod) {
                $slug = $slug . '-' . $count;
                $count++;
                $prod = Product::where('slug', $slug)->first();
            }


            if ($lang) {

                if (!key_exists(trim($row[14]), $taxRulesArr)) {
                    $tr = TaxRules::create([
                        'type' => Config::get('constants.priceType.FLAT'),
                        'admin_id' => $adminId,
                        'title' => ""
                    ]);

                    TaxRuleLang::create([
                        'tax_rule_id' => $tr->id, 'title' => trim($row[14]), 'lang' => $lang
                    ]);

                    $taxRulesArr[trim($row[14])] = $tr->id;
                }




                if (!key_exists(trim($row[15]), $brandsArr)) {
                    $br = Brand::create([
                        'admin_id' => $adminId,
                        'title' => "",
                    ]);

                    BrandLang::create([
                        'brand_id' => $br->id, 'title' => trim($row[15]), 'lang' => $lang
                    ]);

                    $brandsArr[trim($row[15])] = $br->id;
                }

                if (!key_exists(trim($row[16]), $shippingRulesArr)) {
                    $sr = ShippingRule::create([
                        'admin_id' => $adminId,
                        'title' => "",
                    ]);

                    ShippingRuleLang::create([
                        'shipping_rule_id' => $sr->id, 'title' => trim($row[16]), 'lang' => $lang
                    ]);

                    $shippingRulesArr[trim($row[16])] = $sr->id;
                }

                if (!key_exists(trim($row[17]), $bundleDealsArr)) {
                    $bd = BundleDeal::create([
                        'admin_id' => $adminId,
                        'title' => "",
                        'free' => 1,
                        'buy' => 1
                    ]);

                    BundleDealLang::create([
                        'bundle_deal_id' => $bd->id, 'title' => trim($row[17]), 'lang' => $lang
                    ]);

                    $bundleDealsArr[trim($row[17])] = $bd->id;
                }

                $prodData = [
                    'title' => "",
                    'badge' => "",
                    'unit' => "",
                    'description' => "",
                    'overview' => "",
                    'meta_title' =>"",
                    'meta_description' => ""
                ];

            } else {

                if (!key_exists(trim($row[14]), $taxRulesArr)) {
                    $tr = TaxRules::create([
                        'type' => Config::get('constants.priceType.FLAT'),
                        'admin_id' => $adminId,
                        'title' => trim($row[14])
                    ]);
                    $taxRulesArr[$tr->title] = $tr->id;
                }

                if (!key_exists(trim($row[15]), $brandsArr)) {
                    $br = Brand::create([
                        'admin_id' => $adminId,
                        'title' => trim($row[15])
                    ]);
                    $brandsArr[$br->title] = $br->id;
                }

                if (!key_exists(trim($row[16]), $shippingRulesArr)) {
                    $sr = ShippingRule::create([
                        'admin_id' => $adminId,
                        'title' => trim($row[16])
                    ]);
                    $shippingRulesArr[$sr->title] = $sr->id;
                }

                if (!key_exists(trim($row[17]), $bundleDealsArr)) {
                    $bd = BundleDeal::create([
                        'admin_id' => $adminId,
                        'title' => trim($row[17]),
                        'free' => 1,
                        'buy' => 1
                    ]);
                    $bundleDealsArr[$bd->title] = $bd->id;
                }

                $prodData = [
                    'title' => $row[0],
                    'badge' => $row[1],
                    'unit' => $row[2],
                    'description' => $row[3],
                    'overview' => $row[4],
                    'meta_title' => $row[5],
                    'meta_description' => $row[6],
                ];
            }


            $pArr= [
                'image' => $row[7],
                'video' => $row[8],
                'video_thumb' => $row[9],
                'warranty' => $row[10],
                'refundable' => $row[11],
                'slug' => $slug,
                'tags' => $row[13],
                'tax_rule_id' => $taxRulesArr[trim($row[14])],
                'brand_id' => $brandsArr[trim($row[15])],
                'shipping_rule_id' => $shippingRulesArr[trim($row[16])],
                'bundle_deal_id' => $bundleDealsArr[trim($row[17])],
                'purchased' => $row[18],
                'selling' => $row[19],
                'offered' => $row[20],
                'status' => $row[21],
                'admin_id' => $adminId
            ];

            if(trim($row[22])){

                $updateArr = [];
                if($lang){

                    $updateArr = $pArr;
                } else {

                    $updateArr = array_merge($prodData, $pArr);
                }

                Product::where('id', trim($row[22]))->update($updateArr);

                $prod = new Product();
                $prod->id = trim($row[22]);

            } else {
                $prod = Product::create(array_merge($prodData, $pArr));

            }

            if($lang){
                $productLang = ProductLang::where('product_id', $prod->id)->first();
                $pLangArr = [
                    'product_id' => $prod->id,
                    'lang' => $lang,
                    'title' => $row[0],
                    'badge' => $row[1],
                    'unit' => $row[2],
                    'description' => $row[3],
                    'overview' => $row[4],
                    'meta_title' => $row[5],
                    'meta_description' => $row[6]
                ];

                if($productLang){
                    ProductLang::where('product_id', $prod->id)->update($pLangArr);

                } else{
                    ProductLang::create($pLangArr);

                }
            }

            $categories = explode(',', $row[23]);

            foreach ($categories as $key => $c) {

                if (!key_exists(trim($c),$categoriesArr )) {

                    if($lang){

                        $cat = Category::create([
                            'title' => "",
                            'admin_id' => $adminId
                        ]);

                        CategoryLang::create([
                            'category_id' => $cat->id,
                            'title' => trim($c),
                            'lang' => $lang
                        ]);

                    }else {
                        $cat = Category::create([
                            'title' => trim($c),
                            'admin_id' => $adminId
                        ]);

                    }

                    $categoriesArr[trim($c)] = $cat->id;
                }

                $primary = 0;
                if ($key == 0) {
                    $primary = 1;
                }

                ProductCategory::create([
                    'category_id' => $categoriesArr[trim($c)],
                    'product_id' => $prod->id,
                    'primary' => $primary
                ]);
            }


            $inventories = explode(',', $row[24]);



            foreach ($inventories as $iv) {
                $inventoriesParts = explode('=>', $iv);

                if (trim($inventoriesParts[1])) {
                    $inventoriesPriceQty = explode('/', trim($inventoriesParts[1]));

                    if (count($inventoriesPriceQty) == 2) {
                        $inv = UpdatedInventory::create([
                            'product_id' => $prod->id,
                            'quantity' => trim($inventoriesPriceQty[1]),
                            'price' => trim($inventoriesPriceQty[0])
                        ]);

                        if (trim($inventoriesParts[0])) {
                            $inventoriesAttr = explode('+', trim($inventoriesParts[0]));


                            foreach ($inventoriesAttr as $ivAttr) {

                                if (trim($ivAttr) && key_exists(trim($ivAttr), $attrValuesArr)) {

                                    InventoryAttribute::create([
                                        'inventory_id' => $inv->id,
                                        'attribute_value_id' => $attrValuesArr[trim($ivAttr)]
                                    ]);
                                }
                            }
                        }
                    }
                }
            }


            $images = explode(',', $row[25]);
            foreach ($images as $img) {
                ProductImage::create([
                    'image' => $img,
                    'product_id' => $prod->id,
                    'admin_id' => $adminId
                ]);
            }
        }
    }
}
