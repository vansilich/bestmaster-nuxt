<template>
    <div class="service-card">
        <div class="service-card__content">

            <div class="preview-player">
                <video ref="video" class="service-card__media"
                       :poster="require(`~/assets/img/posters/${this.video}.jpg`)"
                       :data-src="require(`~/assets/video/job/${this.video}.mp4`)"
                       muted loop playsinline type="video/mp4">
                </video>
                <div class="preview-player__controls" @click="toggleVideo()">
                    <svg ref="playBtn" class="preview-player__play-btn" width="70" height="75" viewBox="0 0 70 75"
                         fill="none"
                         xmlns="http://www.w3.org/2000/svg">
                        <g filter="url(#filter0_d_206_2)">
                            <path d="M20 55V20L50 37.5L20 55Z" fill="white"/>
                        </g>
                        <defs>
                            <filter id="filter0_d_206_2" x="0" y="0" width="70" height="75" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                                <feFlood flood-opacity="0" result="BackgroundImageFix"/>
                                <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
                                <feOffset/>
                                <feGaussianBlur stdDeviation="10"/>
                                <feComposite in2="hardAlpha" operator="out"/>
                                <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0"/>
                                <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_206_2"/>
                                <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_206_2" result="shape"/>
                            </filter>
                        </defs>
                    </svg>
                </div>
            </div>
            <div class="card-text service-card__body">

                <h3 class="card-text__title">{{title}}</h3>

                <div class="card-text__description" :class="{'description-overflowed': !isTextOverflowed}">
                    <p ref="description" class="description" :class="{'description__showed': isDescriptionShowed}">
                        <button v-if="isDescriptionShowed" class="description__close"
                            @click.prevent="toggleDescription">
                            <svg class="description__close-icon" width="15" height="15" viewBox="0 0 27 27" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path d="M2 2L25 25M2 25L25 2" stroke="white" stroke-width="5"/>
                            </svg>
                        </button>

                        {{description}}
                    </p>
                </div>

                <a v-if="isTextOverflowed" class="card-text__excerpt" href="#"
                   @click.prevent="toggleDescription">
                    Ещё
                </a>

                <div class="card-text__bottom">
                    <div class="card-text__service-info">

                        <div class="card-text__timing">

                            <svg class="card-text__timing-icon" width="16" height="16" viewBox="0 0 16 16" fill="none"
                                  xmlns="http://www.w3.org/2000/svg">
                                <g clip-path="url(#clip0_32_17)">
                                    <path d="M8.00069 0C3.58956 0 0.000976562 3.58878 0.000976562 7.9999C0.000976562 12.4112 3.58956 16 8.00069 16C12.4118 16 16.0006 12.4112 16.0006 7.9999C16.0006 3.58878 12.4116 0 8.00069 0ZM8.00069 14.8434C4.22743 14.8434 1.1574 11.7734 1.1574 7.9999C1.1574 4.22646 4.22724 1.15661 8.00069 1.15661C11.7741 1.15661 14.844 4.22646 14.844 7.9999C14.844 11.7734 11.7741 14.8434 8.00069 14.8434Z" fill="#2E2E2E"/>
                                    <path d="M10.3146 8.73633C10.3116 8.73633 10.3089 8.73633 10.3058 8.73633L8.57818 8.76216V4.24097C8.57818 3.92155 8.31929 3.66266 7.99988 3.66266C7.68046 3.66266 7.42157 3.92155 7.42157 4.24097V9.34934C7.42157 9.35049 7.42196 9.35165 7.42196 9.35281C7.42196 9.35474 7.42157 9.35647 7.42157 9.35801C7.42196 9.38153 7.42639 9.4037 7.42947 9.42625C7.4314 9.44032 7.43159 9.45478 7.43429 9.46866C7.4395 9.49353 7.44817 9.51666 7.45646 9.53999C7.4607 9.55213 7.4634 9.56485 7.46841 9.57642C7.47844 9.60013 7.49193 9.62172 7.50485 9.64389C7.51082 9.65372 7.51526 9.66451 7.52162 9.67415C7.53627 9.69555 7.55381 9.71463 7.57116 9.7341C7.57848 9.7422 7.58446 9.75145 7.59217 9.75936C7.61087 9.77786 7.63188 9.79348 7.65289 9.80948C7.66137 9.81584 7.66889 9.82355 7.67757 9.82952C7.70031 9.84495 7.72518 9.85709 7.75005 9.86904C7.75872 9.87309 7.76643 9.87887 7.7753 9.88254C7.80422 9.89468 7.83506 9.90316 7.86629 9.91068C7.87207 9.91203 7.87747 9.91473 7.88344 9.91588C7.92084 9.9234 7.95959 9.92764 7.9993 9.92764C8.00219 9.92764 8.00527 9.92764 8.00816 9.92764L10.3229 9.89295C10.6422 9.88813 10.8972 9.62519 10.8926 9.30596C10.8881 8.98963 10.63 8.73633 10.3146 8.73633Z" fill="#2E2E2E"/>
                                </g>
                                <defs>
                                    <clipPath id="clip0_32_17">
                                        <rect width="16" height="16" fill="white"/>
                                    </clipPath>
                                </defs>
                            </svg>

                            <p class="card-text__timing-text" @click="shouldToggleDropdown">
                                {{ duration }} минут
                                <i v-if="variations.length > 1" class="angle-down"></i>
                            </p>

                            <div v-if="dropdownVisible" class="dropdown">
                                <div class="variations">
                                    <div class="variation"
                                         v-for="variation in variations"
                                         :key="'variation-'+variation.duration+variation.price"
                                         @click="setCurrentSelectedVariation(variation)"
                                    >
                                        {{ variation.duration }} минут
                                    </div>
                                </div>
                            </div>
                        </div>
                        <p class="card-text__price">{{ price }} ₽</p>
                    </div>
                    <a class="sign-up card-text__sign-up" :href="link" target="_blank" rel="noopener">
                        Записаться
                    </a>
                </div>
            </div>

        </div>
    </div>
</template>

<script>
export default {
    name: "ServiceCard",
    props: {
        id: Number,
        title: String,
        description: String,
        video: String,
        variations: Array,
    },
    data() {
        return {
            isVideoPlayed: false,
            dropdownVisible: false,
            duration: 60,
            price: 3000,
            link: '',
            isTextOverflowed: false,
            isDescriptionShowed: false,
        }
    },
    mounted() {
        this.duration = this.variations[0].duration;
        this.price = this.variations[0].price;
        this.link = this.variations[0].link;

        const observer = new IntersectionObserver( ( entries, observer ) => {
            entries.forEach( entry => {
                if (entry.isIntersecting && entry.target.src == '') {
                    entry.target.src = entry.target.getAttribute('data-src')
                }
            })
        }, { threshold: 0 });

        observer.observe( this.$refs.video );

        if ( document.querySelector('body').clientWidth <= '539' ) {
            this.$refs.video.autoplay = true;
        }

        const descriptionElem = this.$refs.description;

        this.isTextOverflowed = descriptionElem.scrollHeight > descriptionElem.offsetHeight;
    },
    methods: {
        toggleDescription() {
            this.isDescriptionShowed = !this.isDescriptionShowed;
        },
        shouldToggleDropdown() {
            if (this.variations.length > 1) {
                this.dropdownVisible = !this.dropdownVisible;
            }
        },
        setCurrentSelectedVariation( variation ) {
            this.duration = variation.duration;
            this.price = variation.price;
            this.link = variation.link;

            this.shouldToggleDropdown();
        },
        toggleVideo() {
            if ( this.$refs.video.paused ){
                this.pauseAllVideos();

                this.$refs.video.play();
                this.$refs.playBtn.style.opacity = `0`;
            }
            else {
                this.$refs.video.pause();
                this.$refs.playBtn.style.opacity = `1`;
            }
        },
        pauseAllVideos() {
            document.querySelectorAll('.preview-player' ).forEach( videoContainer => {
                videoContainer.querySelector('video').pause();
                videoContainer.querySelector('.preview-player__play-btn' ).style.opacity = `1`;
            });
        },
    }
}
</script>

<style lang="scss" scoped>
@use "~/assets/scss/abstracts/variables";

.angle-down {
    height: 0;
    position: relative;
    width: 10px;
    margin-left: 10px;
    display: inline-block;
    transform: rotate(-180deg);
}
.angle-down:before {
    content: " ";
    width: 3px;
    background: black;
    height: 15px;
    position: absolute;
    top: 0;
    transform: rotate(45deg);
    left: -0.8px;
}
.angle-down:after {
    content: " ";
    width: 3px;
    background: black;
    height: 15px;
    position: absolute;
    top: 0;
    transform: rotate(-45deg);
    right: -0.9px;
}

.dropdown{
    background-color: #FFFFFF;
    position: absolute;
    top: 20px;
    width: 100%;
    box-shadow: 0 10px 25px 0 rgba(0, 0, 0, 0.8);
    border-radius: 5px;
}

.variation{
    padding: 10px 5px;
    transition: background-color 0.2s linear;
    border-radius: 3px;

    &:hover{
        background-color: #e7e7e7;
    }
}

.preview-player{
    position: relative;

    &__controls{
        cursor: pointer;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        position: absolute;
    }

    &__play-btn{
        right: 0;
        bottom: 0;
        position: absolute;
        transition: opacity 0.1s linear;
    }

    @media only screen and (max-width: 539px) {

        &__controls{
            display: none;
        }
    }
}

.service-card{
    &__content{
        margin: 20px 0;
        background-color: #FFFFFF;
        border-radius: 10px;
    }

    &__media{
        z-index: 1;
        display: block;
        height: 350px;
        width: 100%;
        object-fit: cover;
        object-position: center center;
        border-radius: 10px 10px 0 0;
    }

    @media only screen and (min-width: 1140px) {
        width: 350px;

        &__media{
            height: 350px;
        }
    }
    @media only screen and (max-width: 1139px) and (min-width: 960px) {
        width: 300px;

        &__media{
            height: 300px;
        }
    }
    @media only screen and (max-width: 959px) and (min-width: 720px) {
        width: 350px;

        &__media{
            height: 350px;
        }
    }
    @media only screen and (max-width: 719px) and (min-width: 540px) {
        width: 350px;

        &__media{
            height: 350px;
        }
    }
    @media only screen and (max-width: 539px) {
        width: 300px;

        &__media{
            height: 300px;
        }
    }
}

.card-text{
    color: variables.$secondary-fc;

    &__title, &__description, &__excerpt{
        margin: 10px 15px;
    }

    &__title{
        height: 56px;
    }

    &__description{
        height: 50px;
        font-size: 15px;
        position: relative;
    }

    &__description.description-overflowed{
        margin-bottom: 38px;
    }

    &__excerpt{
        color: #000000;
    }

    &__bottom{
        display: flex;
        justify-content: space-between;
        margin-top: 10px;
    }

    &__service-info{
        margin: 0 0 15px 15px;
    }

    &__timing-text, &__price{
        font-family: "Oswald", sans-serif;
        font-weight: 300;
    }

    &__timing{
        display: flex;
        align-items: flex-start;
        position: relative;
        cursor: pointer;

        &-text{
            margin-left: 5px;
            font-size: 16px;
        }
    }

    &__price{
        margin-top: 5px;
    }

    &__sign-up{
        width: 140px;
        border-radius: 0 0 10px 0;
    }

    @media only screen and (min-width: 1140px) {
        &__price{
            font-size: 23px;
        }
    }
    @media only screen and (max-width: 1139px) and (min-width: 960px) {
        &__price{
            font-size: 23px;
        }
    }
    @media only screen and (max-width: 959px) and (min-width: 720px) {
        &__price{
            font-size: 25px;
        }
    }
    @media only screen and (max-width: 719px) and (min-width: 540px) {
        &__price{
            font-size: 23px;
        }
    }
    @media only screen and (max-width: 539px) {
        &__timing{
            &-text{
                font-size: 14px;
            }
        }

        &__price{
            font-size: 20px;
        }
    }
}

.description{
    position: absolute;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;

    &__close{
        position: absolute;
        border: none;
        border-radius: 5px 5px 0 0;
        padding: 5px;
        top: -25px;
        right: 0;
        background-color: #EDC300;
        cursor: pointer;
    }

    &__close-icon{
        display: block;
    }

    &__showed{
        background-color: #FFFFFF;
        z-index: 100;
        height: initial;
        box-shadow: 0 10px 25px 0 rgba(0, 0, 0, 0.8);
        padding: 15px;
        border-radius: 10px 0 10px 10px;
        overflow: initial;
    }
}

.sign-up{
    background-color: #EBC100;
    color: variables.$main-fc;
    text-decoration: none;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: "Oswald", sans-serif;
    font-weight: 300;
    transition: background-color 100ms linear;

    &:hover{
        background-color: variables.$hover-third-fc;
    }
}

</style>
