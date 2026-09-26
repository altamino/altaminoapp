.class public Lcom/narvii/widget/RankingTitleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/RankingTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/RankingTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x80000000

    iput p3, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->isAnimating:Z

    const/16 v1, 0x14

    iput v1, p0, Lcom/narvii/widget/RankingTitleView;->levelSize:I

    iput-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->showProgress:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/narvii/widget/RankingTitleView;->fakeProgressTimes:F

    iput-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->justGoFakeStart:Z

    iput p3, p0, Lcom/narvii/widget/RankingTitleView;->lastGetProgressRP:I

    iput p3, p0, Lcom/narvii/widget/RankingTitleView;->lastGetProgressMaxRP:I

    .line 4
    sget-object p3, Lcom/narvii/lib/R$styleable;->RankingTitleView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x4

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/RankingTitleView;->showBadge:Z

    const/4 p3, 0x5

    .line 6
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/RankingTitleView;->showReputation:Z

    const/4 p3, 0x2

    .line 7
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/RankingTitleView;->badgeSmall:Z

    const/4 p3, 0x7

    const/high16 v2, -0x40800000    # -1.0f

    .line 8
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/narvii/widget/RankingTitleView;->textSize:F

    const/4 p3, 0x3

    .line 9
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/narvii/widget/RankingTitleView;->progressHeight:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {p3, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/narvii/widget/RankingTitleView;->badgeHeight:I

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/RankingTitleView;->allowShowProgress:Z

    const/4 p3, 0x6

    const/high16 v1, 0x40200000    # 2.5f

    .line 12
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/narvii/widget/RankingTitleView;->textMinWidthTimes:F

    .line 13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-virtual {p0}, Lcom/narvii/widget/RankingTitleView;->layoutId()I

    move-result p2

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01a7

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/narvii/widget/RankingTitleView;->badge:Landroid/widget/ImageView;

    const p2, 0x7f0a01a8

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/narvii/widget/RankingTitleView;->badgeAnimate:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->badge:Landroid/widget/ImageView;

    iget-boolean p3, p0, Lcom/narvii/widget/RankingTitleView;->showBadge:Z

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    .line 17
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f0a0e51

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    .line 19
    instance-of p3, p2, Lcom/narvii/widget/AutoSizingTextView;

    if-nez p3, :cond_1

    iget p3, p0, Lcom/narvii/widget/RankingTitleView;->textSize:F

    cmpl-float v1, p3, v2

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    const p2, 0x7f0a0c4b

    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/widget/RankingTitleView;->role:Landroid/widget/TextView;

    const p2, 0x7f0a0b8d

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    iget p2, p0, Lcom/narvii/widget/RankingTitleView;->progressHeight:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/narvii/widget/RankingTitleView;->progressHeight:I

    .line 24
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    .line 25
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget p1, p0, Lcom/narvii/widget/RankingTitleView;->badgeHeight:I

    if-eq p1, p3, :cond_3

    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView;->badge:Landroid/widget/ImageView;

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/narvii/widget/RankingTitleView;->badgeHeight:I

    .line 27
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->badge:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x2710

    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/RankingTitleView;)Lcom/narvii/util/ranking/RankingService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/RankingTitleView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/widget/RankingTitleView;->isAnimating:Z

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/widget/RankingTitleView;III)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/RankingTitleView;->getDuration(III)I

    move-result p0

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/widget/RankingTitleView;FII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/RankingTitleView;->onProgressUpdate(FII)V

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/widget/RankingTitleView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/RankingTitleView;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/widget/RankingTitleView;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/RankingTitleView;->setUpIfFakeProgress(III)V

    return-void
.end method

.method private getDuration(III)I
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x1f4

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    return v0

    .line 6
    :cond_0
    sub-int/2addr p2, p1

    .line 7
    mul-int/2addr p2, v0

    .line 8
    div-int/2addr p2, p3

    .line 9
    add-int/2addr p2, v0

    .line 10
    .line 11
    const/16 p1, 0x226

    .line 12
    .line 13
    if-ge p2, p1, :cond_1

    .line 14
    return p1

    .line 15
    .line 16
    :cond_1
    const/16 p1, 0x3e8

    .line 17
    .line 18
    if-le p2, p1, :cond_2

    .line 19
    return p1

    .line 20
    :cond_2
    return p2
.end method

.method private getFakedProgress(F)F
    .locals 1

    iget v0, p0, Lcom/narvii/widget/RankingTitleView;->animRealStart:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/narvii/widget/RankingTitleView;->fakeProgressTimes:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/narvii/widget/RankingTitleView;->animFakeStart:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method public static getUserRole(Lcom/narvii/model/User;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/User;->isCurator()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/model/User;->isLeader()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/model/User;->roleName()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    :cond_2
    return-object v0
.end method

.method private onProgressUpdate(FII)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    goto :goto_2

    .line 10
    .line 11
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/widget/RankingTitleView;->showReputation:Z

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    float-to-int v2, p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget v2, p0, Lcom/narvii/widget/RankingTitleView;->levelSize:I

    .line 25
    .line 26
    if-ge p3, v2, :cond_1

    .line 27
    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v2, "/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p3

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    const-string p3, ""

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string p3, " REP"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p3}, Lcom/narvii/util/ranking/RankingService;->getTitle(I)Ljava/lang/CharSequence;

    .line 68
    move-result-object p3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    :goto_1
    iget p3, p0, Lcom/narvii/widget/RankingTitleView;->fakeProgressTimes:F

    .line 74
    .line 75
    const/high16 v0, 0x3f800000    # 1.0f

    .line 76
    .line 77
    cmpl-float p3, p3, v0

    .line 78
    .line 79
    if-eqz p3, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Lcom/narvii/widget/RankingTitleView;->getFakedProgress(F)F

    .line 83
    move-result p1

    .line 84
    .line 85
    :cond_3
    if-eqz p2, :cond_4

    .line 86
    .line 87
    iget-object p3, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/RankingTitleView;->getProgess(FI)I

    .line 91
    move-result p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 95
    :cond_4
    :goto_2
    return-void
.end method

.method private setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->badge:Landroid/widget/ImageView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget p1, p0, Lcom/narvii/widget/RankingTitleView;->badgeHeight:I

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget v0, p0, Lcom/narvii/widget/RankingTitleView;->badgeHeight:I

    .line 19
    int-to-float v0, v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    mul-float/2addr v0, v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 29
    move-result p1

    .line 30
    int-to-float p1, p1

    .line 31
    div-float/2addr v0, p1

    .line 32
    float-to-double v0, v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 36
    move-result-wide v0

    .line 37
    double-to-int p1, v0

    .line 38
    .line 39
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    .line 40
    int-to-float p1, p1

    .line 41
    .line 42
    iget v1, p0, Lcom/narvii/widget/RankingTitleView;->textMinWidthTimes:F

    .line 43
    mul-float/2addr p1, v1

    .line 44
    float-to-int p1, p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 48
    :cond_1
    return-void
.end method

.method private setUpIfFakeProgress(III)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/widget/RankingTitleView;->getLevelByReputation(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/RankingTitleView;->levelSize:I

    .line 7
    .line 8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_0
    sub-int v0, p2, p1

    .line 16
    int-to-float v0, v0

    .line 17
    .line 18
    mul-float v1, v0, v2

    .line 19
    int-to-float p3, p3

    .line 20
    div-float/2addr v1, p3

    .line 21
    .line 22
    .line 23
    const v3, 0x3dcccccd    # 0.1f

    .line 24
    .line 25
    cmpg-float v1, v1, v3

    .line 26
    .line 27
    if-gez v1, :cond_2

    .line 28
    .line 29
    if-eq p1, p2, :cond_2

    .line 30
    mul-float/2addr v3, p3

    .line 31
    .line 32
    div-float v0, v3, v0

    .line 33
    .line 34
    iput v0, p0, Lcom/narvii/widget/RankingTitleView;->fakeProgressTimes:F

    .line 35
    .line 36
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->animRealStart:I

    .line 37
    add-int/2addr p1, p2

    .line 38
    .line 39
    div-int/lit8 p1, p1, 0x2

    .line 40
    int-to-float p1, p1

    .line 41
    .line 42
    const/high16 p2, 0x40000000    # 2.0f

    .line 43
    div-float/2addr v3, p2

    .line 44
    sub-float/2addr p1, v3

    .line 45
    float-to-int p1, p1

    .line 46
    .line 47
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->animFakeStart:I

    .line 48
    .line 49
    if-gez p1, :cond_1

    .line 50
    const/4 p1, 0x0

    .line 51
    .line 52
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->animFakeStart:I

    .line 53
    .line 54
    :cond_1
    iget p1, p0, Lcom/narvii/widget/RankingTitleView;->animFakeStart:I

    .line 55
    int-to-float p1, p1

    .line 56
    .line 57
    .line 58
    const p2, 0x3f666666    # 0.9f

    .line 59
    mul-float/2addr p3, p2

    .line 60
    .line 61
    cmpl-float p1, p1, p3

    .line 62
    .line 63
    if-lez p1, :cond_3

    .line 64
    float-to-int p1, p3

    .line 65
    .line 66
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->animFakeStart:I

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_2
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->animFakeStart:I

    .line 70
    .line 71
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->animRealStart:I

    .line 72
    .line 73
    iput v2, p0, Lcom/narvii/widget/RankingTitleView;->fakeProgressTimes:F

    .line 74
    :cond_3
    :goto_0
    return-void

    .line 75
    .line 76
    :cond_4
    :goto_1
    iput v2, p0, Lcom/narvii/widget/RankingTitleView;->fakeProgressTimes:F

    .line 77
    return-void
.end method

.method private showNothing(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget p1, p1, Lcom/narvii/model/User;->level:I

    .line 6
    .line 7
    if-gtz p1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    move p1, v0

    .line 12
    .line 13
    :goto_1
    const-string v1, "ranking"

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    check-cast p2, Lcom/narvii/util/ranking/RankingService;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/narvii/util/ranking/RankingService;->getLevels()Ljava/util/List;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    if-eqz p2, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 31
    move-result p2

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move v0, p1

    .line 36
    :cond_3
    :goto_2
    return v0
.end method

.method private showRoleName(Lcom/narvii/model/User;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private updateReputation(IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->justGoFakeStart:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput p2, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/widget/RankingTitleView;->getLevelByReputation(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/narvii/widget/RankingTitleView;->getLevelByReputation(I)I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    .line 19
    if-ne v0, v1, :cond_3

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {p3, v0}, Lcom/narvii/widget/RankingTitleView$OnAnimListener;->onLevelChanged(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/widget/RankingTitleView;->getMaxReputation(I)I

    .line 28
    move-result v1

    .line 29
    .line 30
    new-array v2, v2, [F

    .line 31
    int-to-float v5, p1

    .line 32
    .line 33
    aput v5, v2, v4

    .line 34
    int-to-float v6, p2

    .line 35
    .line 36
    aput v6, v2, v3

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/widget/RankingTitleView;->getDuration(III)I

    .line 44
    move-result v6

    .line 45
    int-to-long v6, v6

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/widget/RankingTitleView;->setUpIfFakeProgress(III)V

    .line 52
    .line 53
    iget-boolean p1, p0, Lcom/narvii/widget/RankingTitleView;->justGoFakeStart:Z

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v5, v1, v0}, Lcom/narvii/widget/RankingTitleView;->onProgressUpdate(FII)V

    .line 59
    .line 60
    iput-boolean v4, p0, Lcom/narvii/widget/RankingTitleView;->justGoFakeStart:Z

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    new-instance p1, Lcom/narvii/widget/RankingTitleView$1;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p0, v1, v0}, Lcom/narvii/widget/RankingTitleView$1;-><init>(Lcom/narvii/widget/RankingTitleView;II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 70
    .line 71
    new-instance p1, Lcom/narvii/widget/RankingTitleView$2;

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, p0, p3}, Lcom/narvii/widget/RankingTitleView$2;-><init>(Lcom/narvii/widget/RankingTitleView;Lcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    .line 79
    iput-boolean v3, p0, Lcom/narvii/widget/RankingTitleView;->isAnimating:Z

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_3
    if-eqz p3, :cond_4

    .line 86
    .line 87
    .line 88
    invoke-interface {p3, v0}, Lcom/narvii/widget/RankingTitleView$OnAnimListener;->onLevelChanged(I)V

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-virtual {p0, v0}, Lcom/narvii/widget/RankingTitleView;->getMaxReputation(I)I

    .line 92
    move-result v5

    .line 93
    .line 94
    new-array v2, v2, [F

    .line 95
    int-to-float v6, p1

    .line 96
    .line 97
    aput v6, v2, v4

    .line 98
    int-to-float v7, v5

    .line 99
    .line 100
    aput v7, v2, v3

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 104
    move-result-object v2

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, p1, v5, v5}, Lcom/narvii/widget/RankingTitleView;->getDuration(III)I

    .line 108
    move-result v7

    .line 109
    int-to-long v7, v7

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, p1, v5, v5}, Lcom/narvii/widget/RankingTitleView;->setUpIfFakeProgress(III)V

    .line 116
    .line 117
    iget-boolean p1, p0, Lcom/narvii/widget/RankingTitleView;->justGoFakeStart:Z

    .line 118
    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v6, v5, v0}, Lcom/narvii/widget/RankingTitleView;->onProgressUpdate(FII)V

    .line 123
    .line 124
    iput-boolean v4, p0, Lcom/narvii/widget/RankingTitleView;->justGoFakeStart:Z

    .line 125
    goto :goto_0

    .line 126
    .line 127
    :cond_5
    new-instance p1, Lcom/narvii/widget/RankingTitleView$3;

    .line 128
    .line 129
    .line 130
    invoke-direct {p1, p0, v5, v0}, Lcom/narvii/widget/RankingTitleView$3;-><init>(Lcom/narvii/widget/RankingTitleView;II)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    .line 135
    new-instance p1, Lcom/narvii/widget/RankingTitleView$4;

    .line 136
    .line 137
    .line 138
    invoke-direct {p1, p0, v1, p3, p2}, Lcom/narvii/widget/RankingTitleView$4;-><init>(Lcom/narvii/widget/RankingTitleView;ILcom/narvii/widget/RankingTitleView$OnAnimListener;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 142
    .line 143
    iput-boolean v3, p0, Lcom/narvii/widget/RankingTitleView;->isAnimating:Z

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 147
    :goto_0
    return-void
.end method


# virtual methods
.method public earnRepuation(I)V
    .locals 2

    .line 1
    .line 2
    if-lez p1, :cond_1

    .line 3
    .line 4
    iget v0, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    .line 5
    .line 6
    const/high16 v1, -0x80000000

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    add-int/2addr p1, v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0, p1, v1}, Lcom/narvii/widget/RankingTitleView;->updateReputation(IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public getLevelByReputation(I)I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/util/ranking/RankingService;->getLevels()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/util/ranking/RankingService;->getLevels()Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Lcom/narvii/util/ranking/RankingLevel;

    .line 34
    .line 35
    iget v3, v2, Lcom/narvii/util/ranking/RankingLevel;->reputation:I

    .line 36
    .line 37
    if-lt p1, v3, :cond_0

    .line 38
    .line 39
    iget v1, v2, Lcom/narvii/util/ranking/RankingLevel;->level:I

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return v1
.end method

.method public getMaxReputation(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/RankingTitleView;->levelSize:I

    .line 7
    .line 8
    if-lt p1, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/util/ranking/RankingService;->getReputation(I)I

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/narvii/util/ranking/RankingService;->getReputation(I)I

    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method protected getOtherProgressDrawableId()I
    .locals 1

    const v0, 0x7f0808f0

    return v0
.end method

.method public getProgess(FI)I
    .locals 7

    .line 1
    float-to-int v0, p1

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/widget/RankingTitleView;->lastGetProgressRP:I

    .line 4
    .line 5
    iput p2, p0, Lcom/narvii/widget/RankingTitleView;->lastGetProgressMaxRP:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget v0, p0, Lcom/narvii/widget/RankingTitleView;->width:I

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    cmpl-float v2, p1, v0

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    const/high16 v3, 0x41200000    # 10.0f

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 30
    move-result v2

    .line 31
    .line 32
    iget-boolean v3, p0, Lcom/narvii/widget/RankingTitleView;->showBadge:Z

    .line 33
    .line 34
    const/high16 v4, 0x3f800000    # 1.0f

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    iget v3, p0, Lcom/narvii/widget/RankingTitleView;->badgeHeight:I

    .line 39
    int-to-float v3, v3

    .line 40
    sub-float/2addr v3, v2

    .line 41
    mul-float/2addr v3, v4

    .line 42
    .line 43
    iget v5, p0, Lcom/narvii/widget/RankingTitleView;->width:I

    .line 44
    int-to-float v5, v5

    .line 45
    sub-float/2addr v5, v2

    .line 46
    div-float/2addr v3, v5

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v3, v0

    .line 49
    .line 50
    :goto_0
    if-eqz p2, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/widget/RankingTitleView;->getProgressBarBorderSize()I

    .line 54
    move-result v1

    .line 55
    int-to-float v1, v1

    .line 56
    .line 57
    iget v5, p0, Lcom/narvii/widget/RankingTitleView;->width:I

    .line 58
    int-to-float v5, v5

    .line 59
    .line 60
    iget-boolean v6, p0, Lcom/narvii/widget/RankingTitleView;->showBadge:Z

    .line 61
    .line 62
    if-eqz v6, :cond_2

    .line 63
    move v0, v2

    .line 64
    :cond_2
    sub-float/2addr v5, v0

    .line 65
    div-float/2addr v1, v5

    .line 66
    sub-float/2addr v4, v1

    .line 67
    sub-float/2addr v4, v3

    .line 68
    int-to-float p2, p2

    .line 69
    div-float/2addr p1, p2

    .line 70
    mul-float/2addr v4, p1

    .line 71
    add-float/2addr v3, v4

    .line 72
    .line 73
    .line 74
    const p1, 0x461c4000    # 10000.0f

    .line 75
    mul-float/2addr v3, p1

    .line 76
    float-to-int v1, v3

    .line 77
    :cond_3
    :goto_1
    return v1
.end method

.method protected getProgressBarBorderSize()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 10
    move-result v0

    .line 11
    float-to-int v0, v0

    .line 12
    return v0
.end method

.method protected getProgressDrawableId()I
    .locals 1

    const v0, 0x7f0808f1

    return v0
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d078e

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iget p2, p0, Lcom/narvii/widget/RankingTitleView;->width:I

    .line 6
    .line 7
    if-eq p2, p1, :cond_0

    .line 8
    .line 9
    iget-boolean p2, p0, Lcom/narvii/widget/RankingTitleView;->isAnimating:Z

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    iget p2, p0, Lcom/narvii/widget/RankingTitleView;->lastGetProgressRP:I

    .line 14
    .line 15
    const/high16 p3, -0x80000000

    .line 16
    .line 17
    if-eq p2, p3, :cond_0

    .line 18
    .line 19
    iget-boolean p3, p0, Lcom/narvii/widget/RankingTitleView;->showProgress:Z

    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->width:I

    .line 24
    .line 25
    iget-object p3, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    .line 26
    .line 27
    if-eqz p3, :cond_0

    .line 28
    int-to-float p2, p2

    .line 29
    .line 30
    iget p4, p0, Lcom/narvii/widget/RankingTitleView;->lastGetProgressMaxRP:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2, p4}, Lcom/narvii/widget/RankingTitleView;->getProgess(FI)I

    .line 34
    move-result p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 38
    .line 39
    :cond_0
    iput p1, p0, Lcom/narvii/widget/RankingTitleView;->width:I

    .line 40
    return-void
.end method

.method public setOthersCanSeeProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/RankingTitleView;->othersCanSeeProgress:Z

    return-void
.end method

.method public setShowBadge(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/RankingTitleView;->showBadge:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->badge:Landroid/widget/ImageView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const/16 p1, 0x8

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
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

    .line 1
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

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    return-void
.end method

.method public setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V
    .locals 5

    iget-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget v0, p1, Lcom/narvii/model/User;->reputation:I

    iput v0, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/RankingTitleView;->showNothing(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    const-string v0, "ranking"

    .line 5
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ranking/RankingService;

    iput-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 6
    invoke-virtual {v0}, Lcom/narvii/util/ranking/RankingService;->getLevels()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/RankingTitleView;->levelSize:I

    iget-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/narvii/widget/RankingTitleView;->badgeSmall:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 8
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

    .line 9
    invoke-virtual {p0, p3}, Lcom/narvii/widget/RankingTitleView;->getLevelByReputation(I)I

    move-result v2

    iget-boolean v3, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    if-eqz v3, :cond_4

    move-object v2, v1

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Lcom/narvii/widget/RankingTitleView;->badgeSmall:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 10
    invoke-virtual {v3, v2}, Lcom/narvii/util/ranking/RankingService;->getBadgeSmall(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {v3, v2}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v2}, Lcom/narvii/widget/RankingTitleView;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_6
    invoke-direct {p0, p1}, Lcom/narvii/widget/RankingTitleView;->showRoleName(Lcom/narvii/model/User;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/narvii/widget/RankingTitleView;->showRoleName:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    .line 12
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->role:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->role:Landroid/widget/TextView;

    iget-boolean p3, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    if-eqz p3, :cond_7

    move-object p1, v1

    goto :goto_2

    .line 15
    :cond_7
    invoke-static {p1}, Lcom/narvii/widget/RankingTitleView;->getUserRole(Lcom/narvii/model/User;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView;->role:Landroid/widget/TextView;

    iget-boolean p2, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    if-eqz p2, :cond_8

    goto :goto_3

    .line 16
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f080278

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :cond_9
    iget-object v2, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    .line 17
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    .line 18
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/narvii/widget/RankingTitleView;->role:Landroid/widget/TextView;

    .line 19
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    if-eqz v2, :cond_a

    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    .line 20
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    .line 21
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_a
    const-string v1, "account"

    .line 22
    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 23
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iget-boolean v1, p0, Lcom/narvii/widget/RankingTitleView;->allowShowProgress:Z

    if-eqz v1, :cond_f

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/narvii/widget/RankingTitleView;->othersCanSeeProgress:Z

    if-eqz p2, :cond_f

    :cond_b
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/narvii/widget/RankingTitleView;->showProgress:Z

    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/widget/RankingTitleView;->getProgressDrawableId()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ne p3, v0, :cond_e

    if-ne p4, v0, :cond_e

    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    iget-boolean p3, p0, Lcom/narvii/widget/RankingTitleView;->showReputation:Z

    if-eqz p3, :cond_d

    .line 25
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

    .line 26
    iget p2, p1, Lcom/narvii/model/User;->level:I

    invoke-virtual {p0, p2}, Lcom/narvii/widget/RankingTitleView;->getMaxReputation(I)I

    move-result p2

    iget-object p3, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    .line 27
    iget p1, p1, Lcom/narvii/model/User;->reputation:I

    int-to-float p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/RankingTitleView;->getProgess(FI)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_6

    .line 28
    :cond_e
    invoke-direct {p0, p3, p4, p5}, Lcom/narvii/widget/RankingTitleView;->updateReputation(IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    goto :goto_6

    :cond_f
    iput-boolean v4, p0, Lcom/narvii/widget/RankingTitleView;->showProgress:Z

    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    .line 29
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->progressBar:Landroid/widget/ProgressBar;

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Lcom/narvii/widget/RankingTitleView;->getOtherProgressDrawableId()I

    move-result p4

    invoke-static {p3, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/narvii/widget/RankingTitleView;->rankingText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/narvii/widget/RankingTitleView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 31
    iget p1, p1, Lcom/narvii/model/User;->level:I

    invoke-virtual {p3, p1}, Lcom/narvii/util/ranking/RankingService;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-void
.end method

.method public toReputation(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/model/User;->reputation:I

    .line 3
    .line 4
    if-lez v0, :cond_3

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    .line 7
    .line 8
    const/high16 v2, -0x80000000

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/RankingTitleView;->showNothing(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/widget/RankingTitleView;->showRoleName(Lcom/narvii/model/User;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/narvii/widget/RankingTitleView;->showRoleName:Z

    .line 28
    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    iget p1, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    .line 33
    const/4 p2, 0x0

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/widget/RankingTitleView;->updateReputation(IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    .line 37
    return-void

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    .line 41
    :cond_3
    :goto_1
    return-void
.end method

.method public willToReputation(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/model/User;->reputation:I

    .line 3
    .line 4
    if-lez v0, :cond_2

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    .line 7
    .line 8
    const/high16 v2, -0x80000000

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/RankingTitleView;->showNothing(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Z

    .line 15
    move-result p2

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/widget/RankingTitleView;->showRoleName(Lcom/narvii/model/User;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    iget-boolean p2, p0, Lcom/narvii/widget/RankingTitleView;->showNothing:Z

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    iget-boolean p2, p0, Lcom/narvii/widget/RankingTitleView;->showRoleName:Z

    .line 28
    .line 29
    if-eq p2, p1, :cond_1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x1

    .line 32
    .line 33
    iput-boolean p1, p0, Lcom/narvii/widget/RankingTitleView;->justGoFakeStart:Z

    .line 34
    .line 35
    iget p1, p0, Lcom/narvii/widget/RankingTitleView;->currentReputation:I

    .line 36
    const/4 p2, 0x0

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/widget/RankingTitleView;->updateReputation(IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    .line 40
    :cond_2
    :goto_0
    return-void
.end method
