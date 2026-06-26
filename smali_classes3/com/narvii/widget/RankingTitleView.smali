.class public Lcom/narvii/widget/RankingTitleView;
.super Landroid/widget/FrameLayout;
.source "RankingTitleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/RankingTitleView$OnAnimListener;
    }
.end annotation


# static fields
.field private static final MAX_DURATION:I = 0x3e8

.field private static final MAX_PROGRESS:I = 0x2710

.field private static final MIN_DURATION:I = 0x1f4

.field private static final MIN_PROGRESS:F = 0.1f


# instance fields
.field protected allowShowProgress:Z

.field private animFakeStart:I

.field private animRealStart:I

.field badge:Landroid/widget/ImageView;

.field badgeAnimate:Landroid/widget/ImageView;

.field protected badgeHeight:I

.field protected badgeSmall:Z

.field private currentReputation:I

.field private fakeProgressTimes:F

.field private isAnimating:Z

.field private justGoFakeStart:Z

.field private lastGetProgressMaxRP:I

.field private lastGetProgressRP:I

.field levelSize:I

.field private othersCanSeeProgress:Z

.field progressBar:Landroid/widget/ProgressBar;

.field protected progressHeight:I

.field private rankingService:Lcom/narvii/util/ranking/RankingService;

.field rankingText:Landroid/widget/TextView;

.field role:Landroid/widget/TextView;

.field protected showBadge:Z

.field showNothing:Z

.field private showProgress:Z

.field protected showReputation:Z

.field showRoleName:Z

.field private textMinWidthTimes:F

.field protected textSize:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/RankingTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/RankingTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x80000000

    .line 54
    iput p3, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->isAnimating:Z

    const/16 v1, 0x14

    .line 68
    iput v1, p0, Lcom/narvii/widget/RankingTitleView;->levelSize:I

    .line 70
    iput-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->showProgress:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 74
    iput v1, p0, Lcom/narvii/widget/RankingTitleView;->fakeProgressTimes:F

    .line 75
    iput-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->justGoFakeStart:Z

    .line 77
    iput p3, p0, Lcom/narvii/widget/RankingTitleView;->lastGetProgressRP:I

    .line 78
    iput p3, p0, Lcom/narvii/widget/RankingTitleView;->lastGetProgressMaxRP:I

    .line 91
    sget-object p3, Lcom/narvii/lib/R$styleable;->RankingTitleView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v1, 0x4

    .line 93
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/widget/RankingTitleView;->showBadge:Z

    const/4 v1, 0x5

    .line 94
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/widget/RankingTitleView;->showReputation:Z

    const/4 v1, 0x2

    .line 95
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/widget/RankingTitleView;->badgeSmall:Z

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x7

    .line 96
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/narvii/widget/RankingTitleView;->textSize:F

    const/4 v2, 0x3

    .line 97
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/narvii/widget/RankingTitleView;->progressHeight:I

    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/narvii/widget/RankingTitleView;->badgeHeight:I

    .line 99
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/RankingTitleView;->allowShowProgress:Z

    const/4 p3, 0x6

    const/high16 v2, 0x40200000    # 2.5f

    .line 100
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/narvii/widget/RankingTitleView;->textMinWidthTimes:F

    .line 101
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-virtual {p0}, Lcom/narvii/widget/RankingTitleView;->layoutId()I

    move-result p2

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090115

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/narvii/widget/RankingTitleView;->badge:Landroid/widget/ImageView;

    const p2, 0x7f090116

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/narvii/widget/RankingTitleView;->badgeAnimate:Landroid/widget/ImageView;

    .line 106
    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->badge:Landroid/widget/ImageView;

    iget-boolean p3, p0, Lcom/narvii/widget/RankingTitleView;->showBadge:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f090b5b

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    .line 109
    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    instance-of p3, p2, Lcom/narvii/widget/AutoSizingTextView;

    if-nez p3, :cond_1

    iget p3, p0, Lcom/narvii/widget/RankingTitleView;->textSize:F

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    const p2, 0x7f09098a

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/widget/RankingTitleView;->role:Landroid/widget/TextView;

    const p2, 0x7f0908cc

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    .line 114
    iget p1, p0, Lcom/narvii/widget/RankingTitleView;->progressHeight:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 115
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 116
    iget p3, p0, Lcom/narvii/widget/RankingTitleView;->progressHeight:I

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    iget-object p3, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    :cond_2
    iget p1, p0, Lcom/narvii/widget/RankingTitleView;->badgeHeight:I

    if-eq p1, p2, :cond_3

    .line 121
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView;->badge:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 122
    iget p2, p0, Lcom/narvii/widget/RankingTitleView;->badgeHeight:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->badge:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x2710

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/RankingTitleView;FII)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/RankingTitleView;->onProgressUpdate(FII)V

    return-void
.end method

.method static synthetic access$102(Lcom/narvii/widget/RankingTitleView;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/narvii/widget/RankingTitleView;->isAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/widget/RankingTitleView;)Lcom/narvii/util/ranking/RankingService;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/widget/RankingTitleView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/narvii/widget/RankingTitleView;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/widget/RankingTitleView;III)I
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/RankingTitleView;->getDuration(III)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/widget/RankingTitleView;III)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/RankingTitleView;->setUpIfFakeProgress(III)V

    return-void
.end method

.method private getDuration(III)I
    .locals 1

    const/16 v0, 0x1f4

    if-nez p3, :cond_0

    return v0

    :cond_0
    sub-int/2addr p2, p1

    mul-int/lit16 p2, p2, 0x1f4

    .line 316
    div-int/2addr p2, p3

    add-int/2addr p2, v0

    const/16 p1, 0x226

    const/16 p3, 0x3e8

    if-ge p2, p1, :cond_1

    return p1

    :cond_1
    if-le p2, p3, :cond_2

    return p3

    :cond_2
    return p2
.end method

.method private getFakedProgress(F)F
    .locals 1

    .line 509
    iget v0, p0, Lcom/narvii/widget/RankingTitleView;->animRealStart:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/narvii/widget/RankingTitleView;->fakeProgressTimes:F

    mul-float p1, p1, v0

    iget v0, p0, Lcom/narvii/widget/RankingTitleView;->animFakeStart:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method public static getUserRole(Lcom/narvii/model/User;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    .line 538
    invoke-virtual {p0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 539
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/model/User;->roleName()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private onProgressUpdate(FII)V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    goto :goto_2

    .line 472
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/widget/RankingTitleView;->showReputation:Z

    if-eqz v1, :cond_2

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/widget/RankingTitleView;->levelSize:I

    if-ge p3, v2, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " REP"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 475
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {v1, p3}, Lcom/narvii/util/ranking/RankingService;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    :goto_1
    iget p3, p0, Lcom/narvii/widget/RankingTitleView;->fakeProgressTimes:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_3

    .line 478
    invoke-direct {p0, p1}, Lcom/narvii/widget/RankingTitleView;->getFakedProgress(F)F

    move-result p1

    :cond_3
    if-eqz p2, :cond_4

    .line 481
    iget-object p3, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/RankingTitleView;->getProgess(FI)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->badge:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 206
    iget p1, p0, Lcom/narvii/widget/RankingTitleView;->badgeHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/narvii/widget/RankingTitleView;->badgeHeight:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    int-to-float p1, p1

    iget v1, p0, Lcom/narvii/widget/RankingTitleView;->textMinWidthTimes:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_1
    return-void
.end method

.method private setUpIfFakeProgress(III)V
    .locals 4

    .line 487
    invoke-virtual {p0, p1}, Lcom/narvii/widget/RankingTitleView;->getLevelByReputation(I)I

    move-result v0

    iget v1, p0, Lcom/narvii/widget/RankingTitleView;->levelSize:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float v1, v0, v2

    int-to-float p3, p3

    div-float/2addr v1, p3

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    if-eq p1, p2, :cond_2

    mul-float v3, v3, p3

    div-float v0, v3, v0

    .line 492
    iput v0, p0, Lcom/narvii/widget/RankingTitleView;->fakeProgressTimes:F

    .line 493
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->animRealStart:I

    add-int/2addr p1, p2

    .line 494
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v3, p2

    sub-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->animFakeStart:I

    .line 495
    iget p1, p0, Lcom/narvii/widget/RankingTitleView;->animFakeStart:I

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 496
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->animFakeStart:I

    .line 498
    :cond_1
    iget p1, p0, Lcom/narvii/widget/RankingTitleView;->animFakeStart:I

    int-to-float p1, p1

    const p2, 0x3f666666    # 0.9f

    mul-float p3, p3, p2

    cmpl-float p1, p1, p3

    if-lez p1, :cond_3

    float-to-int p1, p3

    .line 499
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->animFakeStart:I

    goto :goto_0

    .line 502
    :cond_2
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->animFakeStart:I

    .line 503
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->animRealStart:I

    .line 504
    iput v2, p0, Lcom/narvii/widget/RankingTitleView;->fakeProgressTimes:F

    :cond_3
    :goto_0
    return-void

    .line 488
    :cond_4
    :goto_1
    iput v2, p0, Lcom/narvii/widget/RankingTitleView;->fakeProgressTimes:F

    return-void
.end method

.method private showNothing(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 214
    iget p1, p1, Lcom/narvii/model/User;->level:I

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v1, "ranking"

    .line 218
    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/ranking/RankingService;

    iput-object p2, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 219
    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {p2}, Lcom/narvii/util/ranking/RankingService;->getLevels()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 221
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const/4 p1, 0x1

    :cond_3
    return p1
.end method

.method private showRoleName(Lcom/narvii/model/User;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private updateReputation(IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V
    .locals 9

    .line 343
    iget-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->justGoFakeStart:Z

    if-nez v0, :cond_0

    .line 344
    iput p2, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    .line 347
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/widget/RankingTitleView;->getLevelByReputation(I)I

    move-result v0

    .line 348
    invoke-virtual {p0, p2}, Lcom/narvii/widget/RankingTitleView;->getLevelByReputation(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    if-eqz p3, :cond_1

    .line 351
    invoke-interface {p3, v0}, Lcom/narvii/widget/RankingTitleView$OnAnimListener;->onLevelChanged(I)V

    .line 353
    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/widget/RankingTitleView;->getMaxReputation(I)I

    move-result v1

    new-array v2, v2, [F

    int-to-float v5, p1

    aput v5, v2, v4

    int-to-float v6, p2

    aput v6, v2, v3

    .line 354
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 355
    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/widget/RankingTitleView;->getDuration(III)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 356
    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/widget/RankingTitleView;->setUpIfFakeProgress(III)V

    .line 357
    iget-boolean p1, p0, Lcom/narvii/widget/RankingTitleView;->justGoFakeStart:Z

    if-eqz p1, :cond_2

    .line 358
    invoke-direct {p0, v5, v1, v0}, Lcom/narvii/widget/RankingTitleView;->onProgressUpdate(FII)V

    .line 359
    iput-boolean v4, p0, Lcom/narvii/widget/RankingTitleView;->justGoFakeStart:Z

    goto :goto_0

    .line 361
    :cond_2
    new-instance p1, Lcom/narvii/widget/RankingTitleView$1;

    invoke-direct {p1, p0, v1, v0}, Lcom/narvii/widget/RankingTitleView$1;-><init>(Lcom/narvii/widget/RankingTitleView;II)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 367
    new-instance p1, Lcom/narvii/widget/RankingTitleView$2;

    invoke-direct {p1, p0, p3}, Lcom/narvii/widget/RankingTitleView$2;-><init>(Lcom/narvii/widget/RankingTitleView;Lcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    iput-boolean v3, p0, Lcom/narvii/widget/RankingTitleView;->isAnimating:Z

    .line 378
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 382
    invoke-interface {p3, v0}, Lcom/narvii/widget/RankingTitleView$OnAnimListener;->onLevelChanged(I)V

    .line 384
    :cond_4
    invoke-virtual {p0, v0}, Lcom/narvii/widget/RankingTitleView;->getMaxReputation(I)I

    move-result v5

    new-array v2, v2, [F

    int-to-float v6, p1

    aput v6, v2, v4

    int-to-float v7, v5

    aput v7, v2, v3

    .line 385
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 386
    invoke-direct {p0, p1, v5, v5}, Lcom/narvii/widget/RankingTitleView;->getDuration(III)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 387
    invoke-direct {p0, p1, v5, v5}, Lcom/narvii/widget/RankingTitleView;->setUpIfFakeProgress(III)V

    .line 388
    iget-boolean p1, p0, Lcom/narvii/widget/RankingTitleView;->justGoFakeStart:Z

    if-eqz p1, :cond_5

    .line 389
    invoke-direct {p0, v6, v5, v0}, Lcom/narvii/widget/RankingTitleView;->onProgressUpdate(FII)V

    .line 390
    iput-boolean v4, p0, Lcom/narvii/widget/RankingTitleView;->justGoFakeStart:Z

    goto :goto_0

    .line 392
    :cond_5
    new-instance p1, Lcom/narvii/widget/RankingTitleView$3;

    invoke-direct {p1, p0, v5, v0}, Lcom/narvii/widget/RankingTitleView$3;-><init>(Lcom/narvii/widget/RankingTitleView;II)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 398
    new-instance p1, Lcom/narvii/widget/RankingTitleView$4;

    invoke-direct {p1, p0, v1, p3, p2}, Lcom/narvii/widget/RankingTitleView$4;-><init>(Lcom/narvii/widget/RankingTitleView;ILcom/narvii/widget/RankingTitleView$OnAnimListener;I)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 460
    iput-boolean v3, p0, Lcom/narvii/widget/RankingTitleView;->isAnimating:Z

    .line 461
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method


# virtual methods
.method public earnRepuation(I)V
    .locals 2

    if-lez p1, :cond_1

    .line 292
    iget v0, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    const/4 v1, 0x0

    .line 295
    invoke-direct {p0, v0, p1, v1}, Lcom/narvii/widget/RankingTitleView;->updateReputation(IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getLevelByReputation(I)I
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/util/ranking/RankingService;->getLevels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {v0}, Lcom/narvii/util/ranking/RankingService;->getLevels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/ranking/RankingLevel;

    .line 176
    iget v3, v2, Lcom/narvii/util/ranking/RankingLevel;->reputation:I

    if-lt p1, v3, :cond_0

    .line 177
    iget v1, v2, Lcom/narvii/util/ranking/RankingLevel;->level:I

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getMaxReputation(I)I
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    if-eqz v0, :cond_1

    .line 188
    iget v1, p0, Lcom/narvii/widget/RankingTitleView;->levelSize:I

    if-lt p1, v1, :cond_0

    .line 189
    invoke-virtual {v0, v1}, Lcom/narvii/util/ranking/RankingService;->getReputation(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 191
    invoke-virtual {v0, p1}, Lcom/narvii/util/ranking/RankingService;->getReputation(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected getOtherProgressDrawableId()I
    .locals 1

    const v0, 0x7f0806f4

    return v0
.end method

.method public getProgess(FI)I
    .locals 7

    float-to-int v0, p1

    .line 154
    iput v0, p0, Lcom/narvii/widget/RankingTitleView;->lastGetProgressRP:I

    .line 155
    iput p2, p0, Lcom/narvii/widget/RankingTitleView;->lastGetProgressMaxRP:I

    .line 156
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/narvii/widget/RankingTitleView;->width:I

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    .line 161
    iget-boolean v3, p0, Lcom/narvii/widget/RankingTitleView;->showBadge:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    .line 162
    iget v3, p0, Lcom/narvii/widget/RankingTitleView;->badgeHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    mul-float v3, v3, v4

    iget v5, p0, Lcom/narvii/widget/RankingTitleView;->width:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    div-float/2addr v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/narvii/widget/RankingTitleView;->getProgressBarBorderSize()I

    move-result v1

    int-to-float v1, v1

    iget v5, p0, Lcom/narvii/widget/RankingTitleView;->width:I

    int-to-float v5, v5

    iget-boolean v6, p0, Lcom/narvii/widget/RankingTitleView;->showBadge:Z

    if-eqz v6, :cond_2

    move v0, v2

    :cond_2
    sub-float/2addr v5, v0

    div-float/2addr v1, v5

    sub-float/2addr v4, v1

    sub-float/2addr v4, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    const p1, 0x461c4000    # 10000.0f

    mul-float v3, v3, p1

    float-to-int v1, v3

    :cond_3
    :goto_1
    return v1
.end method

.method protected getProgressBarBorderSize()I
    .locals 2

    .line 142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getProgressDrawableId()I
    .locals 1

    const v0, 0x7f0806f5

    return v0
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b06da

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 523
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 524
    iget p2, p0, Lcom/narvii/widget/RankingTitleView;->width:I

    if-eq p2, p1, :cond_0

    iget-boolean p2, p0, Lcom/narvii/widget/RankingTitleView;->isAnimating:Z

    if-nez p2, :cond_0

    iget p2, p0, Lcom/narvii/widget/RankingTitleView;->lastGetProgressRP:I

    const/high16 p3, -0x80000000

    if-eq p2, p3, :cond_0

    iget-boolean p3, p0, Lcom/narvii/widget/RankingTitleView;->showProgress:Z

    if-eqz p3, :cond_0

    .line 525
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->width:I

    .line 526
    iget-object p3, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p3, :cond_0

    int-to-float p2, p2

    .line 527
    iget p4, p0, Lcom/narvii/widget/RankingTitleView;->lastGetProgressMaxRP:I

    invoke-virtual {p0, p2, p4}, Lcom/narvii/widget/RankingTitleView;->getProgess(FI)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 530
    :cond_0
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->width:I

    return-void
.end method

.method public setOthersCanSeeProgress(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/narvii/widget/RankingTitleView;->othersCanSeeProgress:Z

    return-void
.end method

.method public setShowBadge(Z)V
    .locals 1

    .line 133
    iput-boolean p1, p0, Lcom/narvii/widget/RankingTitleView;->showBadge:Z

    .line 134
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->badge:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V
    .locals 6

    const/high16 v3, -0x80000000

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 146
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    return-void
.end method

.method public setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 150
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    return-void
.end method

.method public setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V
    .locals 5

    .line 233
    iget-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 238
    iget v0, p1, Lcom/narvii/model/User;->reputation:I

    iput v0, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    .line 241
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/RankingTitleView;->showNothing(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    const-string v0, "ranking"

    .line 243
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ranking/RankingService;

    iput-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 244
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {v0}, Lcom/narvii/util/ranking/RankingService;->getLevels()Ljava/util/List;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/RankingTitleView;->levelSize:I

    .line 247
    iget-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->badgeSmall:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    iget v2, p1, Lcom/narvii/model/User;->level:I

    invoke-virtual {v0, v2}, Lcom/narvii/util/ranking/RankingService;->getBadgeSmall(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    iget v2, p1, Lcom/narvii/model/User;->level:I

    invoke-virtual {v0, v2}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/narvii/widget/RankingTitleView;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_6

    .line 249
    invoke-virtual {p0, p3}, Lcom/narvii/widget/RankingTitleView;->getLevelByReputation(I)I

    move-result v2

    .line 250
    iget-boolean v3, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    if-eqz v3, :cond_4

    move-object v2, v1

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Lcom/narvii/widget/RankingTitleView;->badgeSmall:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {v3, v2}, Lcom/narvii/util/ranking/RankingService;->getBadgeSmall(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {v3, v2}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v2}, Lcom/narvii/widget/RankingTitleView;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :cond_6
    invoke-direct {p0, p1}, Lcom/narvii/widget/RankingTitleView;->showRoleName(Lcom/narvii/model/User;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/narvii/widget/RankingTitleView;->showRoleName:Z

    .line 254
    iget-boolean v2, p0, Lcom/narvii/widget/RankingTitleView;->showRoleName:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    .line 255
    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 256
    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->role:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->role:Landroid/widget/TextView;

    iget-boolean p3, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    if-eqz p3, :cond_7

    move-object p1, v1

    goto :goto_2

    :cond_7
    invoke-static {p1}, Lcom/narvii/widget/RankingTitleView;->getUserRole(Lcom/narvii/model/User;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView;->role:Landroid/widget/TextView;

    iget-boolean p2, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0801ec

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 261
    :cond_9
    iget-object v2, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 262
    iget-object v2, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v2, p0, Lcom/narvii/widget/RankingTitleView;->role:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-boolean v2, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    if-eqz v2, :cond_a

    .line 265
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_a
    const-string v1, "account"

    .line 268
    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 269
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 271
    iget-boolean v1, p0, Lcom/narvii/widget/RankingTitleView;->allowShowProgress:Z

    if-eqz v1, :cond_f

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/narvii/widget/RankingTitleView;->othersCanSeeProgress:Z

    if-eqz p2, :cond_f

    :cond_b
    const/4 p2, 0x1

    .line 272
    iput-boolean p2, p0, Lcom/narvii/widget/RankingTitleView;->showProgress:Z

    .line 273
    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/widget/RankingTitleView;->getProgressDrawableId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ne p3, v0, :cond_e

    if-ne p4, v0, :cond_e

    .line 275
    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    iget-boolean p3, p0, Lcom/narvii/widget/RankingTitleView;->showReputation:Z

    if-eqz p3, :cond_d

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget p4, p1, Lcom/narvii/model/User;->reputation:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p4, p1, Lcom/narvii/model/User;->level:I

    iget p5, p0, Lcom/narvii/widget/RankingTitleView;->levelSize:I

    if-ge p4, p5, :cond_c

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p1, Lcom/narvii/model/User;->level:I

    invoke-virtual {p0, p5}, Lcom/narvii/widget/RankingTitleView;->getMaxReputation(I)I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_4

    :cond_c
    const-string p4, ""

    :goto_4
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " REP"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_5

    :cond_d
    iget-object p3, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    iget p4, p1, Lcom/narvii/model/User;->level:I

    invoke-virtual {p3, p4}, Lcom/narvii/util/ranking/RankingService;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object p3

    :goto_5
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget p2, p1, Lcom/narvii/model/User;->level:I

    invoke-virtual {p0, p2}, Lcom/narvii/widget/RankingTitleView;->getMaxReputation(I)I

    move-result p2

    .line 277
    iget-object p3, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    iget p1, p1, Lcom/narvii/model/User;->reputation:I

    int-to-float p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/RankingTitleView;->getProgess(FI)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_6

    .line 279
    :cond_e
    invoke-direct {p0, p3, p4, p5}, Lcom/narvii/widget/RankingTitleView;->updateReputation(IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    goto :goto_6

    .line 282
    :cond_f
    iput-boolean v4, p0, Lcom/narvii/widget/RankingTitleView;->showProgress:Z

    .line 283
    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 284
    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Lcom/narvii/widget/RankingTitleView;->getOtherProgressDrawableId()I

    move-result p4

    invoke-static {p3, p4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    iget p1, p1, Lcom/narvii/model/User;->level:I

    invoke-virtual {p3, p1}, Lcom/narvii/util/ranking/RankingService;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-void
.end method

.method public toReputation(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 299
    iget v0, p1, Lcom/narvii/model/User;->reputation:I

    if-lez v0, :cond_3

    .line 300
    iget v1, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 303
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/RankingTitleView;->showNothing(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Z

    move-result v1

    .line 304
    invoke-direct {p0, p1}, Lcom/narvii/widget/RankingTitleView;->showRoleName(Lcom/narvii/model/User;)Z

    move-result v2

    if-nez v1, :cond_2

    .line 305
    iget-boolean v1, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/narvii/widget/RankingTitleView;->showRoleName:Z

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 309
    :cond_1
    iget p1, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/widget/RankingTitleView;->updateReputation(IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    return-void

    .line 306
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public willToReputation(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 329
    iget v0, p1, Lcom/narvii/model/User;->reputation:I

    if-lez v0, :cond_2

    .line 330
    iget v1, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/RankingTitleView;->showNothing(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Z

    move-result p2

    .line 334
    invoke-direct {p0, p1}, Lcom/narvii/widget/RankingTitleView;->showRoleName(Lcom/narvii/model/User;)Z

    move-result p1

    if-nez p2, :cond_2

    .line 335
    iget-boolean p2, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/narvii/widget/RankingTitleView;->showRoleName:Z

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 338
    iput-boolean p1, p0, Lcom/narvii/widget/RankingTitleView;->justGoFakeStart:Z

    .line 339
    iget p1, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/widget/RankingTitleView;->updateReputation(IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    :cond_2
    :goto_0
    return-void
.end method
