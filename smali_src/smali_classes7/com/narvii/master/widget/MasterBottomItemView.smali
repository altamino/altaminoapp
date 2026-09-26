.class public final Lcom/narvii/master/widget/MasterBottomItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/widget/MasterBottomItemView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/widget/MasterBottomItemView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEXT_COLOR_DISABLED:I = -0xcccccd

.field public static final TEXT_COLOR_SELECTED:I = -0x1

.field public static final TEXT_COLOR_UNSELECTED:I = -0x666667

.field private static final scaleArray:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final timeArray:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final badge$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final icon$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final iconSelected$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvTitle$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/narvii/master/widget/MasterBottomItemView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/widget/MasterBottomItemView$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/widget/MasterBottomItemView;->Companion:Lcom/narvii/master/widget/MasterBottomItemView$Companion;

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/master/widget/MasterBottomItemView;->scaleArray:[F

    const/16 v0, 0xfa

    const/16 v1, 0x118

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/16 v4, 0xb9

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/narvii/master/widget/MasterBottomItemView;->timeArray:[I

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f8ccccd    # 1.1f
        0x3f733333    # 0.95f
        0x3f83d70a    # 1.03f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/narvii/master/widget/MasterBottomItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0a0e22

    .line 3
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView;->iconSelected$delegate:Lw7/m;

    const p1, 0x7f0a0e21

    .line 4
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView;->icon$delegate:Lw7/m;

    const p1, 0x7f0a01a7

    .line 5
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView;->badge$delegate:Lw7/m;

    const p1, 0x7f0a0e27

    .line 6
    invoke-static {p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt;->bind(Landroid/view/ViewGroup;I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/widget/MasterBottomItemView;->tvTitle$delegate:Lw7/m;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/widget/MasterBottomItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/widget/MasterBottomItemView;->animateTextColor$lambda$0(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getScaleArray$cp()[F
    .locals 1

    sget-object v0, Lcom/narvii/master/widget/MasterBottomItemView;->scaleArray:[F

    return-object v0
.end method

.method public static final synthetic access$getTimeArray$cp()[I
    .locals 1

    sget-object v0, Lcom/narvii/master/widget/MasterBottomItemView;->timeArray:[I

    return-object v0
.end method

.method private static final animateTextColor$lambda$0(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$tv"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "animation"

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
    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    return-void
.end method

.method private final cancelTabIconAnimation(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    const v0, 0x7f0a100b

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    instance-of v2, v1, Landroid/view/ViewPropertyAnimator;

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    check-cast v1, Landroid/view/ViewPropertyAnimator;

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-object v1, v3

    .line 20
    .line 21
    :goto_0
    if-eqz v1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-virtual {p1, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a0113

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    instance-of v2, v1, Landroid/animation/Animator;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    check-cast v1, Landroid/animation/Animator;

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move-object v1, v3

    .line 43
    .line 44
    :goto_1
    if-eqz v1, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 54
    .line 55
    .line 56
    :cond_4
    invoke-virtual {p1, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const v0, 0x7f0a0c6b

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    instance-of v2, v1, Lcom/narvii/util/ScaleBounceHelper;

    .line 66
    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    check-cast v1, Lcom/narvii/util/ScaleBounceHelper;

    .line 70
    goto :goto_2

    .line 71
    :cond_5
    move-object v1, v3

    .line 72
    .line 73
    :goto_2
    if-eqz v1, :cond_6

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/narvii/util/ScaleBounceHelper;->cancel()V

    .line 77
    .line 78
    .line 79
    :cond_6
    invoke-virtual {p1, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 83
    return-void
.end method

.method private final iconFadeIn(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/master/widget/MasterBottomItemView;->iconFadeIn(Landroid/view/View;I)V

    return-void
.end method

.method private final iconFadeIn(Landroid/view/View;I)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    int-to-long v1, p2

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 4
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const p2, 0x7f0a0113

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private final iconFadeOut(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/master/widget/MasterBottomItemView;->iconFadeOut(Landroid/view/View;I)V

    return-void
.end method

.method private final iconFadeOut(Landroid/view/View;I)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/master/widget/MasterBottomItemView;->cancelTabIconAnimation(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;

    invoke-direct {v1, v0, p1}, Lcom/narvii/master/widget/MasterBottomItemView$iconFadeOut$1;-><init>(Landroid/animation/Animator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v1, p2

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 6
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const p2, 0x7f0a0113

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public final animateTextColor(Landroid/widget/TextView;II)V
    .locals 3
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "tv"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 11
    const/4 v1, 0x2

    .line 12
    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    aput-object p2, v1, v2

    .line 21
    const/4 p2, 0x1

    .line 22
    .line 23
    .line 24
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    aput-object p3, v1, p2

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    const-wide/16 v0, 0xfa

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    new-instance p3, Lcom/narvii/master/widget/e;

    .line 39
    .line 40
    .line 41
    invoke-direct {p3, p1}, Lcom/narvii/master/widget/e;-><init>(Landroid/widget/TextView;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 48
    return-void
.end method

.method public final animationItemSelected()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIconSelected()Landroid/widget/ImageView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/master/widget/MasterBottomItemView;->cancelTabIconAnimation(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIconSelected()Landroid/widget/ImageView;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/util/ScaleBounceHelper;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIconSelected()Landroid/widget/ImageView;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    sget-object v3, Lcom/narvii/master/widget/MasterBottomItemView;->scaleArray:[F

    .line 28
    .line 29
    sget-object v4, Lcom/narvii/master/widget/MasterBottomItemView;->timeArray:[I

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/narvii/util/ScaleBounceHelper;-><init>(Landroid/content/Context;Landroid/view/View;[F[I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/util/ScaleBounceHelper;->playSeq()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIconSelected()Landroid/widget/ImageView;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    const v2, 0x7f0a0c6b

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIcon()Landroid/widget/ImageView;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v0}, Lcom/narvii/master/widget/MasterBottomItemView;->iconFadeOut(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 59
    const/4 v2, 0x1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    const v1, -0x666667

    .line 70
    const/4 v2, -0x1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/master/widget/MasterBottomItemView;->animateTextColor(Landroid/widget/TextView;II)V

    .line 74
    return-void
.end method

.method public final animationItemUnSelected()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIcon()Landroid/widget/ImageView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/master/widget/MasterBottomItemView;->cancelTabIconAnimation(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIcon()Landroid/widget/ImageView;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIcon()Landroid/widget/ImageView;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/narvii/master/widget/MasterBottomItemView;->iconFadeIn(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIconSelected()Landroid/widget/ImageView;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Lcom/narvii/master/widget/MasterBottomItemView;->iconFadeOut(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    .line 42
    move-result-object v0

    .line 43
    const/4 v1, -0x1

    .line 44
    .line 45
    .line 46
    const v2, -0x666667

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/master/widget/MasterBottomItemView;->animateTextColor(Landroid/widget/TextView;II)V

    .line 50
    return-void
.end method

.method public final configTabItem(III)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIconSelected()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final configTabItem(Lw7/z;)V
    .locals 2
    .param p1    # Lw7/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/z<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "conf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lw7/z;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lw7/z;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lw7/z;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/narvii/master/widget/MasterBottomItemView;->configTabItem(III)V

    return-void
.end method

.method public final getBadge()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomItemView;->badge$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    return-object v0
.end method

.method public final getIcon()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomItemView;->icon$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    return-object v0
.end method

.method public final getIconSelected()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomItemView;->iconSelected$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    return-object v0
.end method

.method public final getTvTitle()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/widget/MasterBottomItemView;->tvTitle$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method public final setEnabled(ZI)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIcon()Landroid/widget/ImageView;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    .line 27
    const p1, -0x666667

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    const p1, -0xcccccd

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    return-void
.end method

.method public final setItemSelected()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIconSelected()Landroid/widget/ImageView;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getIcon()Landroid/widget/ImageView;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/master/widget/MasterBottomItemView;->getTvTitle()Landroid/widget/TextView;

    .line 31
    move-result-object v0

    .line 32
    const/4 v1, -0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    return-void
.end method
