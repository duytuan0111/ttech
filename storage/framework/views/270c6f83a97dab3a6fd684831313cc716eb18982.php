<div class="opacity_menu"></div>
    <div class="header">
      <div class="container">
        <div class="row">
          <div class="col-lg-2 col-xl-3 col-md-3 col-6 col-logo">
            
            <a href="<?php echo e(route('frontend.home')); ?>" class="logo">  
              <img width="170" height="43" src="<?php echo e($web_information->image->logo_header ?? ''); ?>" alt="pocomart">
            </a>
            
          </div>
          <div class="col-lg-9 col-xl-8 col-md-6 col-12 col-search order-3 order-md-2">
            <!-- search -->
            <div class="theme-search-smart">
              <div class="header_search theme-searchs">
                <form action="<?php echo e(route('frontend.search.index')); ?>" method="get" class="input-group search-bar theme-header-search-form ultimate-search" role="search">
                  <input type="text" aria-label="Tìm sản phẩm" name="keyword"  value="<?php echo e($params['keyword'] ?? ''); ?>"autocomplete="off" placeholder="Tìm kiếm sản phẩm..." class="search-auto input-group-field auto-search" required="">
                  <span class="input-group-btn">
                    <button type="submit" class="btn icon-fallback-text" aria-label="Justify">
                      <svg enable-background="new 0 0 612.01 612.01" version="1.1" viewBox="0 0 612.01 612.01" xml:space="preserve" xmlns="http://www.w3.org/2000/svg">
                        <path d="m606.21 578.71-158.01-155.49c41.378-44.956 66.802-104.41 66.802-169.84-0.02-139.95-115.3-253.39-257.51-253.39s-257.49 113.44-257.49 253.39 115.28 253.39 257.49 253.39c61.445 0 117.8-21.253 162.07-56.586l158.62 156.1c7.729 7.614 20.277 7.614 28.006 0 7.747-7.613 7.747-19.971 0.018-27.585zm-348.72-110.91c-120.33 0-217.87-95.993-217.87-214.41s97.543-214.41 217.87-214.41c120.33 0 217.87 95.993 217.87 214.41s-97.542 214.41-217.87 214.41z"/>
                      </svg>
                    </button>
                  </span>
                </form>
              </div>
            </div>
            <div class="contact-phone">
              <p>
                <?php echo app('translator')->get('Tư vấn hỗ trợ'); ?>
              </p>
              <a href="tel:<?php echo e($web_information->information->phone ?? ''); ?>"><?php echo e($web_information->information->phone ?? ''); ?></a> 
            </div>
            <div class="contact-phone not">
              <p>
                <?php echo app('translator')->get('Email'); ?>
              </p>
              <a href="mailto:<?php echo e($web_information->information->email ?? ''); ?>"><?php echo e($web_information->information->email ?? ''); ?></a> 
            </div>
          </div>
          <div class="col-lg-1 col-md-2 col-6 col-account order-2 order-md-3">
            <ul class="group-account">
              
              <li class="cart-drop">
                <div class="icon">
                  <a class="img_hover_cart" href="cart.html" title="Giỏ hàng">
                    <svg enable-background="new 0 0 407.453 407.453" version="1.1" viewBox="0 0 407.45 407.45" xml:space="preserve" xmlns="http://www.w3.org/2000/svg"> <g fill="#010002"> <path d="m255.1 116.52c4.487 0 8.129-3.633 8.129-8.129 0-4.495-3.642-8.129-8.129-8.129h-111.61c-4.487 0-8.129 3.633-8.129 8.129 0 4.495 3.642 8.129 8.129 8.129h111.61z"></path> <path d="m367.06 100.26h-55.372c-4.487 0-8.129 3.633-8.129 8.129 0 4.495 3.642 8.129 8.129 8.129h47.243v274.68h-310.41v-274.68h44.536c4.487 0 8.129-3.633 8.129-8.129 0-4.495-3.642-8.129-8.129-8.129h-52.664c-4.487 0-8.129 3.633-8.129 8.129v290.94c0 4.495 3.642 8.129 8.129 8.129h326.67c4.487 0 8.129-3.633 8.129-8.129v-290.94c0-4.495-3.634-8.128-8.129-8.128z"></path> <path d="m282.59 134.8c4.487 0 8.129-3.633 8.129-8.129v-59.273c-1e-3 -37.156-40.115-67.394-89.618-67.394-49.308 0-89.414 30.238-89.414 67.394v59.274c0 4.495 3.642 8.129 8.129 8.129s8.129-3.633 8.129-8.129v-59.274c0-28.198 32.823-51.137 73.36-51.137 40.334 0 73.157 22.939 73.157 51.137v59.274c-1e-3 4.495 3.633 8.128 8.128 8.128z"></path> <path d="m98.892 147.57c0 11.526 9.389 20.907 20.923 20.907s20.923-9.38 20.923-20.907c0-4.495-3.642-8.129-8.129-8.129s-8.129 3.633-8.129 8.129c0 2.561-2.089 4.65-4.666 4.65-2.569 0-4.666-2.089-4.666-4.65 0-4.495-3.642-8.129-8.129-8.129s-8.127 3.634-8.127 8.129z"></path> <path d="m282.59 168.47c11.534 0 20.923-9.38 20.923-20.907 0-4.495-3.642-8.129-8.129-8.129s-8.129 3.633-8.129 8.129c0 2.561-2.089 4.65-4.666 4.65s-4.666-2.089-4.666-4.65c0-4.495-3.642-8.129-8.129-8.129s-8.129 3.633-8.129 8.129c2e-3 11.526 9.39 20.907 20.925 20.907z"></path> </g> </svg>
                    <span class="count_item count_item_pr"><?php echo e(count((array) session('cart') ?? 0)); ?></span>
                  </a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="header_nav_main header-menu d-none d-lg-block clearfix">
      <div class="container">
        <div class="heade_menunavs">
          <div class="wrap_main d-flex">
            <div class="menu_mega indexs">
              <div class="title_menu">
                <span class="title_">MENU</span>
              </div>
            </div>
            <div class="bg-header-nav">
              <nav class="header-nav">
                <ul class="item_big">
                  <?php if(isset($menu)): ?>
                  <?php
                    $main_menu = $menu->first(function ($item, $key) {
                        return $item->menu_type == 'header' && ($item->parent_id == null || $item->parent_id == 0);
                    });
                    if ($main_menu) {
                        $content = '';
                        foreach ($menu as $item) {
                            $url = $title = '';
                            if ($item->parent_id == $main_menu->id) {
                                $down=($item->sub > 0) ? 'caret-down':'' ; 
                                $title = isset($item->json_params->title->{$locale}) && $item->json_params->title->{$locale} != '' ? $item->json_params->title->{$locale} : $item->name;
                                $url = $item->url_link;
                                $active = ($url == url()->full() || $url=='/')? ' active' : '';
                    
                                $content .= '<li class="nav-item' . $active . '"><a class="a-img '.$down.'" href="' . $url . '"><div>' . $title . '</div></a>';
                                if ($item->sub > 0) {
                                    $content .= '<ul class="item_small">';
                                    foreach ($menu as $item_sub) {
                                        $url = $title = '';
                                        if ($item_sub->parent_id == $item->id) {
                                            $title = isset($item_sub->json_params->title->{$locale}) && $item_sub->json_params->title->{$locale} != '' ? $item_sub->json_params->title->{$locale} : $item_sub->name;
                                            $url = $item_sub->url_link;
                    
                                            $content .= '<li><a href="' . $url . '"><div>' . $title . '</div></a>';
                    
                                            $content .= '</li>';
                                        }
                                    }
                                    $content .= '</ul>';
                                }
                                $content .= '</li>';
                            }
                        }
                        echo $content;
                    }
                  ?>
                <?php endif; ?>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div><?php /**PATH E:\xampp\htdocs\ttech\resources\views/frontend/blocks/header/styles/default.blade.php ENDPATH**/ ?>