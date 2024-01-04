<div class="sidebar col-lg-3">
  <div class="sidebar-widgets-wrap">
    @php
      $params_taxonomy['status'] = App\Consts::TAXONOMY_STATUS['active'];
      $params_taxonomy['taxonomy'] = App\Consts::TAXONOMY['product'];
      
      $taxonomys = App\Http\Services\ContentService::getCmsTaxonomy($params_taxonomy)->get();
    @endphp
    @isset($taxonomys)
     
      <div class="widget widget-filter-links">
        <h4 style="font-weight: bold;">Danh mục sản phẩm</h4>
        <ul
          {{-- class="custom-filter ps-2"
          data-container="#shop"
          data-active-class="active-filter" --}}
        >
          <li class="widget-filter-reset active-filter">
            <a href="#" class="widget-filter-reset-a" data-filter="*">Clear</a>
          </li>
          @foreach ($taxonomys as $item)
            @if ($item->parent_id == 0 || $item->parent_id == null)
            <div class="box-li mb-3">
              @php
                $title = $item->json_params->title->{$locale} ?? $item->title;
                $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['product'], $title, $item->id);
                
                $url_current = url()->full();
                $current = $alias_category == $url_current ? 'active-filter' : '';
              @endphp
              <li class="{{ $current }} ">
                <a  href="{{ $alias_category }}" title="{{ $title }}" data-filter=".{{ $item->alias }}">
                  {{ Str::limit($title, 100) }}
                </a>
                  <span class="click_li"><i class="fa fa-angle-down"></i></span>
              </li>
              <div class="show_list">
              @foreach ($taxonomys as $sub)
                @if ($sub->parent_id == $item->id)
                  <div class="box-li-li mt-2">
                  @php
                    $title_sub = $sub->json_params->title->{$locale} ?? $sub->title;
                    $alias_category_sub = App\Helpers::generateRoute(App\Consts::TAXONOMY['product'], $title_sub, $sub->id);
                    $url_current = url()->full();
                    $current = $alias_category_sub == $url_current ? 'active-filter' : '';
                  @endphp
                  <li class="{{ $current }} mb-2">
                    <a href="{{ $alias_category_sub }}" title="{{ $title_sub }}" data-filter=".{{ $sub->alias }}">
                      - {{ Str::limit($title_sub, 100) }}
                    </a>
                    <span class="click_li_li"><i class="fa fa-angle-down"></i></span>
                  </li>
                    <div class="show_list_list">
                      @foreach ($taxonomys as $sub_child)
                        @if ($sub_child->parent_id == $sub->id)
                          @php
                            $title_sub_child = $sub_child->json_params->title->{$locale} ?? $sub_child->title;
                            $alias_category_sub_child = App\Helpers::generateRoute(App\Consts::TAXONOMY['product'], $title_sub_child, $sub_child->id);
                            $url_current = url()->full();
                            $current = $alias_category_sub_child == $url_current ? 'active-filter' : '';
                          @endphp
                          <li class="{{ $current }} ml-3 ">
                            <a class="font-size-12" href="{{ $alias_category_sub_child }}" title="{{ $title_sub_child }}" data-filter=".{{ $sub_child->alias }}">
                              - - {{ Str::limit($title_sub_child, 100) }}
                            </a>
                            {{-- <span></span> --}}
                          </li>
                        @endif
                      @endforeach
                    </div>
                  </div>
                @endif
              @endforeach
              </div>
            </div>  
            @endif
          @endforeach
        </ul>
      </div>

      <div class="widget widget-filter-links">
        <h4 style="font-weight: bold;">Sắp xếp theo</h4>
        <ul class="shop-sorting ps-2">
          <li class="widget-filter-reset active-filter">
            <a href="#" class="widget-filter-reset-a" data-sort-by="original-order">Clear</a>
          </li>
          <li><a href="#" data-sort-by="name">Tên</a></li>
          <li class="lowtohight">
            <a href="#" data-sort-by="price_lh"
              >Giá: Thấp tới Cao</a
            >
          </li>
          <li>
            <a href="#" data-sort-by="price_hl"
              >Giá: Cao tới Thấp</a
            >
          </li>
        </ul>
      </div>
    @endisset
    {{-- NEW PRODUCT --}}
    @php
      $params_product['status'] = App\Consts::POST_STATUS['active'];
      $params_product['is_type'] = App\Consts::POST_TYPE['product'];
      $params_product['order_by'] = 'id';
      
      $recents = App\Http\Services\ContentService::getCmsPost($params_product)
          ->limit(App\Consts::PAGINATE['sidebar'])
          ->get();
    @endphp
    @isset($recents)
      <div class="widget clearfix">

        <h4>@lang('Latest products')</h4>
        <div class="posts-sm row col-mb-30" id="recent-shop-list-sidebar">

          @foreach ($recents as $item)
            @php
              $title = $item->json_params->title->{$locale} ?? $item->title;
              $brief = $item->json_params->brief->{$locale} ?? $item->brief;
              $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
              $date = date('H:i d/m/Y', strtotime($item->created_at));
              // Viet ham xu ly lay slug
              $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['product'], $item->taxonomy_title, $item->taxonomy_id);
              $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['product'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
            @endphp
            <div class="entry col-12">
              <div class="grid-inner row g-0">
                <div class="col-auto">
                  <div class="entry-image">
                    <a href="{{ $alias }}"><img  src="{{ $image }}" alt="{{ Str::limit($title, 500) }}"></a>
                  </div>
                </div>
                <div class="col ps-3">
                  <div class="entry-title">
                    <h4><a href="{{ $alias }}">{{ Str::limit($title, 50) }}</a></h4>
                  </div>
                  <div class="entry-meta no-separator">
                    <ul>
                      <li class="color">
                        {{ isset($item->json_params->price) && $item->json_params->price > 0 ? number_format($item->json_params->price, 0, ',', '.') . ' đ' : __('Contact') }}

                      </li>
                      <li class="product-rating d-none">
                        <i class="icon-star3"></i>
                        <i class="icon-star3"></i>
                        <i class="icon-star3"></i>
                        <i class="icon-star3"></i>
                        <i class="icon-star3"></i>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          @endforeach
        </div>
      </div>
    @endisset

    {{-- MOST VIEW PRODUCT --}}
    @php
      $params_product['status'] = App\Consts::POST_STATUS['active'];
      $params_product['is_type'] = App\Consts::POST_TYPE['product'];
      $params_product['order_by'] = 'count_visited';
      
      $mostViews = App\Http\Services\ContentService::getCmsPost($params_product)
          ->limit(App\Consts::PAGINATE['sidebar'])
          ->get();
    @endphp
    @isset($mostViews)
      <div class="widget clearfix">

        <h4>@lang('Most viewed products')</h4>
        <div class="posts-sm row col-mb-30" id="recent-shop-list-sidebar">

          @foreach ($mostViews as $item)
            @php
              $title = $item->json_params->title->{$locale} ?? $item->title;
              $brief = $item->json_params->brief->{$locale} ?? $item->brief;
              $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
              $date = date('H:i d/m/Y', strtotime($item->created_at));
              // Viet ham xu ly lay slug
              $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['product'], $item->taxonomy_title, $item->taxonomy_id);
              $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['product'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
            @endphp
            <div class="entry col-12">
              <div class="grid-inner row g-0">
                <div class="col-auto">
                  <div class="entry-image">
                    <a href="{{ $alias }}"><img src="{{ $image }}"
                        alt="{{ Str::limit($title, 500) }}"></a>
                  </div>
                </div>
                <div class="col ps-3">
                  <div class="entry-title">
                    <h4><a href="{{ $alias }}">{{ Str::limit($title, 50) }}</a></h4>
                  </div>
                  <div class="entry-meta no-separator">
                    <ul>
                      <li class="color">
                        {{ isset($item->json_params->price) && $item->json_params->price > 0 ? number_format($item->json_params->price, 0, ',', '.') . ' đ' : __('Contact') }}

                      </li>
                      <li class="product-rating d-none">
                        <i class="icon-star3"></i>
                        <i class="icon-star3"></i>
                        <i class="icon-star3"></i>
                        <i class="icon-star3"></i>
                        <i class="icon-star3"></i>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          @endforeach
        </div>
      </div>
    @endisset

  </div>
</div>
