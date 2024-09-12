<template>

    <section class="wrapper-outer section-reviews">
        <div class="section-inner">
            <h2 class="section-reviews__title section-heading">Наши клиенты</h2>

            <client-only>
              <vue-slick-carousel class="reviews-slider" v-bind="sliderSettings">
                  <div v-for="review in reviews">
                      <review-card v-bind="review"></review-card>
                  </div>

                  <template #prevArrow>
                      <div class="reviews-slider__arrow reviews-slider__arrow-prev">
                          <svg width="20" height="40" viewBox="0 0 26 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path d="M24 2L4 22L24 42" stroke="white" stroke-width="5"/>
                          </svg>
                      </div>
                  </template>

                  <template #nextArrow>
                      <div class="reviews-slider__arrow reviews-slider__arrow-next">
                          <svg width="20" height="40" viewBox="0 0 26 44" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path d="M2 2L22 22L2 42" stroke="white" stroke-width="5"/>
                          </svg>
                      </div>
                  </template>

              </vue-slick-carousel>
            </client-only>

            <div class="section-reviews__slogan">
                <p class="section-reviews__slogan-text">
                    Нам доверяют звезды, <br>
                    Но цены на услуги остаются демократичными
                </p>

                <a class="sign-up-btn" href="https://wa.me/message/GLJYDTVIG752G1" target="_blank" rel="noopener">
                    записаться
                </a>
            </div>

        </div>
    </section>

</template>

<script>
import ReviewCard from "../ReviewCard";
import VueSlickCarousel from "vue-slick-carousel";
import 'vue-slick-carousel/dist/vue-slick-carousel.css';

export default {
    name: "SectionReviews",
    components: {
        ReviewCard,
        VueSlickCarousel
    },
    data() {
        return {
            sliderSettings: {
                arrows: true,
                slidesToShow: 2,
                speed: 400,
                swipeToSlide: false,
                responsive: [
                    {
                        breakpoint: 1140,
                        settings: {
                          slidesToShow: 1,
                        }
                    },
                ],
            },
            reviews: [
                {
                    id: 6,
                    photo: 'karinazvereva.jpg',
                    inst_nickname: 'karinazvereva',
                    link: 'https://www.instagram.com/p/B6FzEgUgwIW/',
                    description:
                        'Новогодний #часпик всё ближе и ближе,а тело все не уменьшилось? Торопитесь совершенствовать свои прекрасные тельца и подымать себе настроение #девочкитакиедевочки.'
                },
                {
                    id: 1,
                    photo: 'katerinashpitsa.jpg',
                    inst_nickname: 'katerinashpitsa',
                    link: 'https://www.instagram.com/p/CG8UfLFAS9R/',
                    description: 'Детально проработали поясницу так, как в нем присутствует смещение и протрузия. Растянули шейный отдел позвоночника и мышцы. Сняли напряжение с мкронржных мышц и мышц стопы.'
                },
                {
                    id: 7,
                    photo: 'katyagordon.jpg',
                    inst_nickname: 'katyagordon',
                    link: 'https://www.instagram.com/p/B08bmYBA__I/',
                    description: '@bestmaster.msk у тебя золотые руки и ты профессионал массажа! Здесь, на суде в Ингушетии мечтаю о том, как мы встретимся! Парни, девушки - парень - золотой! Рекомендую'
                },
                {
                    id: 2,
                    photo: 'annakalash.jpg',
                    inst_nickname: 'annakalash',
                    link: 'https://www.instagram.com/p/B9lzgvrAC6Y/',
                    description: 'Времени катастрофически мало, но в приоритет я всегда ставлю именно массаж у @bestmaster.msk. Потому что я действительно вижу результат! Золотые руки этого мастера могут создать идеальные формы и привести фигуру в порядок.'
                },
                {
                    id: 3,
                    photo: 'teonadolnikova.jpg',
                    inst_nickname: 'teonadolnikova',
                    link: 'https://www.instagram.com/p/CNnqGv1gtHf/',
                    description: 'После спектаклей и съёмок @teonadolnikova обратилась с дискомфортом в спине.'
                },
                {
                    id: 4,
                    photo: 'maximvale.jpg',
                    inst_nickname: 'maximvale',
                    link: 'https://www.instagram.com/p/CNdchjsATw-/?igshid=YmMyMTA2M2Y%3D',
                    description: 'Восстанавливаем спину @maximvale и жизненные силы 💫'
                },
                {
                    id: 5,
                    photo: 'olga__kazachenko.jpg',
                    inst_nickname: 'olga__kazachenko',
                    link: 'https://www.instagram.com/p/CDJY0uzgfp8/',
                    description: 'Мы с Димой @bestmaster.msk начинаем очередной курс его волшебного массажа 🤗 результат покажу позже🤪🍑'
                },
                {
                    id: 8,
                    photo: 'ramo_motion_.jpg',
                    inst_nickname: 'ramo_motion_',
                    link: 'https://www.instagram.com/p/CO0WEBtAGK9/',
                    description: 'Разобрал и собрал ! Теперь как новый спасибо 🙏)'
                },
                {
                    id: 9,
                    photo: 'vboldin.jpg',
                    inst_nickname: 'v.boldin',
                    link: 'https://www.instagram.com/p/Cxe20r4tJWg/?igsh=MXdqMG9mNXdydzhhag==',
                    description: 'Восстанавливаем спину @v.boldin'
                },
            ]
        }
    }
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.section-reviews{

    &__title{
        color: #FFFFFF;
        margin-bottom: 30px;
    }

    &__slogan{
        display: flex;
        flex-direction: column;
        align-items: center;
        margin: 100px auto 50px auto;
        width: 450px;

        &-text{
            text-align: center;
            font-size: 21px;
            color: variables.$main-fc;
            margin-bottom: 30px;
        }
    }

    @media only screen and (max-width: 539px) {
        &__slogan{
            width: 100%;
        }
    }
}

.reviews-slider{
    &__arrow{
        &-prev{
            z-index: 1000;
        }
    }

    &__arrow{
        position: absolute;
        top: calc(100% + 10px);
        cursor: pointer;
        background-color: #202020;
        width: 50px;
        border-radius: 10px;
        display: flex;
        justify-content: center;

        &-prev{
            left: 40%;
        }

        &-next{
            right: 40%;
        }
    }

    @media only screen and (max-width: 719px) {
        &__arrow{
            &-prev{
                left: 30%;
            }

            &-next{
                right: 30%;
            }
        }
    }
}

.sign-up-btn{
    background-color: #ffffff;
    border: none;
    border-radius: 10px;
    padding: 15px 25px;
    color: variables.$third-fc;
    font-size: 21px;
    font-weight: 300;
    text-decoration: none;
}

</style>
