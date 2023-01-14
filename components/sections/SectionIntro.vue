<template>
    <section class="section-intro">
        <div class="intro">
            <div class="intro__media-wrapper">
                <video ref="video" class="intro__video"
                       :poster="require('~/assets/img/posters/BestMasterPromo.jpg')"
                       :data-src="require('~/assets/video/BestMasterPromo.mp4')"
                       loop muted autoplay playsinline
                ></video>
            </div>
            <div class="tagline intro__text">
                <img class="tagline__crown" src="~/assets/img/crown.png" alt="Bestmaster - логотип">
                <img class="tagline__site-name" src="~/assets/img/BESTMASTER.png" alt="Bestmaster">
                <h3 class="tagline__text">
                    Студия массажа и реабилитации в Москве. <br>
                </h3>
                <h3 class="tagline__text">
                    Лучшая помощь Вашему здоровью!
                </h3>
            </div>
            <i class="angle-down"></i>
        </div>
    </section>
</template>

<script>
export default {
    name: "SectionIntro",
    mounted() {
        this.$refs.video.src = this.$refs.video.getAttribute('data-src');
    }
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.angle-down {
    left: calc(50% - 7px);
    bottom: 40px;
    height: 0;
    position: absolute;
    width: 14px;
    display: inline-block;
    transform: rotate(-180deg);

    &:before, &:after{
        content: " ";
        width: 5px;
        height: 20px;
        top: 0;
        position: absolute;
    }

    &:before{
        background: #FFFFFF;
        transform: rotate(45deg);
        left: -0.8px;
    }

    &:after{
        background: #FFFFFF;
        transform: rotate(-45deg);
        right: -0.9px;
    }

    @media only screen and (max-width: 539px){
        bottom: 70px;
    }
}

.intro {
    min-height: 450px;
    overflow: hidden;
    position: relative;

    &__media-wrapper {
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background: #000000;
    }

    &__video {
        display: block;
        width: 100%;
        object-fit: cover;
        filter: brightness(50%);
        min-height: 450px;
    }

    &__text {
        position: relative;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        flex-wrap: nowrap;
        z-index: 10;
        height: 100%;
        width: 100%;
        color: #FFFFFF;
        text-align: center;
    }

    @media only screen and (min-width: 1140px) {
        height: calc(100vh - variables.$xl-header-height);

        &__video {
            height: calc(100vh - variables.$xl-header-height);
        }
    }
    @media only screen and (max-width: 1139px) and (min-width: 960px) {
        height: calc(100vh - variables.$l-header-height);

        &__video {
            height: calc(100vh - variables.$l-header-height);
        }
    }
    @media only screen and (max-width: 959px) and (min-width: 720px) {
        height: calc(100vh - variables.$m-header-height);

        &__video {
            height: calc(100vh - variables.$m-header-height);
        }
    }
    @media only screen and (max-width: 719px) and (min-width: 540px) {
        height: calc(100vh - variables.$s-header-height);

        &__video {
            height: calc(100vh - variables.$s-header-height);
        }
    }
    @media only screen and (max-width: 539px) {
        height: calc(100vh - variables.$xs-header-height);

        &__video {
            height: calc(100vh - variables.$xs-header-height);
        }
    }
}

.tagline {

    &__crown{
        width: 150px;
        margin-bottom: 20px;

        @media only screen and (max-width: 539px) {
            width: 120px;
        }
    }

    &__site-name {
        height: 58px;
        width: 200px;
    }

    &__text {
        font-size: 22px;
        margin-top: 20px;
    }
}

</style>
