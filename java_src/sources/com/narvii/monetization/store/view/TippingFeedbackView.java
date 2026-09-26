package com.narvii.monetization.store.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Vibrator;
import android.support.rastermill.FrameSequenceDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.util.drawables.webp.WrapWebPDrawable;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.cofetti.CofettiView;
import e8.l;
import java.util.Arrays;
import java.util.Locale;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class TippingFeedbackView extends FrameLayout {
    private static final long COIN_MOTION_TIME_DELAY_MS = 80;
    private static final long COIN_MOTION_TIME_MS = 150;
    private static final long COIN_TEXT_TIME_MS = 800;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long FADE_OUT_TIME_MS = 250;
    private static final long RIPPLE_TIME_MS = 250;
    private static final long THANK_YOU_FLIP_TIME_MS = 110;
    private static final float THANK_YOU_SCALE_BEFORE_ANIMATION = 0.1f;

    @NotNull
    private final UserAvatarLayout avatarLayout;
    private final float avatarTranslationXBeforeAnimation;

    @NotNull
    private final View avatarView;

    @NotNull
    private final CofettiView cofettiView;
    private int coinCount;

    @NotNull
    private final ImageView coinCountIV;

    @NotNull
    private final TextView coinCountTV;

    @NotNull
    private final ImageView coinIV;

    @NotNull
    private final Animator coinMotionAnimator;

    @NotNull
    private final ImageView coinMotionIV;

    @NotNull
    private final ImageView coinMotionIV2;

    @NotNull
    private final ImageView coinMotionIV3;

    @NotNull
    private final ImageView coinMotionIV4;

    @NotNull
    private final NVImageView coinShinyIV;

    @NotNull
    private final Animator coinTextAnimator;

    @NotNull
    private final Animator fadeOutAnimator;

    @NotNull
    private final NVImageView fireworksIV;
    private boolean hasPlayedCoinTextAnimation;

    @NotNull
    private final ImageView nicknameBackgroundIV;

    @NotNull
    private final TextView nicknameTV;

    @Nullable
    private l<? super Boolean, l0> onDismiss;

    @NotNull
    private final TippingRippleView rippleView;

    @NotNull
    private final Animator thankYouFlipAnimator;

    @NotNull
    private final com.facebook.rebound.e thankYouSpring;

    @NotNull
    private final TextView thankYouTV;

    @NotNull
    private final View tippingContentView;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: com.narvii.monetization.store.view.TippingFeedbackView$show$1, reason: invalid class name and case insensitive filesystem */
    static final class C05501 extends v implements e8.a<l0> {
        C05501() {
            super(0);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            TippingFeedbackView.this.thankYouSpring.o(1.0d);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TippingFeedbackView(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        this.avatarTranslationXBeforeAnimation = (-Utils.getScreenHeight(getContext())) / 4.0f;
        View.inflate(getContext(), R.layout.tipping_feedback_view_layout, this);
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.store.view.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TippingFeedbackView._init_$lambda$0(this.f2525a, view);
            }
        });
        View viewFindViewById = findViewById(R.id.ripple_view);
        t.i(viewFindViewById, "findViewById(...)");
        this.rippleView = (TippingRippleView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.avatar_layout);
        t.i(viewFindViewById2, "findViewById(...)");
        this.avatarLayout = (UserAvatarLayout) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.nickname_background_iv);
        t.i(viewFindViewById3, "findViewById(...)");
        this.nicknameBackgroundIV = (ImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.nickname_tv);
        t.i(viewFindViewById4, "findViewById(...)");
        this.nicknameTV = (TextView) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.avatar_view);
        t.i(viewFindViewById5, "findViewById(...)");
        this.avatarView = viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.thank_you_tv);
        t.i(viewFindViewById6, "findViewById(...)");
        this.thankYouTV = (TextView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.fireworks_iv);
        t.i(viewFindViewById7, "findViewById(...)");
        NVImageView nVImageView = (NVImageView) viewFindViewById7;
        this.fireworksIV = nVImageView;
        View viewFindViewById8 = findViewById(R.id.coin_iv);
        t.i(viewFindViewById8, "findViewById(...)");
        this.coinIV = (ImageView) viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.coin_shiny_iv);
        t.i(viewFindViewById9, "findViewById(...)");
        NVImageView nVImageView2 = (NVImageView) viewFindViewById9;
        this.coinShinyIV = nVImageView2;
        View viewFindViewById10 = findViewById(R.id.coin_motion_iv);
        t.i(viewFindViewById10, "findViewById(...)");
        this.coinMotionIV = (ImageView) viewFindViewById10;
        View viewFindViewById11 = findViewById(R.id.coin_motion_iv2);
        t.i(viewFindViewById11, "findViewById(...)");
        this.coinMotionIV2 = (ImageView) viewFindViewById11;
        View viewFindViewById12 = findViewById(R.id.coin_motion_iv3);
        t.i(viewFindViewById12, "findViewById(...)");
        this.coinMotionIV3 = (ImageView) viewFindViewById12;
        View viewFindViewById13 = findViewById(R.id.coin_motion_iv4);
        t.i(viewFindViewById13, "findViewById(...)");
        this.coinMotionIV4 = (ImageView) viewFindViewById13;
        View viewFindViewById14 = findViewById(R.id.coin_count_tv);
        t.i(viewFindViewById14, "findViewById(...)");
        this.coinCountTV = (TextView) viewFindViewById14;
        View viewFindViewById15 = findViewById(R.id.coin_count_iv);
        t.i(viewFindViewById15, "findViewById(...)");
        this.coinCountIV = (ImageView) viewFindViewById15;
        View viewFindViewById16 = findViewById(R.id.cofetti_view);
        t.i(viewFindViewById16, "findViewById(...)");
        this.cofettiView = (CofettiView) viewFindViewById16;
        View viewFindViewById17 = findViewById(R.id.tipping_content);
        t.i(viewFindViewById17, "findViewById(...)");
        this.tippingContentView = viewFindViewById17;
        nVImageView2.setImageUrl("assets://shiny_star.webp");
        nVImageView.setImageUrl("assets://thankyou_star.webp");
        this.thankYouFlipAnimator = createThankYouFlipAnimator();
        this.coinMotionAnimator = createCoinMotionAnimator();
        this.coinTextAnimator = createCoinTextAnimator();
        this.fadeOutAnimator = createFadeOutAnimator();
        this.thankYouSpring = createSpringAnim();
    }

    private final Animator createFadeOutAnimator() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                TippingFeedbackView.createFadeOutAnimator$lambda$7(this.f2526a, valueAnimator);
            }
        });
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createFadeOutAnimator.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animation) {
                t.j(animation, "animation");
                TippingFeedbackView.this.hide();
                l<Boolean, l0> onDismiss = TippingFeedbackView.this.getOnDismiss();
                if (onDismiss != null) {
                    onDismiss.invoke(Boolean.FALSE);
                }
            }
        });
        t.g(valueAnimatorOfFloat);
        return valueAnimatorOfFloat;
    }

    private final Animator createSingleCoinMotionAnimator(long j6, long j10, final ImageView imageView, final ImageView imageView2, final l<? super Float, l0> lVar, final e8.a<l0> aVar) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.e
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                TippingFeedbackView.createSingleCoinMotionAnimator$lambda$4(imageView2, imageView, this, lVar, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createSingleCoinMotionAnimator.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animation) {
                t.j(animation, "animation");
                e8.a<l0> aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.invoke();
                }
            }
        });
        valueAnimatorOfFloat.setDuration(j6);
        valueAnimatorOfFloat.setStartDelay(j10);
        t.g(valueAnimatorOfFloat);
        return valueAnimatorOfFloat;
    }

    private final Animator createWebpWrapAnimator(final NVImageView nVImageView, long j6, final e8.a<l0> aVar) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(j6);
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createWebpWrapAnimator.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animation) {
                t.j(animation, "animation");
                aVar.invoke();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animation) {
                t.j(animation, "animation");
                nVImageView.setVisibility(0);
                this.webpStart(nVImageView);
            }
        });
        t.g(valueAnimatorOfFloat);
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isHighEffect() {
        return this.coinCount >= 100;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isLowEffect() {
        return this.coinCount <= 5;
    }

    @Nullable
    public final l<Boolean, l0> getOnDismiss() {
        return this.onDismiss;
    }

    public final void hide() {
        setVisibility(4);
        this.thankYouSpring.m(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
        this.thankYouSpring.l();
        this.thankYouFlipAnimator.cancel();
        this.coinMotionAnimator.cancel();
        this.coinTextAnimator.cancel();
        this.fadeOutAnimator.cancel();
        this.cofettiView.clear();
    }

    public final void setOnDismiss(@Nullable l<? super Boolean, l0> lVar) {
        this.onDismiss = lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(TippingFeedbackView this$0, View view) {
        t.j(this$0, "this$0");
        this$0.hide();
        l<? super Boolean, l0> lVar = this$0.onDismiss;
        if (lVar != null) {
            lVar.invoke(Boolean.TRUE);
        }
    }

    private final Animator createCoinMotionAnimator() {
        TippingFeedbackView$createCoinMotionAnimator$hideCoin$1 tippingFeedbackView$createCoinMotionAnimator$hideCoin$1 = new TippingFeedbackView$createCoinMotionAnimator$hideCoin$1(this);
        TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1 tippingFeedbackView$createCoinMotionAnimator$nextAnimation$1 = new TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1(this);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(createSingleCoinMotionAnimator$default(this, 150L, 0L, this.coinMotionIV3, this.coinMotionIV, null, null, 48, null), createSingleCoinMotionAnimator$default(this, 142L, COIN_MOTION_TIME_DELAY_MS, this.coinMotionIV4, this.coinMotionIV2, null, null, 48, null), createSingleCoinMotionAnimator$default(this, 135L, 160L, this.coinMotionIV3, this.coinMotionIV, null, null, 48, null), createSingleCoinMotionAnimator(127L, 240L, this.coinMotionIV4, this.coinMotionIV2, tippingFeedbackView$createCoinMotionAnimator$nextAnimation$1, tippingFeedbackView$createCoinMotionAnimator$hideCoin$1));
        return animatorSet;
    }

    private final Animator createCoinTextAnimator() {
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 2.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                TippingFeedbackView.createCoinTextAnimator$lambda$5(this.f2527a, valueAnimator);
            }
        });
        valueAnimatorOfFloat.setDuration(COIN_TEXT_TIME_MS);
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.d
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                TippingFeedbackView.createCoinTextAnimator$lambda$6(this.f2528a, valueAnimator);
            }
        });
        valueAnimatorOfFloat2.setDuration(COIN_TEXT_TIME_MS);
        animatorSet.playSequentially(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createCoinTextAnimator.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animation) {
                t.j(animation, "animation");
                TippingFeedbackView.this.fadeOutAnimator.setStartDelay(TippingFeedbackView.this.isHighEffect() ? 1500L : 0L);
                TippingFeedbackView.this.fadeOutAnimator.start();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animation) {
                t.j(animation, "animation");
                Utils.playAudioEffect(TippingFeedbackView.this.getContext(), R.raw.coins);
                try {
                    Object systemService = TippingFeedbackView.this.getContext().getSystemService("vibrator");
                    t.h(systemService, "null cannot be cast to non-null type android.os.Vibrator");
                    ((Vibrator) systemService).vibrate(300L);
                } catch (Exception unused) {
                }
            }
        });
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createCoinTextAnimator$lambda$5(TippingFeedbackView this$0, ValueAnimator it) {
        t.j(this$0, "this$0");
        t.j(it, "it");
        Object animatedValue = it.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        float fMin = Math.min(2 * fFloatValue, 1.0f);
        float fMin2 = Math.min(fFloatValue, 1.0f);
        this$0.coinCountIV.setRotation((-40) * fFloatValue);
        this$0.setScaleXY(this$0.coinCountIV, fMin2);
        this$0.coinCountIV.setAlpha(fMin);
        this$0.setScaleXY(this$0.coinCountTV, fMin2);
        this$0.coinCountTV.setAlpha(fMin);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createCoinTextAnimator$lambda$6(TippingFeedbackView this$0, ValueAnimator it) {
        t.j(this$0, "this$0");
        t.j(it, "it");
        Object animatedValue = it.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        this$0.coinCountIV.setAlpha(fFloatValue);
        this$0.coinCountTV.setAlpha(fFloatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createFadeOutAnimator$lambda$7(TippingFeedbackView this$0, ValueAnimator it) {
        t.j(this$0, "this$0");
        t.j(it, "it");
        Object animatedValue = it.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = 1 - ((Float) animatedValue).floatValue();
        this$0.setAlpha(fFloatValue);
        this$0.setScaleXY(this$0.tippingContentView, fFloatValue);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Animator createSingleCoinMotionAnimator$default(TippingFeedbackView tippingFeedbackView, long j6, long j10, ImageView imageView, ImageView imageView2, l lVar, e8.a aVar, int i10, Object obj) {
        return tippingFeedbackView.createSingleCoinMotionAnimator(j6, j10, imageView, imageView2, (i10 & 16) != 0 ? null : lVar, (i10 & 32) != 0 ? null : aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createSingleCoinMotionAnimator$lambda$4(ImageView backCoin, ImageView frontCoin, TippingFeedbackView this$0, l lVar, ValueAnimator it) {
        t.j(backCoin, "$backCoin");
        t.j(frontCoin, "$frontCoin");
        t.j(this$0, "this$0");
        t.j(it, "it");
        Object animatedValue = it.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        if (fFloatValue < 0.6f) {
            backCoin.setAlpha(0.0f);
            frontCoin.setAlpha(1.0f);
            backCoin = frontCoin;
        } else {
            backCoin.setAlpha(1.0f);
            frontCoin.setAlpha(0.0f);
        }
        this$0.setScaleXY(backCoin, (float) Math.sqrt(1 - fFloatValue));
        backCoin.setRotation((-90) * fFloatValue);
        float width = this$0.nicknameBackgroundIV.getWidth() / 2.0f;
        float top = ((this$0.coinIV.getTop() - (this$0.avatarLayout.getTop() + this$0.avatarView.getTop())) + ((this$0.coinIV.getHeight() * 3.0f) / 8.0f)) / 2.0f;
        int left = this$0.coinIV.getLeft();
        float top2 = this$0.coinIV.getTop() - top;
        double d = ((double) fFloatValue) * 3.141592653589793d;
        backCoin.setTranslationX((Utils.isRtl() ? -1 : 1) * ((float) (((double) left) + (((double) width) * Math.sin(d)))));
        backCoin.setTranslationY((float) (((double) top2) + (((double) top) * Math.cos(d))));
        if (lVar != null) {
            lVar.invoke(Float.valueOf(fFloatValue));
        }
    }

    private final Animator createThankYouFlipAnimator() {
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, -1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.f
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                TippingFeedbackView.createThankYouFlipAnimator$lambda$1(this.f2532a, valueAnimator);
            }
        });
        valueAnimatorOfFloat.setDuration(THANK_YOU_FLIP_TIME_MS);
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.g
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                TippingFeedbackView.createThankYouFlipAnimator$lambda$2(this.f2533a, valueAnimator);
            }
        });
        valueAnimatorOfFloat2.setDuration(THANK_YOU_FLIP_TIME_MS);
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, -15.0f, 8.0f, 0.0f);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.h
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                TippingFeedbackView.createThankYouFlipAnimator$lambda$3(this.f2534a, valueAnimator);
            }
        });
        valueAnimatorOfFloat3.setDuration(230L);
        Animator animatorCreateWebpWrapAnimator = createWebpWrapAnimator(this.coinShinyIV, 720L, new TippingFeedbackView$createThankYouFlipAnimator$animator4$1(this));
        animatorCreateWebpWrapAnimator.setStartDelay(valueAnimatorOfFloat3.getDuration() - 30);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playSequentially(valueAnimatorOfFloat, valueAnimatorOfFloat2, valueAnimatorOfFloat3);
        animatorSet.playTogether(animatorSet2, animatorCreateWebpWrapAnimator);
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createThankYouFlipAnimator$lambda$1(TippingFeedbackView this$0, ValueAnimator it) {
        t.j(this$0, "this$0");
        t.j(it, "it");
        Object animatedValue = it.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        this$0.thankYouTV.setRotationY(90 * fFloatValue);
        this$0.thankYouTV.setAlpha(1 + fFloatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createThankYouFlipAnimator$lambda$2(TippingFeedbackView this$0, ValueAnimator it) {
        t.j(this$0, "this$0");
        t.j(it, "it");
        if (this$0.coinIV.getVisibility() != 0) {
            this$0.coinIV.setVisibility(0);
        }
        Object animatedValue = it.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        this$0.coinIV.setRotationY(90 * fFloatValue);
        this$0.coinIV.setAlpha(1 - fFloatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createThankYouFlipAnimator$lambda$3(TippingFeedbackView this$0, ValueAnimator it) {
        t.j(this$0, "this$0");
        t.j(it, "it");
        ImageView imageView = this$0.coinIV;
        Object animatedValue = it.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        imageView.setRotationY(((Float) animatedValue).floatValue());
    }

    public final void show(@NotNull User user, int i10) {
        t.j(user, "user");
        setVisibility(0);
        setAlpha(1.0f);
        setScaleXY(this.tippingContentView, 1.0f);
        this.avatarLayout.setUser(user);
        this.coinCount = i10;
        this.nicknameTV.setText(user.nickname);
        TextView textView = this.coinCountTV;
        u0 u0Var = u0.INSTANCE;
        String str = String.format(Locale.ENGLISH, "+%d", Arrays.copyOf(new Object[]{Integer.valueOf(this.coinCount)}, 1));
        t.i(str, "format(...)");
        textView.setText(str);
        this.thankYouTV.setRotationY(0.0f);
        setScaleXY(this.thankYouTV, 0.0f);
        this.thankYouTV.setAlpha(1.0f);
        this.avatarView.setAlpha(0.0f);
        this.avatarView.setTranslationY(this.avatarTranslationXBeforeAnimation);
        this.coinIV.setAlpha(1.0f);
        this.coinIV.setVisibility(4);
        this.coinShinyIV.setVisibility(4);
        this.coinMotionIV.setAlpha(0.0f);
        this.coinMotionIV2.setAlpha(0.0f);
        this.coinMotionIV3.setAlpha(0.0f);
        this.coinMotionIV4.setAlpha(0.0f);
        this.coinCountTV.setAlpha(0.0f);
        this.coinCountIV.setAlpha(0.0f);
        this.hasPlayedCoinTextAnimation = false;
        webpStop(this.coinShinyIV);
        webpStop(this.fireworksIV);
        this.rippleView.setOnHalfPlayed(new C05501());
        this.rippleView.startRippleEffect(250L);
    }

    private final com.facebook.rebound.e createSpringAnim() {
        com.facebook.rebound.e eVarC = com.facebook.rebound.i.g().c();
        eVarC.r(new com.facebook.rebound.f(190.0d, 10.0d));
        eVarC.m(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
        eVarC.q(eVarC.f() * ((double) 2));
        eVarC.a(new com.facebook.rebound.d() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createSpringAnim.1
            private boolean fireworkTriggered;
            private boolean hasComeToMaxScale;
            private float previousValue = -1.0f;

            @Override // com.facebook.rebound.d, com.facebook.rebound.g
            public void onSpringActivate(@Nullable com.facebook.rebound.e eVar) {
                super.onSpringActivate(eVar);
                this.previousValue = -1.0f;
                this.fireworkTriggered = false;
                this.hasComeToMaxScale = false;
                TippingFeedbackView tippingFeedbackView = TippingFeedbackView.this;
                tippingFeedbackView.setScaleXY(tippingFeedbackView.thankYouTV, 0.1f);
            }

            @Override // com.facebook.rebound.d, com.facebook.rebound.g
            public void onSpringAtRest(@Nullable com.facebook.rebound.e eVar) {
                super.onSpringAtRest(eVar);
                if (TippingFeedbackView.this.getVisibility() != 0) {
                    return;
                }
                if (TippingFeedbackView.this.isLowEffect()) {
                    TippingFeedbackView.this.coinTextAnimator.start();
                } else {
                    TippingFeedbackView.this.thankYouFlipAnimator.start();
                }
            }

            @Override // com.facebook.rebound.d, com.facebook.rebound.g
            public void onSpringUpdate(@Nullable com.facebook.rebound.e eVar) {
                float f;
                super.onSpringUpdate(eVar);
                if (eVar != null) {
                    float fC = (float) eVar.c();
                    float f6 = 1.0f;
                    if (!this.hasComeToMaxScale) {
                        if (fC <= 1.0f) {
                            TippingFeedbackView tippingFeedbackView = TippingFeedbackView.this;
                            tippingFeedbackView.setScaleXY(tippingFeedbackView.thankYouTV, fC);
                            TippingFeedbackView.this.avatarView.setAlpha(fC);
                            if (fC >= 0.9f && !this.fireworkTriggered) {
                                TippingFeedbackView tippingFeedbackView2 = TippingFeedbackView.this;
                                tippingFeedbackView2.webpStart(tippingFeedbackView2.fireworksIV);
                                this.fireworkTriggered = true;
                            }
                        } else {
                            TippingFeedbackView tippingFeedbackView3 = TippingFeedbackView.this;
                            tippingFeedbackView3.setScaleXY(tippingFeedbackView3.thankYouTV, 1.0f);
                            TippingFeedbackView.this.avatarView.setAlpha(1.0f);
                            this.hasComeToMaxScale = true;
                        }
                    }
                    TextView textView = TippingFeedbackView.this.thankYouTV;
                    float f7 = 1;
                    float f10 = 8 * (fC - f7);
                    if (TippingFeedbackView.this.thankYouTV.getScaleX() == 1.0f) {
                        f = 2.2f;
                    } else {
                        f = 1.0f;
                    }
                    textView.setRotation(f10 * f);
                    View view = TippingFeedbackView.this.avatarView;
                    float f11 = TippingFeedbackView.this.avatarTranslationXBeforeAnimation * (f7 - fC);
                    if (TippingFeedbackView.this.thankYouTV.getScaleX() == 1.0f) {
                        f6 = 0.4f;
                    }
                    view.setTranslationY(f11 * f6);
                }
            }
        });
        t.g(eVarC);
        return eVarC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setScaleXY(View view, float f) {
        view.setScaleX(f);
        view.setScaleY(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void webpStart(NVImageView nVImageView) {
        Drawable drawable = nVImageView.getDrawable();
        if (drawable instanceof WrapWebPDrawable) {
            ((WrapWebPDrawable) drawable).getWrappedDrawable().drawable.start();
        }
    }

    private final void webpStop(NVImageView nVImageView) {
        Drawable drawable = nVImageView.getDrawable();
        if (drawable instanceof WrapWebPDrawable) {
            FrameSequenceDrawable frameSequenceDrawable = ((WrapWebPDrawable) drawable).getWrappedDrawable().drawable;
            frameSequenceDrawable.stop();
            frameSequenceDrawable.eraseFrontBitmap();
            nVImageView.invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.thankYouSpring.k();
        this.thankYouFlipAnimator.removeAllListeners();
        this.coinMotionAnimator.removeAllListeners();
        this.coinTextAnimator.removeAllListeners();
        this.fadeOutAnimator.removeAllListeners();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TippingFeedbackView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        this.avatarTranslationXBeforeAnimation = (-Utils.getScreenHeight(getContext())) / 4.0f;
        View.inflate(getContext(), R.layout.tipping_feedback_view_layout, this);
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.store.view.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TippingFeedbackView._init_$lambda$0(this.f2525a, view);
            }
        });
        View viewFindViewById = findViewById(R.id.ripple_view);
        t.i(viewFindViewById, "findViewById(...)");
        this.rippleView = (TippingRippleView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.avatar_layout);
        t.i(viewFindViewById2, "findViewById(...)");
        this.avatarLayout = (UserAvatarLayout) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.nickname_background_iv);
        t.i(viewFindViewById3, "findViewById(...)");
        this.nicknameBackgroundIV = (ImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.nickname_tv);
        t.i(viewFindViewById4, "findViewById(...)");
        this.nicknameTV = (TextView) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.avatar_view);
        t.i(viewFindViewById5, "findViewById(...)");
        this.avatarView = viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.thank_you_tv);
        t.i(viewFindViewById6, "findViewById(...)");
        this.thankYouTV = (TextView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.fireworks_iv);
        t.i(viewFindViewById7, "findViewById(...)");
        NVImageView nVImageView = (NVImageView) viewFindViewById7;
        this.fireworksIV = nVImageView;
        View viewFindViewById8 = findViewById(R.id.coin_iv);
        t.i(viewFindViewById8, "findViewById(...)");
        this.coinIV = (ImageView) viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.coin_shiny_iv);
        t.i(viewFindViewById9, "findViewById(...)");
        NVImageView nVImageView2 = (NVImageView) viewFindViewById9;
        this.coinShinyIV = nVImageView2;
        View viewFindViewById10 = findViewById(R.id.coin_motion_iv);
        t.i(viewFindViewById10, "findViewById(...)");
        this.coinMotionIV = (ImageView) viewFindViewById10;
        View viewFindViewById11 = findViewById(R.id.coin_motion_iv2);
        t.i(viewFindViewById11, "findViewById(...)");
        this.coinMotionIV2 = (ImageView) viewFindViewById11;
        View viewFindViewById12 = findViewById(R.id.coin_motion_iv3);
        t.i(viewFindViewById12, "findViewById(...)");
        this.coinMotionIV3 = (ImageView) viewFindViewById12;
        View viewFindViewById13 = findViewById(R.id.coin_motion_iv4);
        t.i(viewFindViewById13, "findViewById(...)");
        this.coinMotionIV4 = (ImageView) viewFindViewById13;
        View viewFindViewById14 = findViewById(R.id.coin_count_tv);
        t.i(viewFindViewById14, "findViewById(...)");
        this.coinCountTV = (TextView) viewFindViewById14;
        View viewFindViewById15 = findViewById(R.id.coin_count_iv);
        t.i(viewFindViewById15, "findViewById(...)");
        this.coinCountIV = (ImageView) viewFindViewById15;
        View viewFindViewById16 = findViewById(R.id.cofetti_view);
        t.i(viewFindViewById16, "findViewById(...)");
        this.cofettiView = (CofettiView) viewFindViewById16;
        View viewFindViewById17 = findViewById(R.id.tipping_content);
        t.i(viewFindViewById17, "findViewById(...)");
        this.tippingContentView = viewFindViewById17;
        nVImageView2.setImageUrl("assets://shiny_star.webp");
        nVImageView.setImageUrl("assets://thankyou_star.webp");
        this.thankYouFlipAnimator = createThankYouFlipAnimator();
        this.coinMotionAnimator = createCoinMotionAnimator();
        this.coinTextAnimator = createCoinTextAnimator();
        this.fadeOutAnimator = createFadeOutAnimator();
        this.thankYouSpring = createSpringAnim();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TippingFeedbackView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        this.avatarTranslationXBeforeAnimation = (-Utils.getScreenHeight(getContext())) / 4.0f;
        View.inflate(getContext(), R.layout.tipping_feedback_view_layout, this);
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.store.view.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TippingFeedbackView._init_$lambda$0(this.f2525a, view);
            }
        });
        View viewFindViewById = findViewById(R.id.ripple_view);
        t.i(viewFindViewById, "findViewById(...)");
        this.rippleView = (TippingRippleView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.avatar_layout);
        t.i(viewFindViewById2, "findViewById(...)");
        this.avatarLayout = (UserAvatarLayout) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.nickname_background_iv);
        t.i(viewFindViewById3, "findViewById(...)");
        this.nicknameBackgroundIV = (ImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.nickname_tv);
        t.i(viewFindViewById4, "findViewById(...)");
        this.nicknameTV = (TextView) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.avatar_view);
        t.i(viewFindViewById5, "findViewById(...)");
        this.avatarView = viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.thank_you_tv);
        t.i(viewFindViewById6, "findViewById(...)");
        this.thankYouTV = (TextView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.fireworks_iv);
        t.i(viewFindViewById7, "findViewById(...)");
        NVImageView nVImageView = (NVImageView) viewFindViewById7;
        this.fireworksIV = nVImageView;
        View viewFindViewById8 = findViewById(R.id.coin_iv);
        t.i(viewFindViewById8, "findViewById(...)");
        this.coinIV = (ImageView) viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.coin_shiny_iv);
        t.i(viewFindViewById9, "findViewById(...)");
        NVImageView nVImageView2 = (NVImageView) viewFindViewById9;
        this.coinShinyIV = nVImageView2;
        View viewFindViewById10 = findViewById(R.id.coin_motion_iv);
        t.i(viewFindViewById10, "findViewById(...)");
        this.coinMotionIV = (ImageView) viewFindViewById10;
        View viewFindViewById11 = findViewById(R.id.coin_motion_iv2);
        t.i(viewFindViewById11, "findViewById(...)");
        this.coinMotionIV2 = (ImageView) viewFindViewById11;
        View viewFindViewById12 = findViewById(R.id.coin_motion_iv3);
        t.i(viewFindViewById12, "findViewById(...)");
        this.coinMotionIV3 = (ImageView) viewFindViewById12;
        View viewFindViewById13 = findViewById(R.id.coin_motion_iv4);
        t.i(viewFindViewById13, "findViewById(...)");
        this.coinMotionIV4 = (ImageView) viewFindViewById13;
        View viewFindViewById14 = findViewById(R.id.coin_count_tv);
        t.i(viewFindViewById14, "findViewById(...)");
        this.coinCountTV = (TextView) viewFindViewById14;
        View viewFindViewById15 = findViewById(R.id.coin_count_iv);
        t.i(viewFindViewById15, "findViewById(...)");
        this.coinCountIV = (ImageView) viewFindViewById15;
        View viewFindViewById16 = findViewById(R.id.cofetti_view);
        t.i(viewFindViewById16, "findViewById(...)");
        this.cofettiView = (CofettiView) viewFindViewById16;
        View viewFindViewById17 = findViewById(R.id.tipping_content);
        t.i(viewFindViewById17, "findViewById(...)");
        this.tippingContentView = viewFindViewById17;
        nVImageView2.setImageUrl("assets://shiny_star.webp");
        nVImageView.setImageUrl("assets://thankyou_star.webp");
        this.thankYouFlipAnimator = createThankYouFlipAnimator();
        this.coinMotionAnimator = createCoinMotionAnimator();
        this.coinTextAnimator = createCoinTextAnimator();
        this.fadeOutAnimator = createFadeOutAnimator();
        this.thankYouSpring = createSpringAnim();
    }
}
