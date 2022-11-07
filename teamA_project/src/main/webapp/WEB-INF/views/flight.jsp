<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./includes/header.jsp"%>


<main id="rlr-main" class="rlr-main">
      <div class="rlr-search-results-page container">
        <aside class="row">
          <!-- Search results header -->
          <div class="rlr-search-results-header rlr-search-results-header__wrapper">
            <!-- Title -->
            <h1 class="rlr-search-results-header__value">
              Showing 1 - 10 of 2037 results for
              <strong>London, United Kingdom</strong>
            </h1>
            <!-- Sort order -->
            <div class="rlr-search-results-header__sorting-wrapper">
              <span class="rlr-search-results-header__label">Sort by:</span>
              <div class="dropdown rlr-dropdown rlr-js-dropdown">
                <button class="btn dropdown-toggle rlr-dropdown__button rlr-js-dropdown-button" type="button" id="rlr_dropdown_menu_search_results" data-bs-toggle="dropdown" aria-expanded="false" data-bs-offset="-50,35">Most Popular</button>
                <ul class="dropdown-menu rlr-dropdown__menu" aria-labelledby="rlr_dropdown_menu_search_results">
                  <li>
                    <a class="dropdown-item rlr-dropdown__item rlr-js-dropdown-item" href="#">Recommended</a>
                  </li>
                  <li>
                    <a class="dropdown-item rlr-dropdown__item rlr-js-dropdown-item" href="#">Price (Low to High)</a>
                  </li>
                  <li>
                    <a class="dropdown-item rlr-dropdown__item rlr-js-dropdown-item" href="#">Price (High to Low)</a>
                  </li>
                  <li>
                    <hr class="dropdown-divider rlr-dropdown__divider" />
                  </li>
                  <li>
                    <a class="dropdown-item rlr-dropdown__item rlr-js-dropdown-item" href="#">Duration ( Short to Long)</a>
                  </li>
                  <li>
                    <a class="dropdown-item rlr-dropdown__item rlr-js-dropdown-item" href="#">Duration (Long to Short)</a>
                  </li>
                  <li>
                    <a class="dropdown-item rlr-dropdown__item rlr-js-dropdown-item" href="#">New on Emprise</a>
                  </li>
                  <li>
                    <hr class="dropdown-divider rlr-dropdown__divider" />
                  </li>
                  <li>
                    <a class="dropdown-item rlr-dropdown__item rlr-js-dropdown-item" href="#">Traveler Rating</a>
                  </li>
                  <li>
                    <a class="dropdown-item rlr-dropdown__item rlr-js-dropdown-item" href="#">Deals</a>
                  </li>
                  <li>
                    <a class="dropdown-item rlr-dropdown__item rlr-js-dropdown-item" href="#">Distance</a>
                  </li>
                  <li>
                    <a class="dropdown-item rlr-dropdown__item rlr-js-dropdown-item" href="#">Star Rating</a>
                  </li>
                  <li>
                    <hr class="dropdown-divider rlr-dropdown__divider" />
                  </li>
                  <li>
                    <a class="dropdown-item rlr-dropdown__item rlr-js-dropdown-item" href="#">Default</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </aside>
        <div class="row rlr-search-results-page__product-details">
          <aside class="col-xl-4 rlr-search-results-page__sidebar">
            <div class="rlr-product-filters__filters-wrapper">
              <div class="rlr-product-filters__filter row">
                <div class="col-md-6">
                  <button type="button" class="btn rlr-button rlr-button--fullwidth rlr-button--primary">편도 조회</button>
                </div>
                <div class="col-md-6">
                  <button type="button" class="btn rlr-button rlr-button--fullwidth rlr-button--primary">왕복 조회</button>
                </div>
              </div>
              <!-- Search filter -->
              <div class="rlr-product-filters__filter">
                <label class="rlr-form-label rlr-form-label-- rlr-product-filters__label"> 출발지 </label>
                <div class="rlr-input-wrapper">
                  <input type="text" class="form-control"/>
                </div>
              </div>
              <div class="rlr-product-filters__filter">
                <label class="rlr-form-label rlr-form-label-- rlr-product-filters__label"> 도착지 </label>
                <div class="rlr-input-wrapper">
                  <input type="text" class="form-control"/>
                </div>
              </div>
              <!-- Date filter -->
              <div class="rlr-product-filters__filter">
                <label class="rlr-form-label rlr-form-label-- rlr-product-filters__label"> 가는날 </label>
                <div class="rlr-input-groups rlr-input-groups--daterange js-date-ranges">
                  <div class="rlr-input-group rlr-input-group__datefield rlr-custom-input rlr-custom-input--numberfield rlr-custom-input--option">
                    <input type="hidden" autocomplete="off" class="form-control form-input" />
                  </div>
                  <div class="rlr-input-group rlr-input-group__datefield rlr-js-booking-form-daterange" id="rlr-flight-startDate">
                    <input type="text" autocomplete="off" id="rlr-booking-dateranges-input" class="form-control form-input" />
                  </div>
                </div>
              </div>
              <div class="rlr-product-filters__filter">
                <label class="rlr-form-label rlr-form-label-- rlr-product-filters__label"> 오는날 </label>
                <div class="rlr-input-groups rlr-input-groups--daterange js-date-ranges">
                  <div class="rlr-input-group rlr-input-group__datefield rlr-custom-input rlr-custom-input--numberfield rlr-custom-input--option">
                    <input type="hidden" autocomplete="off" class="form-control form-input" />
                  </div>
                  <div class="rlr-input-group rlr-input-group__datefield rlr-js-booking-form-daterange" id="rlr-flight-endDate">
                    <input type="text" autocomplete="off" id="rlr-booking-dateranges-input" class="form-control form-input" />
                  </div>
                </div>
              </div>
              <!-- round filter -->
              <div class="rlr-product-filters__filter">
                <label class="rlr-form-label rlr-form-label-- rlr-product-filters__label">편도&왕복</label>
                <ul class="rlr-checkboxes">
                  <li class="form-check form-check-block">
                    <input class="form-check-input rlr-form-check-input rlr-product-filters__checkbox" id="rlr-airline-tag-1" type="checkbox" />
                    <label class="rlr-form-label rlr-form-label--checkbox rlr-product-filters__checkbox-label" for="rlr-product-tag-1"> 왕복 </label>
                  </li>
                  <li class="form-check form-check-block">
                    <input class="form-check-input rlr-form-check-input rlr-product-filters__checkbox" id="rlr-airline-tag-2" type="checkbox" />
                    <label class="rlr-form-label rlr-form-label--checkbox rlr-product-filters__checkbox-label" for="rlr-product-tag-2"> 편도 </label>
                  </li>
                </ul>
              </div>
              <!-- Price range filter -->
              <div class="rlr-product-filters__filter">
                <label class="rlr-form-label rlr-form-label-- rlr-product-filters__label"> 금액범위 </label>
                <div class="rlr-range-slider">
                  <span class="rlr-range-slider__price-box">
                    <input type="number" autocomplete="off" class="form-control" value="500" data-name-min="0" data-name-max="10000" /> <input type="number" autocomplete="off" class="form-control" value="7500" data-name-min="0" data-name-max="10000" />
                  </span>
                  <input value="500" min="0" max="10000" step="500" type="range" />
                  <input value="7500" min="0" max="10000" step="500" type="range" />
                </div>
              </div>
              <!-- airline filter -->
              <div class="rlr-product-filters__filter">
                <label class="rlr-form-label rlr-form-label-- rlr-product-filters__label">항공사</label>
                <ul class="rlr-checkboxes">
                  <li class="form-check form-check-block">
                    <input class="form-check-input rlr-form-check-input rlr-product-filters__checkbox" id="rlr-airline-tag-1" type="checkbox" />
                    <label class="rlr-form-label rlr-form-label--checkbox rlr-product-filters__checkbox-label" for="rlr-product-tag-1"> 대한항공 </label>
                  </li>
                  <li class="form-check form-check-block">
                    <input class="form-check-input rlr-form-check-input rlr-product-filters__checkbox" id="rlr-airline-tag-2" type="checkbox" />
                    <label class="rlr-form-label rlr-form-label--checkbox rlr-product-filters__checkbox-label" for="rlr-product-tag-2"> 아시아나 </label>
                  </li>
                  <li class="form-check form-check-block">
                    <input class="form-check-input rlr-form-check-input rlr-product-filters__checkbox" id="rlr-airline-tag-3" type="checkbox" />
                    <label class="rlr-form-label rlr-form-label--checkbox rlr-product-filters__checkbox-label" for="rlr-product-tag-3"> Tway </label>
                  </li>
                </ul>
              </div>
            </div>
          </aside>
          <div class="rlr-search-results-page__product-list col-xl-8">
            <div class="row rlr-search-results-page__card-wrapper">
              <div class="col-md-6" data-aos="fade-up" data-aos-offset="300" data-aos-duration="300">
                <!-- Product card item -->
                <article class="rlr-product-card sale" itemscope itemtype="https://schema.org/Product">
                  <!-- Product card image -->
                  <figure class="rlr-product-card__image-wrapper"><img itemprop="image" src="/resources/assets/images/item-listing/item-listing01.jpg" alt="product-image" /></figure>
                  <div class="rlr-product-card__detail-wrapper rlr-js-detail-wrapper">
                    <!-- Product card header -->
                    <header class="rlr-product-card__header">
                      <div>
                        <div class="rlr-product-card__anchor-title">
                          <h2 class="rlr-product-card__title" itemprop="name">Hiking tour in Chisapani</h2>
                        </div>
                      </div>
                      <div class="rlr-product-detail-header__button-wrapper">
                        <button type="button" class="btn rlr-button rlr-button--circle rlr-wishlist rlr-wishlist-button--dark rlr-wishlist-button rlr-js-action-wishlist" aria-label="Save to Wishlist">
                          <i class="rlr-icon-font flaticon-shopping"> </i>
                        </button>
                        <span class="rlr-product-detail-header__helptext rlr-js-helptext"></span>
                      </div>
                    </header>
                    <div>
                      <div class="">
                        <div>
                          <div>
                            <span class="rlr-product-card__anchor-cat">
                              <span class="rlr-product-card__sub-title">어디</span>
                            </span>
                            <span class="rlr-product-card__sub-title"> > </span>
                            <span class="rlr-product-card__anchor-sub-cat">
                              <span class="rlr-product-card__sub-title">어디</span>
                            </span>
                          </div>

                          <div class="rlr-product-card__footer">
                            <div class="rlr-icon-text rlr-product-card__icon-text"><i class="rlr-icon-font flaticon-three-o-clock-clock"> </i>
                              <span class="">몇시</span>
                              <span class=""> ~ </span>
                              <span class="">몇시</span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- Product card body -->
                    <div class="rlr-product-card__footer">
                      <div class="rlr-product-card__prices" itemprop="offers" itemscope itemtype="https://schema.org/Offer">
                        <span class="rlr-product-card__price"> <mark itemprop="priceCurrency">$</mark><mark itemprop="price">895.00</mark> </span>
                      </div>
                    </div>
                  </div>
                </article>
              </div>
              <div class="col-md-6" data-aos="fade-up" data-aos-offset="300" data-aos-duration="300">
                <!-- Product card item -->
                <article class="rlr-product-card sale" itemscope itemtype="https://schema.org/Product">
                  <!-- Product card image -->
                  <figure class="rlr-product-card__image-wrapper"><img itemprop="image" src="/resources/assets/images/item-listing/item-listing01.jpg" alt="product-image" /></figure>
                  <div class="rlr-product-card__detail-wrapper rlr-js-detail-wrapper">
                    <!-- Product card header -->
                    <header class="rlr-product-card__header">
                      <div>
                        <div class="rlr-product-card__anchor-title">
                          <h2 class="rlr-product-card__title" itemprop="name">Hiking tour in Chisapani</h2>
                        </div>
                      </div>
                      <div class="rlr-product-detail-header__button-wrapper">
                        <button type="button" class="btn rlr-button rlr-button--circle rlr-wishlist rlr-wishlist-button--dark rlr-wishlist-button rlr-js-action-wishlist" aria-label="Save to Wishlist">
                          <i class="rlr-icon-font flaticon-shopping"> </i>
                        </button>
                        <span class="rlr-product-detail-header__helptext rlr-js-helptext"></span>
                      </div>
                    </header>
                    <div>
                      <div class="">
                        <div>
                          <div>
                            <span class="rlr-product-card__anchor-cat">
                              <span class="rlr-product-card__sub-title">어디</span>
                            </span>
                            <span class="rlr-product-card__sub-title"> > </span>
                            <span class="rlr-product-card__anchor-sub-cat">
                              <span class="rlr-product-card__sub-title">어디</span>
                            </span>
                          </div>

                          <div class="rlr-product-card__footer">
                            <div class="rlr-icon-text rlr-product-card__icon-text"><i class="rlr-icon-font flaticon-three-o-clock-clock"> </i>
                              <span class="">몇시</span>
                              <span class=""> ~ </span>
                              <span class="">몇시</span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- Product card body -->
                    <div class="rlr-product-card__footer">
                      <div class="rlr-product-card__prices" itemprop="offers" itemscope itemtype="https://schema.org/Offer">
                        <span class="rlr-product-card__price"> <mark itemprop="priceCurrency">$</mark><mark itemprop="price">895.00</mark> </span>
                      </div>
                    </div>
                  </div>
                </article>
              </div>
              <div class="col-md-6" data-aos="fade-up" data-aos-offset="300" data-aos-duration="300">
                <!-- Product card item -->
                <article class="rlr-product-card sale" itemscope itemtype="https://schema.org/Product">
                  <!-- Product card image -->
                  <figure class="rlr-product-card__image-wrapper"><img itemprop="image" src="/resources/assets/images/item-listing/item-listing01.jpg" alt="product-image" /></figure>
                  <div class="rlr-product-card__detail-wrapper rlr-js-detail-wrapper">
                    <!-- Product card header -->
                    <header class="rlr-product-card__header">
                      <div>
                        <div class="rlr-product-card__anchor-title">
                          <h2 class="rlr-product-card__title" itemprop="name">Hiking tour in Chisapani</h2>
                        </div>
                      </div>
                      <div class="rlr-product-detail-header__button-wrapper">
                        <button type="button" class="btn rlr-button rlr-button--circle rlr-wishlist rlr-wishlist-button--dark rlr-wishlist-button rlr-js-action-wishlist" aria-label="Save to Wishlist">
                          <i class="rlr-icon-font flaticon-shopping"> </i>
                        </button>
                        <span class="rlr-product-detail-header__helptext rlr-js-helptext"></span>
                      </div>
                    </header>
                    <div>
                      <div class="">
                        <div>
                          <div>
                            <span class="rlr-product-card__anchor-cat">
                              <span class="rlr-product-card__sub-title">어디</span>
                            </span>
                            <span class="rlr-product-card__sub-title"> > </span>
                            <span class="rlr-product-card__anchor-sub-cat">
                              <span class="rlr-product-card__sub-title">어디</span>
                            </span>
                          </div>

                          <div class="rlr-product-card__footer">
                            <div class="rlr-icon-text rlr-product-card__icon-text"><i class="rlr-icon-font flaticon-three-o-clock-clock"> </i>
                              <span class="">몇시</span>
                              <span class=""> ~ </span>
                              <span class="">몇시</span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- Product card body -->
                    <div class="rlr-product-card__footer">
                      <div class="rlr-product-card__prices" itemprop="offers" itemscope itemtype="https://schema.org/Offer">
                        <span class="rlr-product-card__price"> <mark itemprop="priceCurrency">$</mark><mark itemprop="price">895.00</mark> </span>
                      </div>
                    </div>
                  </div>
                </article>
              </div>
              <div class="col-md-6" data-aos="fade-up" data-aos-offset="300" data-aos-duration="300">
                <!-- Product card item -->
                <article class="rlr-product-card sale" itemscope itemtype="https://schema.org/Product">
                  <!-- Product card image -->
                  <figure class="rlr-product-card__image-wrapper"><img itemprop="image" src="/resources/assets/images/item-listing/item-listing01.jpg" alt="product-image" /></figure>
                  <div class="rlr-product-card__detail-wrapper rlr-js-detail-wrapper">
                    <!-- Product card header -->
                    <header class="rlr-product-card__header">
                      <div>
                        <div class="rlr-product-card__anchor-title">
                          <h2 class="rlr-product-card__title" itemprop="name">Hiking tour in Chisapani</h2>
                        </div>
                      </div>
                      <div class="rlr-product-detail-header__button-wrapper">
                        <button type="button" class="btn rlr-button rlr-button--circle rlr-wishlist rlr-wishlist-button--dark rlr-wishlist-button rlr-js-action-wishlist" aria-label="Save to Wishlist">
                          <i class="rlr-icon-font flaticon-shopping"> </i>
                        </button>
                        <span class="rlr-product-detail-header__helptext rlr-js-helptext"></span>
                      </div>
                    </header>
                    <div>
                      <div class="">
                        <div>
                          <div>
                            <span class="rlr-product-card__anchor-cat">
                              <span class="rlr-product-card__sub-title">어디</span>
                            </span>
                            <span class="rlr-product-card__sub-title"> > </span>
                            <span class="rlr-product-card__anchor-sub-cat">
                              <span class="rlr-product-card__sub-title">어디</span>
                            </span>
                          </div>

                          <div class="rlr-product-card__footer">
                            <div class="rlr-icon-text rlr-product-card__icon-text"><i class="rlr-icon-font flaticon-three-o-clock-clock"> </i>
                              <span class="">몇시</span>
                              <span class=""> ~ </span>
                              <span class="">몇시</span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- Product card body -->
                    <div class="rlr-product-card__footer">
                      <div class="rlr-product-card__prices" itemprop="offers" itemscope itemtype="https://schema.org/Offer">
                        <span class="rlr-product-card__price"> <mark itemprop="priceCurrency">$</mark><mark itemprop="price">895.00</mark> </span>
                      </div>
                    </div>
                  </div>
                </article>
              </div>
            </div>
            <hr class="rlr-search-results-page__divider" />
            <nav class="rlr-pagination" aria-label="Product list navigation">
              <ul class="pagination rlr-pagination__list">
                <li class="page-item rlr-pagination__page-item disabled">
                  <a class="page-link rlr-pagination__page-link rlr-pagination__page-link--prev" href="#" aria-label="Previous">
                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path d="M15.833 10H4.167m0 0L10 15.833M4.167 10 10 4.167" stroke="var(--body-color)" stroke-width="1.67" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                    <span aria-hidden="true">Previous</span>
                  </a>
                </li>
                <li class="page-item rlr-pagination__page-item">
                  <ul class="pagination rlr-pagination__child-list">
                    <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">1</a></li>
                    <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">2</a></li>
                    <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">3</a></li>
                    <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">...</a></li>
                    <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">8</a></li>
                    <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">9</a></li>
                    <li class="page-item rlr-pagination__page-item"><a class="page-link rlr-pagination__page-link rlr-pagination__page-link--counter" href="#">10</a></li>
                  </ul>
                </li>
                <li class="page-item rlr-pagination__page-item">
                  <a class="page-link rlr-pagination__page-link rlr-pagination__page-link--next" href="#" aria-label="Next">
                    <span aria-hidden="true">Next</span>
                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path d="M4.167 10h11.666m0 0L10 4.167M15.833 10 10 15.833" stroke="var(--body-color)" stroke-width="1.67" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                  </a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </main>

    <%@include file="./includes/footer.jsp"%>