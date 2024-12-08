<template>

    <section class="section-about-master">
        <div class="section-inner">
            <h2 class="section-about-master__title section-heading">Обо мне</h2>

            <div class="master-content section-about-master__content">
                <div class="master-content__media">
                    <img src="~/assets/img/master-photo.jpeg" alt="Дмитрий Бесхлебнов">

                    <a class="contact-button tg" href="https://t.me/bestmaster_msk" target="_blank"  rel="noopener">
                        <svg class="contact-button__icon" width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M20 40C31.0457 40 40 31.0457 40 20C40 8.95431 31.0457 0 20 0C8.95431 0 0 8.95431 0 20C0 31.0457 8.95431 40 20 40Z" fill="url(#paint0_linear_60_48)"/>
                            <path d="M16.3333 29.1667C15.6853 29.1667 15.7955 28.922 15.572 28.305L13.6666 22.0345L28.3333 13.3333" fill="#C8DAEA"/>
                            <path d="M16.3334 29.1667C16.8334 29.1667 17.0542 28.938 17.3334 28.6667L20 26.0737L16.6737 24.0678" fill="#A9C9DD"/>
                            <path d="M16.6733 24.0683L24.7333 30.0231C25.6531 30.5306 26.3168 30.2678 26.546 29.1693L29.8268 13.7088C30.1626 12.3621 29.3135 11.7511 28.4335 12.1506L9.16847 19.5791C7.85347 20.1066 7.8613 20.8403 8.9288 21.1671L13.8726 22.7103L25.3181 15.4895C25.8585 15.1618 26.3545 15.3378 25.9475 15.6991" fill="url(#paint1_linear_60_48)"/>
                            <defs>
                                <linearGradient id="paint0_linear_60_48" x1="26.68" y1="6.68" x2="16.68" y2="30" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#37AEE2"/>
                                    <stop offset="1" stop-color="#1E96C8"/>
                                </linearGradient>
                                <linearGradient id="paint1_linear_60_48" x1="22.5073" y1="20.0016" x2="25.6285" y2="27.1131" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#EFF7FC"/>
                                    <stop offset="1" stop-color="white"/>
                                </linearGradient>
                            </defs>
                        </svg>
                        Бесплатная консультация
                    </a>
                </div>

                <div class="master-content__quotation">
                    <svg class="bg-quote bg-quote-start" width="70" height="64" viewBox="0 0 70 64" fill="none"
                         xmlns="http://www.w3.org/2000/svg">
                        <path d="M35 45.3333C35 29.0285 43.0769 10.6667 56.5385 0L70 10.6667C61.9231 24 59.6795 36.4444 59.2308 45.3333V64H35V45.3333Z" fill="#D9D9D9"/>
                        <path d="M0 45.3333C0 29.0285 8.07692 10.6667 21.5385 0L35 10.6667C26.9231 24 24.6795 36.4444 24.2308 45.3333V64H0V45.3333Z" fill="#D9D9D9"/>
                    </svg>

                    <p class="master-quotation">
                        Дмитрий Бесхлебнов, является мастером высшей категории в своем деле и входит в ТОП-5 мастеров России. 
                        Профессионал с многолетним опытом, и помимо красного медицинского диплома (лечебное дело), 
                        проходил курсы повышения квалификации в Тайланде, Италии и Турции. Так же занимал призовые места 
                        на различных соревнованиях по массажу. Основное направление деятельности реабилитация и восстановление 
                        тела. Вот уже 15 лет помогает людям быть здоровыми и красивыми.
                    </p>

                    <svg class="bg-quote bg-quote-end" width="70" height="64" viewBox="0 0 70 64" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M35 45.3333C35 29.0285 43.0769 10.6667 56.5385 0L70 10.6667C61.9231 24 59.6795 36.4444 59.2308 45.3333V64H35V45.3333Z" fill="#D9D9D9"/>
                        <path d="M0 45.3333C0 29.0285 8.07692 10.6667 21.5385 0L35 10.6667C26.9231 24 24.6795 36.4444 24.2308 45.3333V64H0V45.3333Z" fill="#D9D9D9"/>
                    </svg>
                </div>
            </div>
        </div>
    </section>

</template>

<script>
export default {
    name: "SectionAboutMaster"
}
</script>

<style lang="scss" scoped>

.section-about-master{
    padding: 20px 0;

    &__title{
        color: #FFFFFF;
        margin-bottom: 50px;
    }
}

.master-content{
    display: flex;
    align-items: center;
    justify-content: space-around;

    img{
        object-fit: cover;
        width: 320px;
        height: 480px;
        border-radius: 10px;
        margin-bottom: 20px;
    }

    &__quotation{
        width: 570px;
        position: relative;
    }

    @media only screen and (max-width: 959px) and (min-width: 720px) {
        flex-direction: column;

        &__media{
            margin-bottom: 80px;
        }
    }
    @media only screen and (max-width: 719px) and (min-width: 540px) {
        flex-direction: column;

        &__media{
            margin-bottom: 80px;
        }
    }
    @media only screen and (max-width: 539px) {
        flex-direction: column;

        &__quotation{
            width: 95%;
        }

        &__media{
            margin-bottom: 110px;
        }
    }
}

.contact-button {
    padding: 10px 0;
    text-decoration: none;
    color: #000000;
    background: #FFFFFF;
    box-shadow: inset 0 0 15px rgba(0, 0, 0, 0.3);
    border-radius: 10px;
    border: none;
    cursor: pointer;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 20px;

    &__icon{
        margin-right: 10px;
    }
}

.master-quotation{
    color: #FFFFFF;
    font-size: 21px;

    @media only screen and (max-width: 539px) {
        font-size: 18px;
        line-height: 24px;
    }
}

.bg-quote{
    position: absolute;

    &-start{
        top: -80px;
    }

    &-end{
        right: 0;
        transform: rotate(180deg);
    }
}

.section-about-master{
  margin-bottom: 50px;

}

</style>
