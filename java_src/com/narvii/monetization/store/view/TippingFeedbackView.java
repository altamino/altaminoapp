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
import com.facebook.rebound.SimpleSpringListener;
import com.facebook.rebound.Spring;
import com.facebook.rebound.SpringConfig;
import com.facebook.rebound.SpringSystem;
import com.narvii.amino.mastes.R;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.util.drawables.webp.WrapWebPDrawable;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.cofetti.CofettiView;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* compiled from: TippingFeedbackView.kt */
/* loaded from: classes3.dex */
public final class TippingFeedbackView extends FrameLayout {
    private static final long COIN_MOTION_TIME_DELAY_MS = 80;
    private static final long COIN_MOTION_TIME_MS = 150;
    private static final long COIN_TEXT_TIME_MS = 800;
    public static final Companion Companion = new Companion(null);
    private static final long FADE_OUT_TIME_MS = 250;
    private static final long RIPPLE_TIME_MS = 250;
    private static final long THANK_YOU_FLIP_TIME_MS = 110;
    private static final float THANK_YOU_SCALE_BEFORE_ANIMATION = 0.1f;
    private HashMap _$_findViewCache;
    private final UserAvatarLayout avatarLayout;
    private final float avatarTranslationXBeforeAnimation;
    private final View avatarView;
    private final CofettiView cofettiView;
    private int coinCount;
    private final ImageView coinCountIV;
    private final TextView coinCountTV;
    private final ImageView coinIV;
    private final Animator coinMotionAnimator;
    private final ImageView coinMotionIV;
    private final ImageView coinMotionIV2;
    private final ImageView coinMotionIV3;
    private final ImageView coinMotionIV4;
    private final NVImageView coinShinyIV;
    private final Animator coinTextAnimator;
    private final Animator fadeOutAnimator;
    private final NVImageView fireworksIV;
    private boolean hasPlayedCoinTextAnimation;
    private final ImageView nicknameBackgroundIV;
    private final TextView nicknameTV;
    private Function1<? super Boolean, Unit> onDismiss;
    private final TippingRippleView rippleView;
    private final Animator thankYouFlipAnimator;
    private final Spring thankYouSpring;
    private final TextView thankYouTV;
    private final View tippingContentView;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public final Function1<Boolean, Unit> getOnDismiss() {
        return this.onDismiss;
    }

    public final void setOnDismiss(Function1<? super Boolean, Unit> function1) {
        this.onDismiss = function1;
    }

    /* compiled from: TippingFeedbackView.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TippingFeedbackView(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.avatarTranslationXBeforeAnimation = (-Utils.getScreenHeight(getContext())) / 4.0f;
        View.inflate(getContext(), R.layout.tipping_feedback_view_layout, this);
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TippingFeedbackView.this.hide();
                Function1<Boolean, Unit> onDismiss = TippingFeedbackView.this.getOnDismiss();
                if (onDismiss != null) {
                    onDismiss.invoke(true);
                }
            }
        });
        View viewFindViewById = findViewById(R.id.ripple_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.ripple_view)");
        this.rippleView = (TippingRippleView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.avatar_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.avatar_layout)");
        this.avatarLayout = (UserAvatarLayout) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.nickname_background_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.nickname_background_iv)");
        this.nicknameBackgroundIV = (ImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.nickname_tv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.nickname_tv)");
        this.nicknameTV = (TextView) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.avatar_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.avatar_view)");
        this.avatarView = viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.thank_you_tv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById6, "findViewById(R.id.thank_you_tv)");
        this.thankYouTV = (TextView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.fireworks_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById7, "findViewById(R.id.fireworks_iv)");
        this.fireworksIV = (NVImageView) viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.coin_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById8, "findViewById(R.id.coin_iv)");
        this.coinIV = (ImageView) viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.coin_shiny_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById9, "findViewById(R.id.coin_shiny_iv)");
        this.coinShinyIV = (NVImageView) viewFindViewById9;
        View viewFindViewById10 = findViewById(R.id.coin_motion_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById10, "findViewById(R.id.coin_motion_iv)");
        this.coinMotionIV = (ImageView) viewFindViewById10;
        View viewFindViewById11 = findViewById(R.id.coin_motion_iv2);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById11, "findViewById(R.id.coin_motion_iv2)");
        this.coinMotionIV2 = (ImageView) viewFindViewById11;
        View viewFindViewById12 = findViewById(R.id.coin_motion_iv3);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById12, "findViewById(R.id.coin_motion_iv3)");
        this.coinMotionIV3 = (ImageView) viewFindViewById12;
        View viewFindViewById13 = findViewById(R.id.coin_motion_iv4);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById13, "findViewById(R.id.coin_motion_iv4)");
        this.coinMotionIV4 = (ImageView) viewFindViewById13;
        View viewFindViewById14 = findViewById(R.id.coin_count_tv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById14, "findViewById(R.id.coin_count_tv)");
        this.coinCountTV = (TextView) viewFindViewById14;
        View viewFindViewById15 = findViewById(R.id.coin_count_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById15, "findViewById(R.id.coin_count_iv)");
        this.coinCountIV = (ImageView) viewFindViewById15;
        View viewFindViewById16 = findViewById(R.id.cofetti_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById16, "findViewById(R.id.cofetti_view)");
        this.cofettiView = (CofettiView) viewFindViewById16;
        View viewFindViewById17 = findViewById(R.id.tipping_content);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById17, "findViewById(R.id.tipping_content)");
        this.tippingContentView = viewFindViewById17;
        this.coinShinyIV.setImageUrl("assets://shiny_star.webp");
        this.fireworksIV.setImageUrl("assets://thankyou_star.webp");
        this.thankYouFlipAnimator = createThankYouFlipAnimator();
        this.coinMotionAnimator = createCoinMotionAnimator();
        this.coinTextAnimator = createCoinTextAnimator();
        this.fadeOutAnimator = createFadeOutAnimator();
        this.thankYouSpring = createSpringAnim();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TippingFeedbackView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.avatarTranslationXBeforeAnimation = (-Utils.getScreenHeight(getContext())) / 4.0f;
        View.inflate(getContext(), R.layout.tipping_feedback_view_layout, this);
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TippingFeedbackView.this.hide();
                Function1<Boolean, Unit> onDismiss = TippingFeedbackView.this.getOnDismiss();
                if (onDismiss != null) {
                    onDismiss.invoke(true);
                }
            }
        });
        View viewFindViewById = findViewById(R.id.ripple_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.ripple_view)");
        this.rippleView = (TippingRippleView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.avatar_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.avatar_layout)");
        this.avatarLayout = (UserAvatarLayout) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.nickname_background_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.nickname_background_iv)");
        this.nicknameBackgroundIV = (ImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.nickname_tv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.nickname_tv)");
        this.nicknameTV = (TextView) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.avatar_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.avatar_view)");
        this.avatarView = viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.thank_you_tv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById6, "findViewById(R.id.thank_you_tv)");
        this.thankYouTV = (TextView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.fireworks_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById7, "findViewById(R.id.fireworks_iv)");
        this.fireworksIV = (NVImageView) viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.coin_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById8, "findViewById(R.id.coin_iv)");
        this.coinIV = (ImageView) viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.coin_shiny_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById9, "findViewById(R.id.coin_shiny_iv)");
        this.coinShinyIV = (NVImageView) viewFindViewById9;
        View viewFindViewById10 = findViewById(R.id.coin_motion_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById10, "findViewById(R.id.coin_motion_iv)");
        this.coinMotionIV = (ImageView) viewFindViewById10;
        View viewFindViewById11 = findViewById(R.id.coin_motion_iv2);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById11, "findViewById(R.id.coin_motion_iv2)");
        this.coinMotionIV2 = (ImageView) viewFindViewById11;
        View viewFindViewById12 = findViewById(R.id.coin_motion_iv3);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById12, "findViewById(R.id.coin_motion_iv3)");
        this.coinMotionIV3 = (ImageView) viewFindViewById12;
        View viewFindViewById13 = findViewById(R.id.coin_motion_iv4);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById13, "findViewById(R.id.coin_motion_iv4)");
        this.coinMotionIV4 = (ImageView) viewFindViewById13;
        View viewFindViewById14 = findViewById(R.id.coin_count_tv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById14, "findViewById(R.id.coin_count_tv)");
        this.coinCountTV = (TextView) viewFindViewById14;
        View viewFindViewById15 = findViewById(R.id.coin_count_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById15, "findViewById(R.id.coin_count_iv)");
        this.coinCountIV = (ImageView) viewFindViewById15;
        View viewFindViewById16 = findViewById(R.id.cofetti_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById16, "findViewById(R.id.cofetti_view)");
        this.cofettiView = (CofettiView) viewFindViewById16;
        View viewFindViewById17 = findViewById(R.id.tipping_content);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById17, "findViewById(R.id.tipping_content)");
        this.tippingContentView = viewFindViewById17;
        this.coinShinyIV.setImageUrl("assets://shiny_star.webp");
        this.fireworksIV.setImageUrl("assets://thankyou_star.webp");
        this.thankYouFlipAnimator = createThankYouFlipAnimator();
        this.coinMotionAnimator = createCoinMotionAnimator();
        this.coinTextAnimator = createCoinTextAnimator();
        this.fadeOutAnimator = createFadeOutAnimator();
        this.thankYouSpring = createSpringAnim();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TippingFeedbackView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.avatarTranslationXBeforeAnimation = (-Utils.getScreenHeight(getContext())) / 4.0f;
        View.inflate(getContext(), R.layout.tipping_feedback_view_layout, this);
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TippingFeedbackView.this.hide();
                Function1<Boolean, Unit> onDismiss = TippingFeedbackView.this.getOnDismiss();
                if (onDismiss != null) {
                    onDismiss.invoke(true);
                }
            }
        });
        View viewFindViewById = findViewById(R.id.ripple_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.ripple_view)");
        this.rippleView = (TippingRippleView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.avatar_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.avatar_layout)");
        this.avatarLayout = (UserAvatarLayout) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.nickname_background_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.nickname_background_iv)");
        this.nicknameBackgroundIV = (ImageView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.nickname_tv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.nickname_tv)");
        this.nicknameTV = (TextView) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.avatar_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.avatar_view)");
        this.avatarView = viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.thank_you_tv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById6, "findViewById(R.id.thank_you_tv)");
        this.thankYouTV = (TextView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.fireworks_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById7, "findViewById(R.id.fireworks_iv)");
        this.fireworksIV = (NVImageView) viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.coin_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById8, "findViewById(R.id.coin_iv)");
        this.coinIV = (ImageView) viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.coin_shiny_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById9, "findViewById(R.id.coin_shiny_iv)");
        this.coinShinyIV = (NVImageView) viewFindViewById9;
        View viewFindViewById10 = findViewById(R.id.coin_motion_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById10, "findViewById(R.id.coin_motion_iv)");
        this.coinMotionIV = (ImageView) viewFindViewById10;
        View viewFindViewById11 = findViewById(R.id.coin_motion_iv2);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById11, "findViewById(R.id.coin_motion_iv2)");
        this.coinMotionIV2 = (ImageView) viewFindViewById11;
        View viewFindViewById12 = findViewById(R.id.coin_motion_iv3);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById12, "findViewById(R.id.coin_motion_iv3)");
        this.coinMotionIV3 = (ImageView) viewFindViewById12;
        View viewFindViewById13 = findViewById(R.id.coin_motion_iv4);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById13, "findViewById(R.id.coin_motion_iv4)");
        this.coinMotionIV4 = (ImageView) viewFindViewById13;
        View viewFindViewById14 = findViewById(R.id.coin_count_tv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById14, "findViewById(R.id.coin_count_tv)");
        this.coinCountTV = (TextView) viewFindViewById14;
        View viewFindViewById15 = findViewById(R.id.coin_count_iv);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById15, "findViewById(R.id.coin_count_iv)");
        this.coinCountIV = (ImageView) viewFindViewById15;
        View viewFindViewById16 = findViewById(R.id.cofetti_view);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById16, "findViewById(R.id.cofetti_view)");
        this.cofettiView = (CofettiView) viewFindViewById16;
        View viewFindViewById17 = findViewById(R.id.tipping_content);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById17, "findViewById(R.id.tipping_content)");
        this.tippingContentView = viewFindViewById17;
        this.coinShinyIV.setImageUrl("assets://shiny_star.webp");
        this.fireworksIV.setImageUrl("assets://thankyou_star.webp");
        this.thankYouFlipAnimator = createThankYouFlipAnimator();
        this.coinMotionAnimator = createCoinMotionAnimator();
        this.coinTextAnimator = createCoinTextAnimator();
        this.fadeOutAnimator = createFadeOutAnimator();
        this.thankYouSpring = createSpringAnim();
    }

    public final void show(User user, int i) {
        Intrinsics.checkParameterIsNotNull(user, "user");
        setVisibility(0);
        setAlpha(1.0f);
        setScaleXY(this.tippingContentView, 1.0f);
        this.avatarLayout.setUser(user);
        this.coinCount = i;
        this.nicknameTV.setText(user.nickname);
        TextView textView = this.coinCountTV;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.ENGLISH;
        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.ENGLISH");
        Object[] objArr = {Integer.valueOf(this.coinCount)};
        String str = String.format(locale, "+%d", Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(locale, format, *args)");
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
        this.rippleView.setOnHalfPlayed(new Function0<Unit>() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.show.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                TippingFeedbackView.this.thankYouSpring.setEndValue(1.0d);
            }
        });
        this.rippleView.startRippleEffect(250L);
    }

    public final void hide() {
        setVisibility(4);
        this.thankYouSpring.setCurrentValue(0.0d);
        this.thankYouSpring.setAtRest();
        this.thankYouFlipAnimator.cancel();
        this.coinMotionAnimator.cancel();
        this.coinTextAnimator.cancel();
        this.fadeOutAnimator.cancel();
        this.cofettiView.clear();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.thankYouSpring.removeAllListeners();
        this.thankYouFlipAnimator.removeAllListeners();
        this.coinMotionAnimator.removeAllListeners();
        this.coinTextAnimator.removeAllListeners();
        this.fadeOutAnimator.removeAllListeners();
    }

    private final Spring createSpringAnim() {
        Spring spring = SpringSystem.create().createSpring();
        Intrinsics.checkExpressionValueIsNotNull(spring, "spring");
        spring.setSpringConfig(new SpringConfig(190.0d, 10.0d));
        spring.setCurrentValue(0.0d);
        double restDisplacementThreshold = spring.getRestDisplacementThreshold();
        double d = 2;
        Double.isNaN(d);
        spring.setRestDisplacementThreshold(restDisplacementThreshold * d);
        spring.addListener(new SimpleSpringListener() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createSpringAnim.1
            private boolean fireworkTriggered;
            private boolean hasComeToMaxScale;
            private float previousValue = -1.0f;

            @Override // com.facebook.rebound.SimpleSpringListener, com.facebook.rebound.SpringListener
            public void onSpringActivate(Spring spring2) {
                super.onSpringActivate(spring2);
                this.previousValue = -1.0f;
                this.fireworkTriggered = false;
                this.hasComeToMaxScale = false;
                TippingFeedbackView tippingFeedbackView = TippingFeedbackView.this;
                tippingFeedbackView.setScaleXY(tippingFeedbackView.thankYouTV, 0.1f);
            }

            @Override // com.facebook.rebound.SimpleSpringListener, com.facebook.rebound.SpringListener
            public void onSpringUpdate(Spring spring2) {
                super.onSpringUpdate(spring2);
                if (spring2 != null) {
                    float currentValue = (float) spring2.getCurrentValue();
                    if (!this.hasComeToMaxScale) {
                        if (currentValue <= 1.0f) {
                            TippingFeedbackView tippingFeedbackView = TippingFeedbackView.this;
                            tippingFeedbackView.setScaleXY(tippingFeedbackView.thankYouTV, currentValue);
                            TippingFeedbackView.this.avatarView.setAlpha(currentValue);
                            if (currentValue >= 0.9f && !this.fireworkTriggered) {
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
                    float f = 1;
                    TippingFeedbackView.this.thankYouTV.setRotation(8 * (currentValue - f) * (TippingFeedbackView.this.thankYouTV.getScaleX() == 1.0f ? 2.2f : 1.0f));
                    TippingFeedbackView.this.avatarView.setTranslationY(TippingFeedbackView.this.avatarTranslationXBeforeAnimation * (f - currentValue) * (TippingFeedbackView.this.thankYouTV.getScaleX() == 1.0f ? 0.4f : 1.0f));
                }
            }

            @Override // com.facebook.rebound.SimpleSpringListener, com.facebook.rebound.SpringListener
            public void onSpringAtRest(Spring spring2) {
                super.onSpringAtRest(spring2);
                if (TippingFeedbackView.this.getVisibility() != 0) {
                    return;
                }
                if (TippingFeedbackView.this.isLowEffect()) {
                    TippingFeedbackView.this.coinTextAnimator.start();
                } else {
                    TippingFeedbackView.this.thankYouFlipAnimator.start();
                }
            }
        });
        return spring;
    }

    private final Animator createThankYouFlipAnimator() {
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator animator1 = ValueAnimator.ofFloat(0.0f, -1.0f);
        animator1.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createThankYouFlipAnimator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue != null) {
                    float fFloatValue = ((Float) animatedValue).floatValue();
                    TippingFeedbackView.this.thankYouTV.setRotationY(90 * fFloatValue);
                    TippingFeedbackView.this.thankYouTV.setAlpha(1 + fFloatValue);
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(animator1, "animator1");
        animator1.setDuration(THANK_YOU_FLIP_TIME_MS);
        ValueAnimator animator2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        animator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createThankYouFlipAnimator.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                if (TippingFeedbackView.this.coinIV.getVisibility() != 0) {
                    TippingFeedbackView.this.coinIV.setVisibility(0);
                }
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue != null) {
                    float fFloatValue = ((Float) animatedValue).floatValue();
                    TippingFeedbackView.this.coinIV.setRotationY(90 * fFloatValue);
                    TippingFeedbackView.this.coinIV.setAlpha(1 - fFloatValue);
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(animator2, "animator2");
        animator2.setDuration(THANK_YOU_FLIP_TIME_MS);
        ValueAnimator animator3 = ValueAnimator.ofFloat(0.0f, -15.0f, 8.0f, 0.0f);
        animator3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createThankYouFlipAnimator.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                ImageView imageView = TippingFeedbackView.this.coinIV;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
                }
                imageView.setRotationY(((Float) animatedValue).floatValue());
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(animator3, "animator3");
        animator3.setDuration(230L);
        Animator animatorCreateWebpWrapAnimator = createWebpWrapAnimator(this.coinShinyIV, 720L, new Function0<Unit>() { // from class: com.narvii.monetization.store.view.TippingFeedbackView$createThankYouFlipAnimator$animator4$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.this$0.coinMotionAnimator.start();
            }
        });
        animatorCreateWebpWrapAnimator.setStartDelay((animator3.getDuration() + 220) - 250);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playSequentially(animator1, animator2, animator3);
        animatorSet.playTogether(animatorSet2, animatorCreateWebpWrapAnimator);
        return animatorSet;
    }

    static /* synthetic */ Animator createSingleCoinMotionAnimator$default(TippingFeedbackView tippingFeedbackView, long j, long j2, ImageView imageView, ImageView imageView2, Function1 function1, Function0 function0, int i, Object obj) {
        return tippingFeedbackView.createSingleCoinMotionAnimator(j, j2, imageView, imageView2, (i & 16) != 0 ? null : function1, (i & 32) != 0 ? null : function0);
    }

    private final Animator createSingleCoinMotionAnimator(long j, long j2, final ImageView imageView, final ImageView imageView2, final Function1<? super Float, Unit> function1, final Function0<Unit> function0) {
        ValueAnimator animator = ValueAnimator.ofFloat(0.0f, 1.0f);
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createSingleCoinMotionAnimator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                ImageView imageView3;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue != null) {
                    float fFloatValue = ((Float) animatedValue).floatValue();
                    if (fFloatValue < 0.6f) {
                        imageView2.setAlpha(0.0f);
                        imageView.setAlpha(1.0f);
                        imageView3 = imageView;
                    } else {
                        imageView2.setAlpha(1.0f);
                        imageView.setAlpha(0.0f);
                        imageView3 = imageView2;
                    }
                    TippingFeedbackView.this.setScaleXY(imageView3, (float) Math.sqrt(1 - fFloatValue));
                    imageView3.setRotation((-90) * fFloatValue);
                    float width = TippingFeedbackView.this.nicknameBackgroundIV.getWidth() / 2.0f;
                    float top = ((TippingFeedbackView.this.coinIV.getTop() - (TippingFeedbackView.this.avatarLayout.getTop() + TippingFeedbackView.this.avatarView.getTop())) + ((TippingFeedbackView.this.coinIV.getHeight() * 3.0f) / 8.0f)) / 2.0f;
                    int left = TippingFeedbackView.this.coinIV.getLeft();
                    float top2 = TippingFeedbackView.this.coinIV.getTop() - top;
                    int i = Utils.isRtl() ? -1 : 1;
                    double d = left;
                    double d2 = width;
                    double d3 = fFloatValue;
                    Double.isNaN(d3);
                    double d4 = d3 * 3.141592653589793d;
                    double dSin = Math.sin(d4);
                    Double.isNaN(d2);
                    Double.isNaN(d);
                    imageView3.setTranslationX(i * ((float) (d + (d2 * dSin))));
                    double d5 = top2;
                    double d6 = top;
                    double dCos = Math.cos(d4);
                    Double.isNaN(d6);
                    Double.isNaN(d5);
                    imageView3.setTranslationY((float) (d5 + (d6 * dCos)));
                    Function1 function12 = function1;
                    if (function12 != null) {
                        return;
                    }
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
        });
        animator.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createSingleCoinMotionAnimator.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator2) {
                Function0 function02 = function0;
                if (function02 != null) {
                }
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(animator, "animator");
        animator.setDuration(j);
        animator.setStartDelay(j2);
        return animator;
    }

    private final Animator createCoinMotionAnimator() {
        Function0<Unit> function0 = new Function0<Unit>() { // from class: com.narvii.monetization.store.view.TippingFeedbackView$createCoinMotionAnimator$hideCoin$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.this$0.coinIV.setVisibility(4);
                this.this$0.coinShinyIV.setVisibility(4);
            }
        };
        Function1<Float, Unit> function1 = new Function1<Float, Unit>() { // from class: com.narvii.monetization.store.view.TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Float f) {
                invoke(f.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f) {
                if (this.this$0.hasPlayedCoinTextAnimation || f <= 0.6666667f) {
                    return;
                }
                this.this$0.hasPlayedCoinTextAnimation = true;
                this.this$0.coinTextAnimator.start();
                if (this.this$0.isHighEffect()) {
                    this.this$0.cofettiView.fire();
                }
            }
        };
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(createSingleCoinMotionAnimator$default(this, COIN_MOTION_TIME_MS, 0L, this.coinMotionIV3, this.coinMotionIV, null, null, 48, null), createSingleCoinMotionAnimator$default(this, (long) 142.5d, COIN_MOTION_TIME_DELAY_MS, this.coinMotionIV4, this.coinMotionIV2, null, null, 48, null), createSingleCoinMotionAnimator$default(this, (long) 135.0d, 160L, this.coinMotionIV3, this.coinMotionIV, null, null, 48, null), createSingleCoinMotionAnimator((long) 127.5d, 240L, this.coinMotionIV4, this.coinMotionIV2, function1, function0));
        return animatorSet;
    }

    private final Animator createCoinTextAnimator() {
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator animator1 = ValueAnimator.ofFloat(0.0f, 2.0f);
        animator1.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createCoinTextAnimator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
                }
                float fFloatValue = ((Float) animatedValue).floatValue();
                float fMin = Math.min(2 * fFloatValue, 1.0f);
                float fMin2 = Math.min(fFloatValue, 1.0f);
                TippingFeedbackView.this.coinCountIV.setRotation((-40) * fFloatValue);
                TippingFeedbackView tippingFeedbackView = TippingFeedbackView.this;
                tippingFeedbackView.setScaleXY(tippingFeedbackView.coinCountIV, fMin2);
                TippingFeedbackView.this.coinCountIV.setAlpha(fMin);
                TippingFeedbackView tippingFeedbackView2 = TippingFeedbackView.this;
                tippingFeedbackView2.setScaleXY(tippingFeedbackView2.coinCountTV, fMin2);
                TippingFeedbackView.this.coinCountTV.setAlpha(fMin);
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(animator1, "animator1");
        animator1.setDuration(COIN_TEXT_TIME_MS);
        ValueAnimator animator2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        animator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createCoinTextAnimator.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue != null) {
                    float fFloatValue = ((Float) animatedValue).floatValue();
                    TippingFeedbackView.this.coinCountIV.setAlpha(fFloatValue);
                    TippingFeedbackView.this.coinCountTV.setAlpha(fFloatValue);
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(animator2, "animator2");
        animator2.setDuration(COIN_TEXT_TIME_MS);
        animatorSet.playSequentially(animator1, animator2);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createCoinTextAnimator.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) throws IllegalStateException {
                Utils.playAudioEffect(TippingFeedbackView.this.getContext(), R.raw.coins);
                try {
                    Object systemService = TippingFeedbackView.this.getContext().getSystemService("vibrator");
                    if (systemService == null) {
                        throw new TypeCastException("null cannot be cast to non-null type android.os.Vibrator");
                    }
                    ((Vibrator) systemService).vibrate(300L);
                } catch (Exception unused) {
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TippingFeedbackView.this.fadeOutAnimator.setStartDelay(TippingFeedbackView.this.isHighEffect() ? 1500L : 0L);
                TippingFeedbackView.this.fadeOutAnimator.start();
            }
        });
        return animatorSet;
    }

    private final Animator createFadeOutAnimator() {
        ValueAnimator animator = ValueAnimator.ofFloat(0.0f, 1.0f);
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createFadeOutAnimator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
                }
                float fFloatValue = 1 - ((Float) animatedValue).floatValue();
                TippingFeedbackView.this.setAlpha(fFloatValue);
                TippingFeedbackView tippingFeedbackView = TippingFeedbackView.this;
                tippingFeedbackView.setScaleXY(tippingFeedbackView.tippingContentView, fFloatValue);
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(animator, "animator");
        animator.setDuration(250L);
        animator.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createFadeOutAnimator.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                TippingFeedbackView.this.hide();
                Function1<Boolean, Unit> onDismiss = TippingFeedbackView.this.getOnDismiss();
                if (onDismiss != null) {
                    onDismiss.invoke(false);
                }
            }
        });
        return animator;
    }

    private final Animator createWebpWrapAnimator(final NVImageView nVImageView, long j, final Function0<Unit> function0) {
        ValueAnimator animator = ValueAnimator.ofFloat(0.0f, 1.0f);
        Intrinsics.checkExpressionValueIsNotNull(animator, "animator");
        animator.setDuration(j);
        animator.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.monetization.store.view.TippingFeedbackView.createWebpWrapAnimator.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator2) {
                nVImageView.setVisibility(0);
                TippingFeedbackView.this.webpStart(nVImageView);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                function0.invoke();
            }
        });
        return animator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isLowEffect() {
        return this.coinCount <= 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isHighEffect() {
        return this.coinCount >= 100;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setScaleXY(View view, float f) {
        view.setScaleX(f);
        view.setScaleY(f);
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void webpStart(NVImageView nVImageView) {
        Drawable drawable = nVImageView.getDrawable();
        if (drawable instanceof WrapWebPDrawable) {
            ((WrapWebPDrawable) drawable).getWrappedDrawable().drawable.start();
        }
    }
}
