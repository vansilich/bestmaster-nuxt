<template>
    <section class="wrapper-outer section-reviews">
        <h2 class="section-reviews__title section-heading">Наш адрес</h2>

        <div id="map" ref="map">
        </div>

        <p class="how-to address">Москва, Марксистская улица, 7</p>

    </section>
</template>

<script>

export default {
    name: "SectionGeo",
    head() {
        return {
            script: [
                {
                    src: this.ymapsScriptSrc(),
                    async: false
                },
            ]
        }
    },
    data() {
        return {
            coords: [55.736311, 37.666144],
            api_key: process.env.YANDEX_MAP_KEY,
            lang: 'ru_RU'
        }
    },
    mounted() {
        ymaps.ready( this.initMaps );
    },
    methods: {
        initMaps(){
            const map = new ymaps.Map( this.$refs.map, {
                center: this.coords,
                zoom: 18
            });

            map.geoObjects
                .add(new ymaps.Placemark(this.coords, {
                    balloonContent: 'Москва, Марксистская улица, 7'
                }, {
                    preset: 'islands#redIcon',
                }))
        },
        ymapsScriptSrc(){
            const url = new URL('https://api-maps.yandex.ru/2.1');
            url.searchParams.append('apikey', this.api_key);
            url.searchParams.append('lang', this.lang);

            return url.toString();
        }
    }
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.section-reviews{
    padding: 30px 0;

    &__title{
        color: variables.$main-fc;
        margin: 30px 0;
    }
}

#map{
    width: 100%;
    height: 550px;
}

.how-to{
    color: #FFFFFF;
}

.address{
    margin: 10px 0;
    font-size: 20px;
}

</style>
