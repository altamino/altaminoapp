.class public final Lcom/narvii/monetization/store/view/TippingFeedbackView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/store/view/TippingFeedbackView$Companion;
    }
.end annotation


# static fields
.field private static final COIN_MOTION_TIME_DELAY_MS:J = 0x50L

.field private static final COIN_MOTION_TIME_MS:J = 0x96L

.field private static final COIN_TEXT_TIME_MS:J = 0x320L

.field public static final Companion:Lcom/narvii/monetization/store/view/TippingFeedbackView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FADE_OUT_TIME_MS:J = 0xfaL

.field private static final RIPPLE_TIME_MS:J = 0xfaL

.field private static final THANK_YOU_FLIP_TIME_MS:J = 0x6eL

.field private static final THANK_YOU_SCALE_BEFORE_ANIMATION:F = 0.1f


# instance fields
.field private final avatarLayout:Lcom/narvii/widget/UserAvatarLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final avatarTranslationXBeforeAnimation:F

.field private final avatarView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cofettiView:Lcom/narvii/widget/cofetti/CofettiView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private coinCount:I

.field private final coinCountIV:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coinCountTV:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coinIV:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coinMotionAnimator:Landroid/animation/Animator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coinMotionIV:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coinMotionIV2:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coinMotionIV3:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coinMotionIV4:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coinShinyIV:Lcom/narvii/widget/NVImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coinTextAnimator:Landroid/animation/Animator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fadeOutAnimator:Landroid/animation/Animator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fireworksIV:Lcom/narvii/widget/NVImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hasPlayedCoinTextAnimation:Z

.field private final nicknameBackgroundIV:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nicknameTV:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onDismiss:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final rippleView:Lcom/narvii/monetization/store/view/TippingRippleView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final thankYouFlipAnimator:Landroid/animation/Animator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final thankYouSpring:Lcom/facebook/rebound/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final thankYouTV:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tippingContentView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/monetization/store/view/TippingFeedbackView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/monetization/store/view/TippingFeedbackView$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->Companion:Lcom/narvii/monetization/store/view/TippingFeedbackView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarTranslationXBeforeAnimation:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d074a

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    new-instance p1, Lcom/narvii/monetization/store/view/a;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/store/view/a;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0c4a

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/monetization/store/view/TippingRippleView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->rippleView:Lcom/narvii/monetization/store/view/TippingRippleView;

    const p1, 0x7f0a0188

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f0a09fa

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameBackgroundIV:Landroid/widget/ImageView;

    const p1, 0x7f0a0a0a

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameTV:Landroid/widget/TextView;

    const p1, 0x7f0a018e

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarView:Landroid/view/View;

    const p1, 0x7f0a0e6b

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    const p1, 0x7f0a05a8

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fireworksIV:Lcom/narvii/widget/NVImageView;

    const v1, 0x7f0a0333

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    const v1, 0x7f0a0338

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/widget/NVImageView;

    iput-object v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    const v2, 0x7f0a0334

    .line 14
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV:Landroid/widget/ImageView;

    const v2, 0x7f0a0335

    .line 15
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV2:Landroid/widget/ImageView;

    const v2, 0x7f0a0336

    .line 16
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV3:Landroid/widget/ImageView;

    const v2, 0x7f0a0337

    .line 17
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV4:Landroid/widget/ImageView;

    const v2, 0x7f0a0332

    .line 18
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountTV:Landroid/widget/TextView;

    const v2, 0x7f0a0331

    .line 19
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountIV:Landroid/widget/ImageView;

    const v2, 0x7f0a032f

    .line 20
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/narvii/widget/cofetti/CofettiView;

    iput-object v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    const v2, 0x7f0a0e8e

    .line 21
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->tippingContentView:Landroid/view/View;

    const-string v0, "assets://shiny_star.webp"

    .line 22
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const-string v0, "assets://thankyou_star.webp"

    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 24
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createThankYouFlipAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouFlipAnimator:Landroid/animation/Animator;

    .line 25
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinMotionAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionAnimator:Landroid/animation/Animator;

    .line 26
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinTextAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinTextAnimator:Landroid/animation/Animator;

    .line 27
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createFadeOutAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fadeOutAnimator:Landroid/animation/Animator;

    .line 28
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSpringAnim()Lcom/facebook/rebound/e;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouSpring:Lcom/facebook/rebound/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarTranslationXBeforeAnimation:F

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d074a

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    new-instance p1, Lcom/narvii/monetization/store/view/a;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/store/view/a;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0c4a

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/monetization/store/view/TippingRippleView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->rippleView:Lcom/narvii/monetization/store/view/TippingRippleView;

    const p1, 0x7f0a0188

    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f0a09fa

    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameBackgroundIV:Landroid/widget/ImageView;

    const p1, 0x7f0a0a0a

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameTV:Landroid/widget/TextView;

    const p1, 0x7f0a018e

    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarView:Landroid/view/View;

    const p1, 0x7f0a0e6b

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    const p1, 0x7f0a05a8

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fireworksIV:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f0a0333

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    const v0, 0x7f0a0338

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    const v1, 0x7f0a0334

    .line 42
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV:Landroid/widget/ImageView;

    const v1, 0x7f0a0335

    .line 43
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV2:Landroid/widget/ImageView;

    const v1, 0x7f0a0336

    .line 44
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV3:Landroid/widget/ImageView;

    const v1, 0x7f0a0337

    .line 45
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV4:Landroid/widget/ImageView;

    const v1, 0x7f0a0332

    .line 46
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountTV:Landroid/widget/TextView;

    const v1, 0x7f0a0331

    .line 47
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountIV:Landroid/widget/ImageView;

    const v1, 0x7f0a032f

    .line 48
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/widget/cofetti/CofettiView;

    iput-object v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    const v1, 0x7f0a0e8e

    .line 49
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->tippingContentView:Landroid/view/View;

    const-string p2, "assets://shiny_star.webp"

    .line 50
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const-string p2, "assets://thankyou_star.webp"

    .line 51
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 52
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createThankYouFlipAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouFlipAnimator:Landroid/animation/Animator;

    .line 53
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinMotionAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionAnimator:Landroid/animation/Animator;

    .line 54
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinTextAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinTextAnimator:Landroid/animation/Animator;

    .line 55
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createFadeOutAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fadeOutAnimator:Landroid/animation/Animator;

    .line 56
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSpringAnim()Lcom/facebook/rebound/e;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouSpring:Lcom/facebook/rebound/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarTranslationXBeforeAnimation:F

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d074a

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    new-instance p1, Lcom/narvii/monetization/store/view/a;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/store/view/a;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0c4a

    .line 61
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/monetization/store/view/TippingRippleView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->rippleView:Lcom/narvii/monetization/store/view/TippingRippleView;

    const p1, 0x7f0a0188

    .line 62
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f0a09fa

    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameBackgroundIV:Landroid/widget/ImageView;

    const p1, 0x7f0a0a0a

    .line 64
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameTV:Landroid/widget/TextView;

    const p1, 0x7f0a018e

    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarView:Landroid/view/View;

    const p1, 0x7f0a0e6b

    .line 66
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    const p1, 0x7f0a05a8

    .line 67
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fireworksIV:Lcom/narvii/widget/NVImageView;

    const p3, 0x7f0a0333

    .line 68
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    const p3, 0x7f0a0338

    .line 69
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/narvii/widget/NVImageView;

    iput-object p3, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f0a0334

    .line 70
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV:Landroid/widget/ImageView;

    const v0, 0x7f0a0335

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV2:Landroid/widget/ImageView;

    const v0, 0x7f0a0336

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV3:Landroid/widget/ImageView;

    const v0, 0x7f0a0337

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV4:Landroid/widget/ImageView;

    const v0, 0x7f0a0332

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountTV:Landroid/widget/TextView;

    const v0, 0x7f0a0331

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountIV:Landroid/widget/ImageView;

    const v0, 0x7f0a032f

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/widget/cofetti/CofettiView;

    iput-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    const v0, 0x7f0a0e8e

    .line 77
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->tippingContentView:Landroid/view/View;

    const-string p2, "assets://shiny_star.webp"

    .line 78
    invoke-virtual {p3, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const-string p2, "assets://thankyou_star.webp"

    .line 79
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 80
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createThankYouFlipAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouFlipAnimator:Landroid/animation/Animator;

    .line 81
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinMotionAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionAnimator:Landroid/animation/Animator;

    .line 82
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinTextAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinTextAnimator:Landroid/animation/Animator;

    .line 83
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createFadeOutAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fadeOutAnimator:Landroid/animation/Animator;

    .line 84
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSpringAnim()Lcom/facebook/rebound/e;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouSpring:Lcom/facebook/rebound/e;

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->hide()V

    .line 9
    .line 10
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->onDismiss:Le8/l;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createThankYouFlipAnimator$lambda$3(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getAvatarTranslationXBeforeAnimation$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarTranslationXBeforeAnimation:F

    .line 3
    return p0
.end method

.method public static final synthetic access$getAvatarView$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCofettiView$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/narvii/widget/cofetti/CofettiView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCoinIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCoinMotionAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionAnimator:Landroid/animation/Animator;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCoinShinyIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/narvii/widget/NVImageView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCoinTextAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinTextAnimator:Landroid/animation/Animator;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getFadeOutAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fadeOutAnimator:Landroid/animation/Animator;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getFireworksIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/narvii/widget/NVImageView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fireworksIV:Lcom/narvii/widget/NVImageView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getHasPlayedCoinTextAnimation$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->hasPlayedCoinTextAnimation:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getThankYouFlipAnimator$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/animation/Animator;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouFlipAnimator:Landroid/animation/Animator;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getThankYouSpring$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/facebook/rebound/e;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouSpring:Lcom/facebook/rebound/e;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getThankYouTV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$isHighEffect(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->isHighEffect()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$isLowEffect(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->isLowEffect()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$setHasPlayedCoinTextAnimation$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->hasPlayedCoinTextAnimation:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setScaleXY(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/view/View;F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->setScaleXY(Landroid/view/View;F)V

    .line 4
    return-void
.end method

.method public static final synthetic access$webpStart(Lcom/narvii/monetization/store/view/TippingFeedbackView;Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->webpStart(Lcom/narvii/widget/NVImageView;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/narvii/monetization/store/view/TippingFeedbackView;Le8/l;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSingleCoinMotionAnimator$lambda$4(Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/narvii/monetization/store/view/TippingFeedbackView;Le8/l;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinTextAnimator$lambda$6(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final createCoinMotionAnimator()Landroid/animation/Animator;
    .locals 16

    .line 1
    .line 2
    move-object/from16 v11, p0

    .line 3
    .line 4
    new-instance v12, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$hideCoin$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v12, v11}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$hideCoin$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 8
    .line 9
    new-instance v13, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v13, v11}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 13
    .line 14
    new-instance v14, Landroid/animation/AnimatorSet;

    .line 15
    .line 16
    .line 17
    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 18
    const/4 v0, 0x4

    .line 19
    .line 20
    new-array v15, v0, [Landroid/animation/Animator;

    .line 21
    .line 22
    const-wide/16 v1, 0x96

    .line 23
    .line 24
    const-wide/16 v3, 0x0

    .line 25
    .line 26
    iget-object v5, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV3:Landroid/widget/ImageView;

    .line 27
    .line 28
    iget-object v6, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV:Landroid/widget/ImageView;

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    .line 32
    const/16 v9, 0x30

    .line 33
    const/4 v10, 0x0

    .line 34
    .line 35
    move-object/from16 v0, p0

    .line 36
    .line 37
    .line 38
    invoke-static/range {v0 .. v10}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSingleCoinMotionAnimator$default(Lcom/narvii/monetization/store/view/TippingFeedbackView;JJLandroid/widget/ImageView;Landroid/widget/ImageView;Le8/l;Le8/a;ILjava/lang/Object;)Landroid/animation/Animator;

    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    aput-object v0, v15, v1

    .line 43
    .line 44
    const-wide/16 v1, 0x8e

    .line 45
    .line 46
    const-wide/16 v3, 0x50

    .line 47
    .line 48
    iget-object v5, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV4:Landroid/widget/ImageView;

    .line 49
    .line 50
    iget-object v6, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV2:Landroid/widget/ImageView;

    .line 51
    .line 52
    move-object/from16 v0, p0

    .line 53
    .line 54
    .line 55
    invoke-static/range {v0 .. v10}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSingleCoinMotionAnimator$default(Lcom/narvii/monetization/store/view/TippingFeedbackView;JJLandroid/widget/ImageView;Landroid/widget/ImageView;Le8/l;Le8/a;ILjava/lang/Object;)Landroid/animation/Animator;

    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x1

    .line 58
    .line 59
    aput-object v0, v15, v1

    .line 60
    .line 61
    const-wide/16 v1, 0x87

    .line 62
    .line 63
    const-wide/16 v3, 0xa0

    .line 64
    .line 65
    iget-object v5, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV3:Landroid/widget/ImageView;

    .line 66
    .line 67
    iget-object v6, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV:Landroid/widget/ImageView;

    .line 68
    .line 69
    move-object/from16 v0, p0

    .line 70
    .line 71
    .line 72
    invoke-static/range {v0 .. v10}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSingleCoinMotionAnimator$default(Lcom/narvii/monetization/store/view/TippingFeedbackView;JJLandroid/widget/ImageView;Landroid/widget/ImageView;Le8/l;Le8/a;ILjava/lang/Object;)Landroid/animation/Animator;

    .line 73
    move-result-object v0

    .line 74
    const/4 v1, 0x2

    .line 75
    .line 76
    aput-object v0, v15, v1

    .line 77
    .line 78
    const-wide/16 v1, 0x7f

    .line 79
    .line 80
    const-wide/16 v3, 0xf0

    .line 81
    .line 82
    iget-object v5, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV4:Landroid/widget/ImageView;

    .line 83
    .line 84
    iget-object v6, v11, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV2:Landroid/widget/ImageView;

    .line 85
    .line 86
    move-object/from16 v0, p0

    .line 87
    move-object v7, v13

    .line 88
    move-object v8, v12

    .line 89
    .line 90
    .line 91
    invoke-direct/range {v0 .. v8}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSingleCoinMotionAnimator(JJLandroid/widget/ImageView;Landroid/widget/ImageView;Le8/l;Le8/a;)Landroid/animation/Animator;

    .line 92
    move-result-object v0

    .line 93
    const/4 v1, 0x3

    .line 94
    .line 95
    aput-object v0, v15, v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 99
    return-object v14
.end method

.method private final createCoinTextAnimator()Landroid/animation/Animator;
    .locals 7

    .line 1
    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    new-array v2, v1, [F

    .line 9
    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    new-instance v3, Lcom/narvii/monetization/store/view/c;

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, p0}, Lcom/narvii/monetization/store/view/c;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 24
    .line 25
    const-wide/16 v3, 0x320

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    new-array v5, v1, [F

    .line 31
    .line 32
    .line 33
    fill-array-data v5, :array_1

    .line 34
    .line 35
    .line 36
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    new-instance v6, Lcom/narvii/monetization/store/view/d;

    .line 40
    .line 41
    .line 42
    invoke-direct {v6, p0}, Lcom/narvii/monetization/store/view/d;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    new-array v1, v1, [Landroid/animation/Animator;

    .line 51
    const/4 v3, 0x0

    .line 52
    .line 53
    aput-object v2, v1, v3

    .line 54
    const/4 v2, 0x1

    .line 55
    .line 56
    aput-object v5, v1, v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 60
    .line 61
    new-instance v1, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createCoinTextAnimator$3;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    return-object v0

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static final createCoinTextAnimator$lambda$5(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "it"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 25
    move-result p1

    .line 26
    const/4 v0, 0x2

    .line 27
    int-to-float v0, v0

    .line 28
    mul-float/2addr v0, p1

    .line 29
    .line 30
    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    .line 38
    move-result v1

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountIV:Landroid/widget/ImageView;

    .line 41
    .line 42
    const/16 v3, -0x28

    .line 43
    int-to-float v3, v3

    .line 44
    mul-float/2addr v3, p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountIV:Landroid/widget/ImageView;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1, v1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->setScaleXY(Landroid/view/View;F)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountIV:Landroid/widget/ImageView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountTV:Landroid/widget/TextView;

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1, v1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->setScaleXY(Landroid/view/View;F)V

    .line 63
    .line 64
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountTV:Landroid/widget/TextView;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 68
    return-void
.end method

.method private static final createCoinTextAnimator$lambda$6(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "it"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 25
    move-result p1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountIV:Landroid/widget/ImageView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountTV:Landroid/widget/TextView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 36
    return-void
.end method

.method private final createFadeOutAnimator()Landroid/animation/Animator;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/monetization/store/view/b;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/view/b;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    .line 20
    const-wide/16 v1, 0xfa

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/monetization/store/view/TippingFeedbackView$createFadeOutAnimator$2;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createFadeOutAnimator$2;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final createFadeOutAnimator$lambda$7(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "it"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 25
    move-result p1

    .line 26
    const/4 v0, 0x1

    .line 27
    int-to-float v0, v0

    .line 28
    sub-float/2addr v0, p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->tippingContentView:Landroid/view/View;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->setScaleXY(Landroid/view/View;F)V

    .line 37
    return-void
.end method

.method private final createSingleCoinMotionAnimator(JJLandroid/widget/ImageView;Landroid/widget/ImageView;Le8/l;Le8/a;)Landroid/animation/Animator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/widget/ImageView;",
            "Landroid/widget/ImageView;",
            "Le8/l<",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;",
            "Le8/a<",
            "Lw7/l0;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/monetization/store/view/e;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p6, p5, p0, p7}, Lcom/narvii/monetization/store/view/e;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/narvii/monetization/store/view/TippingFeedbackView;Le8/l;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    .line 20
    new-instance p5, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$2;

    .line 21
    .line 22
    .line 23
    invoke-direct {p5, p8}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$2;-><init>(Le8/a;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 36
    return-object v0

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic createSingleCoinMotionAnimator$default(Lcom/narvii/monetization/store/view/TippingFeedbackView;JJLandroid/widget/ImageView;Landroid/widget/ImageView;Le8/l;Le8/a;ILjava/lang/Object;)Landroid/animation/Animator;
    .locals 11

    .line 1
    .line 2
    and-int/lit8 v0, p9, 0x10

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    move-object v9, v1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    move-object/from16 v9, p7

    .line 10
    .line 11
    :goto_0
    and-int/lit8 v0, p9, 0x20

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    move-object v10, v1

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_1
    move-object/from16 v10, p8

    .line 18
    :goto_1
    move-object v2, p0

    .line 19
    move-wide v3, p1

    .line 20
    move-wide v5, p3

    .line 21
    .line 22
    move-object/from16 v7, p5

    .line 23
    .line 24
    move-object/from16 v8, p6

    .line 25
    .line 26
    .line 27
    invoke-direct/range {v2 .. v10}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSingleCoinMotionAnimator(JJLandroid/widget/ImageView;Landroid/widget/ImageView;Le8/l;Le8/a;)Landroid/animation/Animator;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method private static final createSingleCoinMotionAnimator$lambda$4(Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/narvii/monetization/store/view/TippingFeedbackView;Le8/l;Landroid/animation/ValueAnimator;)V
    .locals 9

    .line 1
    .line 2
    const-string v0, "$backCoin"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$frontCoin"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string/jumbo v0, "this$0"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "it"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 24
    move-result-object p4

    .line 25
    .line 26
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 27
    .line 28
    .line 29
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    check-cast p4, Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    .line 35
    move-result p4

    .line 36
    .line 37
    .line 38
    const v0, 0x3f19999a    # 0.6f

    .line 39
    .line 40
    cmpg-float v0, p4, v0

    .line 41
    .line 42
    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    const/4 v2, 0x0

    .line 44
    .line 45
    if-gez v0, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 52
    move-object p0, p1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 60
    :goto_0
    const/4 p1, 0x1

    .line 61
    int-to-float v0, p1

    .line 62
    sub-float/2addr v0, p4

    .line 63
    float-to-double v0, v0

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 67
    move-result-wide v0

    .line 68
    double-to-float v0, v0

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p0, v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->setScaleXY(Landroid/view/View;F)V

    .line 72
    .line 73
    const/16 v0, -0x5a

    .line 74
    int-to-float v0, v0

    .line 75
    mul-float/2addr v0, p4

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 79
    .line 80
    iget-object v0, p2, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameBackgroundIV:Landroid/widget/ImageView;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 84
    move-result v0

    .line 85
    int-to-float v0, v0

    .line 86
    .line 87
    const/high16 v1, 0x40000000    # 2.0f

    .line 88
    div-float/2addr v0, v1

    .line 89
    .line 90
    iget-object v2, p2, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 94
    move-result v2

    .line 95
    .line 96
    iget-object v3, p2, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 100
    move-result v3

    .line 101
    .line 102
    iget-object v4, p2, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarView:Landroid/view/View;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 106
    move-result v4

    .line 107
    add-int/2addr v3, v4

    .line 108
    sub-int/2addr v2, v3

    .line 109
    int-to-float v2, v2

    .line 110
    .line 111
    iget-object v3, p2, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 115
    move-result v3

    .line 116
    int-to-float v3, v3

    .line 117
    .line 118
    const/high16 v4, 0x40400000    # 3.0f

    .line 119
    mul-float/2addr v3, v4

    .line 120
    .line 121
    const/high16 v4, 0x41000000    # 8.0f

    .line 122
    div-float/2addr v3, v4

    .line 123
    add-float/2addr v2, v3

    .line 124
    div-float/2addr v2, v1

    .line 125
    .line 126
    iget-object v1, p2, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 130
    move-result v1

    .line 131
    .line 132
    iget-object p2, p2, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 136
    move-result p2

    .line 137
    int-to-float p2, p2

    .line 138
    sub-float/2addr p2, v2

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 142
    move-result v3

    .line 143
    .line 144
    if-eqz v3, :cond_1

    .line 145
    const/4 p1, -0x1

    .line 146
    :cond_1
    int-to-float p1, p1

    .line 147
    int-to-double v3, v1

    .line 148
    float-to-double v0, v0

    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    .line 154
    float-to-double v7, p4

    .line 155
    mul-double/2addr v7, v5

    .line 156
    .line 157
    .line 158
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 159
    move-result-wide v5

    .line 160
    mul-double/2addr v0, v5

    .line 161
    add-double/2addr v3, v0

    .line 162
    double-to-float v0, v3

    .line 163
    mul-float/2addr p1, v0

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 167
    float-to-double p1, p2

    .line 168
    float-to-double v0, v2

    .line 169
    .line 170
    .line 171
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 172
    move-result-wide v2

    .line 173
    mul-double/2addr v0, v2

    .line 174
    add-double/2addr p1, v0

    .line 175
    double-to-float p1, p1

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 179
    .line 180
    if-eqz p3, :cond_2

    .line 181
    .line 182
    .line 183
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 184
    move-result-object p0

    .line 185
    .line 186
    .line 187
    invoke-interface {p3, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_2
    return-void
.end method

.method private final createSpringAnim()Lcom/facebook/rebound/e;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/rebound/i;->g()Lcom/facebook/rebound/i;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/facebook/rebound/b;->c()Lcom/facebook/rebound/e;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Lcom/facebook/rebound/f;

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v2, 0x4067c00000000000L    # 190.0

    .line 16
    .line 17
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/rebound/f;-><init>(DD)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->r(Lcom/facebook/rebound/f;)Lcom/facebook/rebound/e;

    .line 24
    .line 25
    const-wide/16 v1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->m(D)Lcom/facebook/rebound/e;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/facebook/rebound/e;->f()D

    .line 32
    move-result-wide v1

    .line 33
    const/4 v3, 0x2

    .line 34
    int-to-double v3, v3

    .line 35
    mul-double/2addr v1, v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->q(D)Lcom/facebook/rebound/e;

    .line 39
    .line 40
    new-instance v1, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSpringAnim$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 50
    return-object v0
.end method

.method private final createThankYouFlipAnimator()Landroid/animation/Animator;
    .locals 10

    .line 1
    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    new-array v2, v1, [F

    .line 9
    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    new-instance v3, Lcom/narvii/monetization/store/view/f;

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, p0}, Lcom/narvii/monetization/store/view/f;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 24
    .line 25
    const-wide/16 v3, 0x6e

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    new-array v5, v1, [F

    .line 31
    .line 32
    .line 33
    fill-array-data v5, :array_1

    .line 34
    .line 35
    .line 36
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    new-instance v6, Lcom/narvii/monetization/store/view/g;

    .line 40
    .line 41
    .line 42
    invoke-direct {v6, p0}, Lcom/narvii/monetization/store/view/g;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    const/4 v3, 0x4

    .line 50
    .line 51
    new-array v3, v3, [F

    .line 52
    .line 53
    .line 54
    fill-array-data v3, :array_2

    .line 55
    .line 56
    .line 57
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    new-instance v4, Lcom/narvii/monetization/store/view/h;

    .line 61
    .line 62
    .line 63
    invoke-direct {v4, p0}, Lcom/narvii/monetization/store/view/h;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    .line 68
    const-wide/16 v6, 0xe6

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    iget-object v4, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    .line 74
    .line 75
    new-instance v6, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$animator4$1;

    .line 76
    .line 77
    .line 78
    invoke-direct {v6, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createThankYouFlipAnimator$animator4$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 79
    .line 80
    const-wide/16 v7, 0x2d0

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v4, v7, v8, v6}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createWebpWrapAnimator(Lcom/narvii/widget/NVImageView;JLe8/a;)Landroid/animation/Animator;

    .line 84
    move-result-object v4

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 88
    move-result-wide v6

    .line 89
    .line 90
    const-wide/16 v8, -0x1e

    .line 91
    add-long/2addr v6, v8

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 95
    .line 96
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 97
    .line 98
    .line 99
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 100
    const/4 v7, 0x3

    .line 101
    .line 102
    new-array v7, v7, [Landroid/animation/Animator;

    .line 103
    const/4 v8, 0x0

    .line 104
    .line 105
    aput-object v2, v7, v8

    .line 106
    const/4 v2, 0x1

    .line 107
    .line 108
    aput-object v5, v7, v2

    .line 109
    .line 110
    aput-object v3, v7, v1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 114
    .line 115
    new-array v1, v1, [Landroid/animation/Animator;

    .line 116
    .line 117
    aput-object v6, v1, v8

    .line 118
    .line 119
    aput-object v4, v1, v2

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 123
    return-object v0

    .line 124
    nop

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    :array_2
    .array-data 4
        0x0
        -0x3e900000    # -15.0f
        0x41000000    # 8.0f
        0x0
    .end array-data
.end method

.method private static final createThankYouFlipAnimator$lambda$1(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "it"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 25
    move-result p1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    .line 28
    .line 29
    const/16 v1, 0x5a

    .line 30
    int-to-float v1, v1

    .line 31
    mul-float/2addr v1, p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 35
    .line 36
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    .line 37
    const/4 v0, 0x1

    .line 38
    int-to-float v0, v0

    .line 39
    add-float/2addr v0, p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 43
    return-void
.end method

.method private static final createThankYouFlipAnimator$lambda$2(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "it"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    check-cast p1, Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 39
    move-result p1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    .line 42
    .line 43
    const/16 v1, 0x5a

    .line 44
    int-to-float v1, v1

    .line 45
    mul-float/2addr v1, p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 49
    .line 50
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    .line 51
    const/4 v0, 0x1

    .line 52
    int-to-float v0, v0

    .line 53
    sub-float/2addr v0, p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 57
    return-void
.end method

.method private static final createThankYouFlipAnimator$lambda$3(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "it"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast p1, Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 27
    move-result p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 31
    return-void
.end method

.method private final createWebpWrapAnimator(Lcom/narvii/widget/NVImageView;JLe8/a;)Landroid/animation/Animator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/widget/NVImageView;",
            "J",
            "Le8/a<",
            "Lw7/l0;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    new-instance p2, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, p1, p0, p4}, Lcom/narvii/monetization/store/view/TippingFeedbackView$createWebpWrapAnimator$1;-><init>(Lcom/narvii/widget/NVImageView;Lcom/narvii/monetization/store/view/TippingFeedbackView;Le8/a;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic d(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createCoinTextAnimator$lambda$5(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->_init_$lambda$0(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createFadeOutAnimator$lambda$7(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createThankYouFlipAnimator$lambda$2(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic h(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->createThankYouFlipAnimator$lambda$1(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final isHighEffect()Z
    .locals 2

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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 7
    return-void
.end method

.method private final webpStart(Lcom/narvii/widget/NVImageView;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/util/drawables/WrapDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V

    .line 22
    :cond_0
    return-void
.end method

.method private final webpStop(Lcom/narvii/widget/NVImageView;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/util/drawables/WrapDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->eraseFrontBitmap()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public final getOnDismiss()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->onDismiss:Le8/l;

    return-object v0
.end method

.method public final hide()V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouSpring:Lcom/facebook/rebound/e;

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->m(D)Lcom/facebook/rebound/e;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouSpring:Lcom/facebook/rebound/e;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/facebook/rebound/e;->l()Lcom/facebook/rebound/e;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouFlipAnimator:Landroid/animation/Animator;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionAnimator:Landroid/animation/Animator;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinTextAnimator:Landroid/animation/Animator;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fadeOutAnimator:Landroid/animation/Animator;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/widget/cofetti/CofettiView;->clear()V

    .line 42
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouSpring:Lcom/facebook/rebound/e;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/facebook/rebound/e;->k()Lcom/facebook/rebound/e;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouFlipAnimator:Landroid/animation/Animator;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionAnimator:Landroid/animation/Animator;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinTextAnimator:Landroid/animation/Animator;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fadeOutAnimator:Landroid/animation/Animator;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 29
    return-void
.end method

.method public final setOnDismiss(Le8/l;)V
    .locals 0
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->onDismiss:Le8/l;

    return-void
.end method

.method public final show(Lcom/narvii/model/User;I)V
    .locals 5
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "user"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->tippingContentView:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v2, v1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->setScaleXY(Landroid/view/View;F)V

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 25
    .line 26
    iput p2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCount:I

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->nicknameTV:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountTV:Landroid/widget/TextView;

    .line 36
    .line 37
    sget-object p2, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 38
    .line 39
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 40
    const/4 v2, 0x1

    .line 41
    .line 42
    new-array v3, v2, [Ljava/lang/Object;

    .line 43
    .line 44
    iget v4, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCount:I

    .line 45
    .line 46
    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    aput-object v4, v3, v0

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    const-string v3, "+%d"

    .line 57
    .line 58
    .line 59
    invoke-static {p2, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    const-string v2, "format(...)"

    .line 63
    .line 64
    .line 65
    invoke-static {p2, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    .line 71
    const/4 p2, 0x0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->setScaleXY(Landroid/view/View;F)V

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->thankYouTV:Landroid/widget/TextView;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarView:Landroid/view/View;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarView:Landroid/view/View;

    .line 92
    .line 93
    iget v2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->avatarTranslationXBeforeAnimation:F

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinIV:Landroid/widget/ImageView;

    .line 104
    const/4 v1, 0x4

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV:Landroid/widget/ImageView;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 118
    .line 119
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV2:Landroid/widget/ImageView;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 123
    .line 124
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV3:Landroid/widget/ImageView;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 128
    .line 129
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinMotionIV4:Landroid/widget/ImageView;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 133
    .line 134
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountTV:Landroid/widget/TextView;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 138
    .line 139
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinCountIV:Landroid/widget/ImageView;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 143
    .line 144
    iput-boolean v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->hasPlayedCoinTextAnimation:Z

    .line 145
    .line 146
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->coinShinyIV:Lcom/narvii/widget/NVImageView;

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->webpStop(Lcom/narvii/widget/NVImageView;)V

    .line 150
    .line 151
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->fireworksIV:Lcom/narvii/widget/NVImageView;

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->webpStop(Lcom/narvii/widget/NVImageView;)V

    .line 155
    .line 156
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->rippleView:Lcom/narvii/monetization/store/view/TippingRippleView;

    .line 157
    .line 158
    new-instance p2, Lcom/narvii/monetization/store/view/TippingFeedbackView$show$1;

    .line 159
    .line 160
    .line 161
    invoke-direct {p2, p0}, Lcom/narvii/monetization/store/view/TippingFeedbackView$show$1;-><init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/store/view/TippingRippleView;->setOnHalfPlayed(Le8/a;)V

    .line 165
    .line 166
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView;->rippleView:Lcom/narvii/monetization/store/view/TippingRippleView;

    .line 167
    .line 168
    const-wide/16 v0, 0xfa

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0, v1}, Lcom/narvii/monetization/store/view/TippingRippleView;->startRippleEffect(J)V

    .line 172
    return-void
.end method
