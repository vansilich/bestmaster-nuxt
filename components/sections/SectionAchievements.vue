<template>

    <section class="section-achievements">
        <div class="section-inner">
            <h2 class="section-achievements__title section-heading">Достижения</h2>

            <div class="achievements-wrapper">
                <ul class="achievements-list">
                    <li class="achievements-list__item">
                        <span class="achievements-list__dot"></span>
                        <p class="achievements-list__text">Золотой диплом лучшего мастера холистического массажа в России на Topspafest-2014.</p>
                    </li>
                    <li class="achievements-list__item">
                        <span class="achievements-list__dot"></span>
                        <p class="achievements-list__text">Призер чемпионата Поволжья по спа массажу (Специальный приз жюри) 2012, 2013г.</p>
                    </li>
                    <li class="achievements-list__item">
                        <span class="achievements-list__dot"></span>
                        <p class="achievements-list__text">Бронзовый призер чемпионата России по спа массажу (3 место) 2012г.</p>
                    </li>
                    <li class="achievements-list__item">
                        <span class="achievements-list__dot"></span>
                        <p class="achievements-list__text">Призер чемпионата мира по спа массажу (Номинации «Классика жанра» и Приз зрительских симпатий) 2012г.</p>
                    </li>
                    <li class="achievements-list__item">
                        <span class="achievements-list__dot"></span>
                        <p class="achievements-list__text">Участник международного фестиваля спа и массажа Topspafest 2011, 2012, 2013, 2014 г.</p>
                    </li>
                </ul>
            </div>
        </div>
    </section>

</template>

<script>
export default {
    name: "SectionAchievements"
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.section-inner{
    display: flex;
    flex-direction: column;
    align-items: center;
}

.section-achievements{

    &__title{
        color: variables.$main-fc;
    }
}

.achievements-wrapper{
    display: flex;
    justify-content: center;

    @media only screen and (max-width: 539px) {
        width: 95%;
    }
}

.achievements-list{
    padding: 0;
    margin: 20px 0 40px 0;

    &__item{
        display: flex;
        align-items: center;
        list-style: none;
        color: variables.$main-fc;
    }

    &__item:not(:last-child){
        margin-bottom: 40px;
    }

    &__dot{
        width: 15px;
        height: 15px;
        border-radius: 100%;
        margin-right: 15px;
        background-color: #000000;
        display: block;
        box-shadow: 0 0 15px #FFFFFF;
    }

    &__text{
        font-size: 19px;
        width: 100%;
    }

    @media only screen and (min-width: 1140px) {
        width: 900px;
    }
    @media only screen and (max-width: 1139px) and (min-width: 960px) {
        width: 900px;
    }
    @media only screen and (max-width: 959px) and (min-width: 720px) {
        width: 600px;
    }
    @media only screen and (max-width: 719px) and (min-width: 540px) {}
    @media only screen and (max-width: 539px) {
        &__dot{
            margin-right: 15px;
        }

        &__text{
            font-size: 16px;
        }
    }
}

</style>
