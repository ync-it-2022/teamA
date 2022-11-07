<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./includes/header.jsp"%>

<main id="rlr-main" class="rlr-main">
    <article class="rlr-article rlr-article-single--v2">
    </aside>
      <div class="rlr-article__wrapper">
        <div class="rlr-article__header__timestamp">2022년 7월 18일 월요일</div>
        <div class="content">
          <div class="content__highlight">
            <h2 class="type-h3">2022년 7월 25일부로 일본의 무비자 입국이 허용됩니다. </h2>
          </div>
          <p class="type-lead">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper mattis lorem non. Ultrices praesent amet ipsum justo massa. Eu dolor aliquet risus gravida nunc at feugiat consequat purus. Non massa enim vitae duis mattis. Vel in ultricies vel
            fringilla.
          </p>
          <p class="type-lead">Nunc commodo eros velit, vitae tempor purus laoreet in. Fusce a condimentum magna, sit amet ultricies nibh. Vivamus tristique enim non accumsan ornare. Cras tincidunt ultrices libero nec bibendum.</p>
          <p class="type-lead">
            Cras dignissim eros ullamcorper sapien porttitor, eget laoreet ipsum dapibus. Nulla tincidunt pulvinar ante, in sollicitudin massa iaculis quis. Praesent ac venenatis mi. Vivamus risus dui, convallis nec risus a, luctus gravida ipsum. Donec erat libero, euismod
            nec quam nec, congue maximus urna. Fusce pharetra urna ut pharetra iaculis. In vitae venenatis sem, nec lacinia nibh. Pellentesque ac consectetur lectus.
          </p>
          <p class="type-lead">Mauris vitae bibendum enim. Curabitur luctus ligula purus, sit amet venenatis orcijar Vivamus tristique enim non accumsan ornare. Cras tincidunt ultrices libero nec bibendum.</p>   
          </div>
        </div>
      </div>
      <div class="rlr-article__wrapper rlr-secondary-menu-desc__details">
        <div>
          <article class="rlr-review-card" itemscope="" itemtype="https://schema.org/Product">  
            <div class="rlr-review-card__contact">
              <!--Using in Components -->
              <div class="rlr-avatar">
                <img class="rlr-avatar__media--rounded" src="/resources/assets/images/misc/image-1_56x56.jpg" itemprop="avatar" alt="avatar icon">
                <span class="rlr-avatar__name" itemprop="name">Darren Spratt</span>
              </div>
            </div>
            <div class="rlr-review-card__details">
              <div class="rlr-review-card__title">
                <span class="rlr-review-card__review-date" itemprop="review date">Reviewed 23rd, November</span>
              </div>
              <div class="rlr-review-card__comments" itemprop="review description">
                <div class="rlr-readmore-desc">
                  <p class="rlr-readmore-desc__content">Dolor elit voluptate cupidatat in eiusmod. Eiusmod ex eu incididunt etile pariatur dolor mollit reprehenderit magna tempor ex minim velit sunt do.</p>
                </div>
              </div>
            </div>
          </article>
          <div class="rlr-fieldrow__item">
            <label class="rlr-form-label rlr-form-label--dark" for="rlr_review_form_desc"> 작성 </label>
            <textarea id="rlr_review_form_desc" class="form-control form-control--text-area" placeholder="내용 입력" rows="12"></textarea>
            <div class="col-lg-1" >
              <button type="button" class="btn rlr-button rlr-button--fullwidth rlr-button--primary">작성</button>
            </div>  
          </div>
        </div>  
      </div>
    </article>
  </div>
</main>
  
<%@include file="./includes/footer.jsp"%>