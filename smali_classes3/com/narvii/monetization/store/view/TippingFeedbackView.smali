.class public final Lcom/narvii/monetization/store/view/TippingFeedbackView;
.super Landroid/widget/FrameLayout;
.source "TippingFeedbackView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/store/view/TippingFeedbackView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTippingFeedbackView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TippingFeedbackView.kt\ncom/narvii/monetization/store/view/TippingFeedbackView\n*L\n1#1,430:1\n*E\n"
.end annotation


# static fields
.field private static final COIN_MOTION_TIME_DELAY_MS:J = 0x50L

.field private static final COIN_MOTION_TIME_MS:J = 0x96L

.field private static final COIN_TEXT_TIME_MS:J = 0x320L

.field public static final Companion:Lcom/narvii/monetization/store/view/TippingFeedbackView$Companion;

.field private static final FADE_OUT_TIME_MS:J = 0xfaL

.field private static final RIPPLE_TIME_MS:J = 0xfaL

.field private static final THANK_YOU_FLIP_TIME_MS:J = 0x6eL

.field private static final THANK_YOU_SCALE_BEFORE_ANIMATION:F = 0.1f


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

.field private final avatarTranslationXBeforeAnimation:F

.field private final avatarView:Landroid/view/View;

.field private final cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

.field private coinCount:I

.field private final coinCountIV:Landroid/widget/ImageView;

.field private final coinCountTV:Landroid/widget/TextView;

.field private final coinIV:Landroid/widget/ImageView;

.field private final coinMotionAnimator:Landroid/animation/Animator;

.field private final coinMotionIV:Landroid/widget/ImageView;

.field private final coinMotionIV2:Landroid/widget/ImageView;

.field private final coinMotionIV3:Landroid/widget/ImageView;

.field private final coinMotionIV4:Landroid/widget/ImageView;

.field private final coinShinyIV:Lcom/narvii/widget/NVImageView;

.field private final coinTextAnimator:Landroid/animation/Animator;

.field private final fadeOutAnimator:Landroid/animation/Animator;

.field private final fireworksIV:Lcom/narvii/widget/NVImageView;

.field private hasPlayedCoinTextAnimation:Z

.field private final nicknameBackgroundIV:Landroid/widget/ImageView;

.field private final nicknameTV:Landroid/widget/TextView;

.field private onDismiss:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final rippleView:Lcom/narvii/monetization/store/view/TippingRippleView;

.field private final thankYouFlipAnimator:Landroid/animation/Animator;

.field private final thankYouSpring:Lcom/facebook/rebound/Spring;

.field private final thankYouTV:Landroid/widget/TextView;

.field private final tippingContentView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/monetization/store/view/TippingFeedbackView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/monetization/store/view/TippingFeedbackView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->Companion:Lcom/narvii/monetization/store/view/TippingFeedbackView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarTranslationXBeforeAnimation:F

    .line 80
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b0693

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    new-instance p1, Lcom/narvii/monetization/store/view/TippingFeedbackView$1;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090987

    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.ripple_view)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/monetization/store/view/TippingRippleView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->rippleView:Lcom/narvii/monetization/store/view/TippingRippleView;

    const p1, 0x7f0900f9

    .line 88
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.avatar_layout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f090765

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.nickname_background_iv)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameBackgroundIV:Landroid/widget/ImageView;

    const p1, 0x7f09076e

    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.nickname_tv)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameTV:Landroid/widget/TextView;

    const p1, 0x7f0900ff

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.avatar_view)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarView:Landroid/view/View;

    const p1, 0x7f090b66

    .line 92
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.thank_you_tv)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    const p1, 0x7f090470

    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.fireworks_iv)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fireworksIV:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f09026a

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.coin_iv)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    const p1, 0x7f09026f

    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.coin_shiny_iv)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f09026b

    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.coin_motion_iv)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV:Landroid/widget/ImageView;

    const p1, 0x7f09026c

    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.coin_motion_iv2)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV2:Landroid/widget/ImageView;

    const p1, 0x7f09026d

    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.coin_motion_iv3)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV3:Landroid/widget/ImageView;

    const p1, 0x7f09026e

    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.coin_motion_iv4)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV4:Landroid/widget/ImageView;

    const p1, 0x7f090269

    .line 100
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.coin_count_tv)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountTV:Landroid/widget/TextView;

    const p1, 0x7f090268

    .line 101
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.coin_count_iv)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountIV:Landroid/widget/ImageView;

    const p1, 0x7f090267

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.cofetti_view)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/cofetti/CofettiView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    const p1, 0x7f090b89

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.tipping_content)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->tippingContentView:Landroid/view/View;

    .line 105
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    const-string v0, "assets://shiny_star.webp"

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 106
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fireworksIV:Lcom/narvii/widget/NVImageView;

    const-string v0, "assets://thankyou_star.webp"

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 108
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createThankYouFlipAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouFlipAnimator:Landroid/animation/Animator;

    .line 109
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinMotionAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionAnimator:Landroid/animation/Animator;

    .line 110
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinTextAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinTextAnimator:Landroid/animation/Animator;

    .line 111
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createFadeOutAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fadeOutAnimator:Landroid/animation/Animator;

    .line 112
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSpringAnim()Lcom/facebook/rebound/Spring;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouSpring:Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarTranslationXBeforeAnimation:F

    .line 80
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b0693

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    new-instance p1, Lcom/narvii/monetization/store/view/TippingFeedbackView$1;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090987

    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.ripple_view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/monetization/store/view/TippingRippleView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->rippleView:Lcom/narvii/monetization/store/view/TippingRippleView;

    const p1, 0x7f0900f9

    .line 88
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.avatar_layout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f090765

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.nickname_background_iv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameBackgroundIV:Landroid/widget/ImageView;

    const p1, 0x7f09076e

    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.nickname_tv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameTV:Landroid/widget/TextView;

    const p1, 0x7f0900ff

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.avatar_view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarView:Landroid/view/View;

    const p1, 0x7f090b66

    .line 92
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.thank_you_tv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    const p1, 0x7f090470

    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.fireworks_iv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fireworksIV:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f09026a

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_iv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    const p1, 0x7f09026f

    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_shiny_iv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f09026b

    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_motion_iv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV:Landroid/widget/ImageView;

    const p1, 0x7f09026c

    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_motion_iv2)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV2:Landroid/widget/ImageView;

    const p1, 0x7f09026d

    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_motion_iv3)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV3:Landroid/widget/ImageView;

    const p1, 0x7f09026e

    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_motion_iv4)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV4:Landroid/widget/ImageView;

    const p1, 0x7f090269

    .line 100
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_count_tv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountTV:Landroid/widget/TextView;

    const p1, 0x7f090268

    .line 101
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_count_iv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountIV:Landroid/widget/ImageView;

    const p1, 0x7f090267

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.cofetti_view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/cofetti/CofettiView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    const p1, 0x7f090b89

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.tipping_content)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->tippingContentView:Landroid/view/View;

    .line 105
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    const-string p2, "assets://shiny_star.webp"

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 106
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fireworksIV:Lcom/narvii/widget/NVImageView;

    const-string p2, "assets://thankyou_star.webp"

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 108
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createThankYouFlipAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouFlipAnimator:Landroid/animation/Animator;

    .line 109
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinMotionAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionAnimator:Landroid/animation/Animator;

    .line 110
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinTextAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinTextAnimator:Landroid/animation/Animator;

    .line 111
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createFadeOutAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fadeOutAnimator:Landroid/animation/Animator;

    .line 112
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSpringAnim()Lcom/facebook/rebound/Spring;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouSpring:Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarTranslationXBeforeAnimation:F

    .line 80
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b0693

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    new-instance p1, Lcom/narvii/monetization/store/view/TippingFeedbackView$1;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090987

    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.ripple_view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/monetization/store/view/TippingRippleView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->rippleView:Lcom/narvii/monetization/store/view/TippingRippleView;

    const p1, 0x7f0900f9

    .line 88
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.avatar_layout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f090765

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.nickname_background_iv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameBackgroundIV:Landroid/widget/ImageView;

    const p1, 0x7f09076e

    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.nickname_tv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameTV:Landroid/widget/TextView;

    const p1, 0x7f0900ff

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.avatar_view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarView:Landroid/view/View;

    const p1, 0x7f090b66

    .line 92
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.thank_you_tv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    const p1, 0x7f090470

    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.fireworks_iv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fireworksIV:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f09026a

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_iv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    const p1, 0x7f09026f

    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_shiny_iv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f09026b

    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_motion_iv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV:Landroid/widget/ImageView;

    const p1, 0x7f09026c

    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_motion_iv2)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV2:Landroid/widget/ImageView;

    const p1, 0x7f09026d

    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_motion_iv3)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV3:Landroid/widget/ImageView;

    const p1, 0x7f09026e

    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_motion_iv4)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV4:Landroid/widget/ImageView;

    const p1, 0x7f090269

    .line 100
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_count_tv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountTV:Landroid/widget/TextView;

    const p1, 0x7f090268

    .line 101
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.coin_count_iv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountIV:Landroid/widget/ImageView;

    const p1, 0x7f090267

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.cofetti_view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/cofetti/CofettiView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    const p1, 0x7f090b89

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.tipping_content)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->tippingContentView:Landroid/view/View;

    .line 105
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    const-string p2, "assets://shiny_star.webp"

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 106
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fireworksIV:Lcom/narvii/widget/NVImageView;

    const-string p2, "assets://thankyou_star.webp"

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 108
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createThankYouFlipAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouFlipAnimator:Landroid/animation/Animator;

    .line 109
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinMotionAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionAnimator:Landroid/animation/Animator;

    .line 110
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinTextAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinTextAnimator:Landroid/animation/Animator;

    .line 111
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createFadeOutAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fadeOutAnimator:Landroid/animation/Animator;

    .line 112
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSpringAnim()Lcom/facebook/rebound/Spring;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouSpring:Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public static final synthetic access$getAvatarLayout$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/narvii/widget/UserAvatarLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    return-object p0
.end method

.method public static final synthetic access$getAvatarTranslationXBeforeAnimation$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarTranslationXBeforeAnimation:F

    return p0
.end method

.method public static final synthetic access$getAvatarView$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getCofettiView$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/narvii/widget/cofetti/CofettiView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    return-object p0
.end method

.method public static final synthetic access$getCoinCountIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountIV:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$getCoinCountTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountTV:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getCoinIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$getCoinMotionAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static final synthetic access$getCoinShinyIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/narvii/widget/NVImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    return-object p0
.end method

.method public static final synthetic access$getCoinTextAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinTextAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static final synthetic access$getFadeOutAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fadeOutAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static final synthetic access$getFireworksIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/narvii/widget/NVImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fireworksIV:Lcom/narvii/widget/NVImageView;

    return-object p0
.end method

.method public static final synthetic access$getHasPlayedCoinTextAnimation$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->hasPlayedCoinTextAnimation:Z

    return p0
.end method

.method public static final synthetic access$getNicknameBackgroundIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameBackgroundIV:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$getThankYouFlipAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouFlipAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static final synthetic access$getThankYouSpring$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/facebook/rebound/Spring;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouSpring:Lcom/facebook/rebound/Spring;

    return-object p0
.end method

.method public static final synthetic access$getThankYouTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getTippingContentView$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->tippingContentView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$isHighEffect(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Z
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->isHighEffect()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isLowEffect(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Z
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->isLowEffect()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setHasPlayedCoinTextAnimation$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->hasPlayedCoinTextAnimation:Z

    return-void
.end method

.method public static final synthetic access$setScaleXY(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/view/View;F)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->setScaleXY(Landroid/view/View;F)V

    return-void
.end method

.method public static final synthetic access$webpStart(Lcom/narvii/monetization/store/view/TippingFeedbackView;Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->webpStart(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method

.method private final createCoinMotionAnimator()Landroid/animation/Animator;
    .locals 16

    move-object/from16 v11, p0

    .line 302
    new-instance v12, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$hideCoin$1;

    invoke-direct {v12, v11}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$hideCoin$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 307
    new-instance v13, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;

    invoke-direct {v13, v11}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 317
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x4

    new-array v15, v0, [Landroid/animation/Animator;

    .line 319
    iget-object v5, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV3:Landroid/widget/ImageView;

    iget-object v6, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV:Landroid/widget/ImageView;

    const-wide/16 v1, 0x96

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v10}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSingleCoinMotionAnimator$default(Lcom/narvii/monetization/store/view/TippingFeedbackView;JJLandroid/widget/ImageView;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v15, v1

    const-wide v0, 0x4061d00000000000L    # 142.5

    double-to-long v1, v0

    .line 320
    iget-object v5, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV4:Landroid/widget/ImageView;

    iget-object v6, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV2:Landroid/widget/ImageView;

    const-wide/16 v3, 0x50

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v10}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSingleCoinMotionAnimator$default(Lcom/narvii/monetization/store/view/TippingFeedbackView;JJLandroid/widget/ImageView;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v15, v1

    const-wide v0, 0x4060e00000000000L    # 135.0

    double-to-long v1, v0

    .line 321
    iget-object v5, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV3:Landroid/widget/ImageView;

    iget-object v6, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV:Landroid/widget/ImageView;

    const-wide/16 v3, 0xa0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v10}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSingleCoinMotionAnimator$default(Lcom/narvii/monetization/store/view/TippingFeedbackView;JJLandroid/widget/ImageView;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v15, v1

    const-wide v0, 0x405fe00000000000L    # 127.5

    double-to-long v1, v0

    .line 322
    iget-object v5, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV4:Landroid/widget/ImageView;

    iget-object v6, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV2:Landroid/widget/ImageView;

    const-wide/16 v3, 0xf0

    move-object/from16 v0, p0

    move-object v7, v13

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSingleCoinMotionAnimator(JJLandroid/widget/ImageView;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v15, v1

    .line 318
    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v14
.end method

.method private final createCoinTextAnimator()Landroid/animation/Animator;
    .locals 7

    .line 329
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 331
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 332
    new-instance v3, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$1;

    invoke-direct {v3, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v3, "animator1"

    .line 344
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v5, v1, [F

    .line 346
    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 347
    new-instance v6, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$2;

    invoke-direct {v6, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$2;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v6, "animator2"

    .line 352
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v5, v1, v2

    .line 353
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 354
    new-instance v1, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final createFadeOutAnimator()Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 373
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 374
    new-instance v1, Lcom/narvii/monetization/store/view/TippingFeedbackView$createFadeOutAnimator$1;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createFadeOutAnimator$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v1, "animator"

    .line 379
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 380
    new-instance v1, Lcom/narvii/monetization/store/view/TippingFeedbackView$createFadeOutAnimator$2;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createFadeOutAnimator$2;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final createSingleCoinMotionAnimator(JJLandroid/widget/ImageView;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Landroid/animation/Animator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/widget/ImageView;",
            "Landroid/widget/ImageView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 266
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 267
    new-instance v1, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;

    invoke-direct {v1, p0, p6, p5, p7}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 291
    new-instance p5, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$2;

    invoke-direct {p5, p8}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p5, "animator"

    .line 296
    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic createSingleCoinMotionAnimator$default(Lcom/narvii/monetization/store/view/TippingFeedbackView;JJLandroid/widget/ImageView;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/animation/Animator;
    .locals 11

    and-int/lit8 v0, p9, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_1

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 265
    invoke-direct/range {v2 .. v10}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSingleCoinMotionAnimator(JJLandroid/widget/ImageView;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private final createSpringAnim()Lcom/facebook/rebound/Spring;
    .locals 6

    .line 173
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    const-string v1, "spring"

    .line 175
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/rebound/SpringConfig;

    const-wide v2, 0x4067c00000000000L    # 190.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    const-wide/16 v1, 0x0

    .line 176
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 177
    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getRestDisplacementThreshold()D

    move-result-wide v1

    const/4 v3, 0x2

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    .line 178
    new-instance v1, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    return-object v0
.end method

.method private final createThankYouFlipAnimator()Landroid/animation/Animator;
    .locals 10

    .line 226
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 227
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 228
    new-instance v3, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$1;

    invoke-direct {v3, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v3, "animator1"

    .line 233
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x6e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v5, v1, [F

    .line 235
    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 236
    new-instance v6, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$2;

    invoke-direct {v6, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$2;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v6, "animator2"

    .line 244
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v3, 0x4

    new-array v3, v3, [F

    .line 246
    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 247
    new-instance v4, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$3;

    invoke-direct {v4, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$3;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v4, "animator3"

    .line 250
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0xe6

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 252
    iget-object v4, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    new-instance v6, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$animator4$1;

    invoke-direct {v6, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$animator4$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    const-wide/16 v7, 0x2d0

    invoke-direct {p0, v4, v7, v8, v6}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createWebpWrapAnimator(Lcom/narvii/widget/NVImageView;JLkotlin/jvm/functions/Function0;)Landroid/animation/Animator;

    move-result-object v4

    .line 255
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    const-wide/16 v8, 0xdc

    add-long/2addr v6, v8

    const-wide/16 v8, 0xfa

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 257
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v5, v7, v2

    aput-object v3, v7, v1

    .line 258
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v6, v1, v8

    aput-object v4, v1, v2

    .line 260
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x3e900000    # -15.0f
        0x41000000    # 8.0f
        0x0
    .end array-data
.end method

.method private final createWebpWrapAnimator(Lcom/narvii/widget/NVImageView;JLkotlin/jvm/functions/Function0;)Landroid/animation/Animator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/widget/NVImageView;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 390
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "animator"

    .line 391
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 392
    new-instance p2, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;

    invoke-direct {p2, p0, p1, p4}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;Lcom/narvii/widget/NVImageView;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final isHighEffect()Z
    .locals 2

    .line 407
    iget v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCount:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isLowEffect()Z
    .locals 2

    .line 405
    iget v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCount:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final setScaleXY(Landroid/view/View;F)V
    .locals 0

    .line 410
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 411
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final webpStart(Lcom/narvii/widget/NVImageView;)V
    .locals 1

    .line 425
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 426
    instance-of v0, p1, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    if-eqz v0, :cond_0

    .line 427
    check-cast p1, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    invoke-virtual {p1}, Lcom/narvii/util/drawables/WrapDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    iget-object p1, p1, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V

    :cond_0
    return-void
.end method

.method private final webpStop(Lcom/narvii/widget/NVImageView;)V
    .locals 2

    .line 415
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 416
    instance-of v1, v0, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    if-eqz v1, :cond_0

    .line 417
    check-cast v0, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    invoke-virtual {v0}, Lcom/narvii/util/drawables/WrapDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    iget-object v0, v0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 418
    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    .line 419
    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->eraseFrontBitmap()V

    .line 420
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getOnDismiss()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->onDismiss:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final hide()V
    .locals 3

    const/4 v0, 0x4

    .line 153
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 155
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 156
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouFlipAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 157
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 158
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinTextAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 159
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 160
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    invoke-virtual {v0}, Lcom/narvii/widget/cofetti/CofettiView;->clear()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 164
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 165
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    .line 166
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouFlipAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 167
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 168
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinTextAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 169
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method

.method public final setOnDismiss(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->onDismiss:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final show(Lcom/narvii/model/User;I)V
    .locals 4

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 117
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 118
    iget-object v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->tippingContentView:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->setScaleXY(Landroid/view/View;F)V

    .line 119
    iget-object v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v2, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 120
    iput p2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCount:I

    .line 121
    iget-object p2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameTV:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountTV:Landroid/widget/TextView;

    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Locale.ENGLISH"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "+%d"

    invoke-static {p2, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "java.lang.String.format(locale, format, *args)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setRotationY(F)V

    .line 125
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->setScaleXY(Landroid/view/View;F)V

    .line 126
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 127
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 129
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarView:Landroid/view/View;

    iget v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarTranslationXBeforeAnimation:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 131
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 132
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 136
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV2:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 137
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV3:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 138
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV4:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 140
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountTV:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 141
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountIV:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 143
    iput-boolean v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->hasPlayedCoinTextAnimation:Z

    .line 145
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->webpStop(Lcom/narvii/widget/NVImageView;)V

    .line 146
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fireworksIV:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->webpStop(Lcom/narvii/widget/NVImageView;)V

    .line 148
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->rippleView:Lcom/narvii/monetization/store/view/TippingRippleView;

    new-instance p2, Lcom/narvii/monetization/store/view/TippingFeedbackView$show$1;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$show$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/store/view/TippingRippleView;->setOnHalfPlayed(Lkotlin/jvm/functions/Function0;)V

    .line 149
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->rippleView:Lcom/narvii/monetization/store/view/TippingRippleView;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Lcom/narvii/monetization/store/view/TippingRippleView;->startRippleEffect(J)V

    return-void
.end method
