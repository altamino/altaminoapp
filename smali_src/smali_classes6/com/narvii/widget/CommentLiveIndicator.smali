.class public Lcom/narvii/widget/CommentLiveIndicator;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final DOT_ALPHA_STEP_DURATION:I = 0x190

.field private static final DOT_COUNT:I = 0x4


# instance fields
.field animatorSet:Landroid/animation/AnimatorSet;

.field private dot1:Landroid/view/View;

.field private dot2:Landroid/view/View;

.field private dot3:Landroid/view/View;

.field private dot4:Landroid/view/View;

.field private dotList:[Landroid/view/View;

.field private indicator0:Landroid/widget/ImageView;

.field private indicator1:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/CommentLiveIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d04ef

    .line 3
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-direct {p0}, Lcom/narvii/widget/CommentLiveIndicator;->initView()V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/CommentLiveIndicator;)[Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/CommentLiveIndicator;->dotList:[Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/CommentLiveIndicator;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/CommentLiveIndicator;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator1:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/widget/CommentLiveIndicator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/CommentLiveIndicator;->initViews()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0715

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroid/widget/ImageView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator0:Landroid/widget/ImageView;

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0716

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator1:Landroid/view/View;

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a0455

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot1:Landroid/view/View;

    .line 30
    .line 31
    .line 32
    const v0, 0x7f0a0456

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot2:Landroid/view/View;

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a0457

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot3:Landroid/view/View;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0458

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot4:Landroid/view/View;

    .line 57
    const/4 v1, 0x4

    .line 58
    .line 59
    new-array v1, v1, [Landroid/view/View;

    .line 60
    .line 61
    iput-object v1, p0, Lcom/narvii/widget/CommentLiveIndicator;->dotList:[Landroid/view/View;

    .line 62
    const/4 v2, 0x0

    .line 63
    .line 64
    iget-object v3, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot1:Landroid/view/View;

    .line 65
    .line 66
    aput-object v3, v1, v2

    .line 67
    const/4 v2, 0x1

    .line 68
    .line 69
    iget-object v3, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot2:Landroid/view/View;

    .line 70
    .line 71
    aput-object v3, v1, v2

    .line 72
    const/4 v2, 0x2

    .line 73
    .line 74
    iget-object v3, p0, Lcom/narvii/widget/CommentLiveIndicator;->dot3:Landroid/view/View;

    .line 75
    .line 76
    aput-object v3, v1, v2

    .line 77
    const/4 v2, 0x3

    .line 78
    .line 79
    aput-object v0, v1, v2

    .line 80
    return-void
.end method

.method private initViews()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator0:Landroid/widget/ImageView;

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator1:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/CommentLiveIndicator;->dotList:[Landroid/view/View;

    .line 15
    array-length v3, v2

    .line 16
    .line 17
    if-ge v0, v3, :cond_0

    .line 18
    .line 19
    aget-object v2, v2, v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/widget/CommentLiveIndicator;->dotList:[Landroid/view/View;

    .line 25
    .line 26
    aget-object v2, v2, v0

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public endAnimation()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 16
    :cond_0
    return-void
.end method

.method getDotAnimation()Landroid/animation/AnimatorSet;
    .locals 10

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    const/4 v3, 0x4

    .line 9
    .line 10
    if-ge v2, v3, :cond_3

    .line 11
    .line 12
    iget-object v4, p0, Lcom/narvii/widget/CommentLiveIndicator;->dotList:[Landroid/view/View;

    .line 13
    .line 14
    aget-object v4, v4, v2

    .line 15
    .line 16
    new-array v4, v3, [F

    .line 17
    .line 18
    new-array v5, v3, [F

    .line 19
    move v6, v1

    .line 20
    .line 21
    :goto_1
    if-ge v6, v3, :cond_2

    .line 22
    .line 23
    const/high16 v7, 0x3f800000    # 1.0f

    .line 24
    .line 25
    const/high16 v8, 0x3e800000    # 0.25f

    .line 26
    .line 27
    if-le v6, v2, :cond_0

    .line 28
    .line 29
    sub-int v9, v6, v2

    .line 30
    int-to-float v9, v9

    .line 31
    mul-float/2addr v9, v8

    .line 32
    goto :goto_2

    .line 33
    .line 34
    :cond_0
    sub-int v9, v2, v6

    .line 35
    int-to-float v9, v9

    .line 36
    mul-float/2addr v9, v8

    .line 37
    .line 38
    sub-float v9, v7, v9

    .line 39
    .line 40
    :goto_2
    aput v9, v4, v6

    .line 41
    .line 42
    if-lt v6, v2, :cond_1

    .line 43
    .line 44
    sub-int v7, v6, v2

    .line 45
    int-to-float v7, v7

    .line 46
    mul-float/2addr v7, v8

    .line 47
    add-float/2addr v8, v7

    .line 48
    goto :goto_3

    .line 49
    .line 50
    :cond_1
    sub-int v9, v2, v6

    .line 51
    .line 52
    add-int/lit8 v9, v9, -0x1

    .line 53
    int-to-float v9, v9

    .line 54
    mul-float/2addr v9, v8

    .line 55
    .line 56
    sub-float v8, v7, v9

    .line 57
    .line 58
    :goto_3
    aput v8, v5, v6

    .line 59
    .line 60
    add-int/lit8 v6, v6, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 v3, 0x2

    .line 63
    .line 64
    new-array v3, v3, [F

    .line 65
    .line 66
    .line 67
    fill-array-data v3, :array_0

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    new-instance v6, Lcom/narvii/widget/CommentLiveIndicator$6;

    .line 74
    .line 75
    .line 76
    invoke-direct {v6, p0, v5, v4}, Lcom/narvii/widget/CommentLiveIndicator$6;-><init>(Lcom/narvii/widget/CommentLiveIndicator;[F[F)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    .line 81
    const-wide/16 v4, 0x190

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_3
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 93
    .line 94
    .line 95
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 99
    return-object v1

    .line 100
    nop

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getDotsPreviewAnimators()Landroid/animation/AnimatorSet;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    const/4 v2, 0x4

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/narvii/widget/CommentLiveIndicator;->dotList:[Landroid/view/View;

    .line 12
    .line 13
    aget-object v2, v2, v1

    .line 14
    const/4 v3, 0x2

    .line 15
    .line 16
    new-array v3, v3, [F

    .line 17
    .line 18
    .line 19
    fill-array-data v3, :array_0

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    const-wide/16 v4, 0x190

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    new-instance v4, Lcom/narvii/widget/CommentLiveIndicator$4;

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, p0, v2}, Lcom/narvii/widget/CommentLiveIndicator$4;-><init>(Lcom/narvii/widget/CommentLiveIndicator;Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 37
    .line 38
    new-instance v4, Lcom/narvii/widget/CommentLiveIndicator$5;

    .line 39
    .line 40
    .line 41
    invoke-direct {v4, p0, v1, v2}, Lcom/narvii/widget/CommentLiveIndicator$5;-><init>(Lcom/narvii/widget/CommentLiveIndicator;ILandroid/view/View;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 59
    return-object v1

    .line 60
    nop

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getIndi0ScaleAnimator()Landroid/animation/Animator;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator0:Landroid/widget/ImageView;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    new-array v2, v1, [F

    .line 6
    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    const-string v3, "scaleX"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator0:Landroid/widget/ImageView;

    .line 17
    .line 18
    new-array v3, v1, [F

    .line 19
    .line 20
    .line 21
    fill-array-data v3, :array_1

    .line 22
    .line 23
    const-string v4, "scaleY"

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 33
    .line 34
    const-wide/16 v4, 0x32

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 38
    const/4 v4, 0x0

    .line 39
    .line 40
    new-array v5, v4, [Landroid/animation/Animator;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 44
    .line 45
    new-array v1, v1, [Landroid/animation/Animator;

    .line 46
    .line 47
    aput-object v0, v1, v4

    .line 48
    const/4 v4, 0x1

    .line 49
    .line 50
    aput-object v2, v1, v4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 54
    .line 55
    new-instance v1, Lcom/narvii/widget/CommentLiveIndicator$2;

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/narvii/widget/CommentLiveIndicator$2;-><init>(Lcom/narvii/widget/CommentLiveIndicator;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    return-object v3

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getIndi1ScaleAnimator()Landroid/animation/Animator;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator1:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator0:Landroid/widget/ImageView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    const/high16 v2, 0x41d80000    # 27.0f

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 41
    move-result v0

    .line 42
    float-to-int v0, v0

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator0:Landroid/widget/ImageView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 49
    move-result v0

    .line 50
    .line 51
    :goto_1
    iget-object v2, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator1:Landroid/view/View;

    .line 52
    int-to-float v0, v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotY(F)V

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator1:Landroid/view/View;

    .line 58
    const/4 v2, 0x2

    .line 59
    .line 60
    new-array v3, v2, [F

    .line 61
    .line 62
    .line 63
    fill-array-data v3, :array_0

    .line 64
    .line 65
    const-string v4, "scaleX"

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    iget-object v3, p0, Lcom/narvii/widget/CommentLiveIndicator;->indicator1:Landroid/view/View;

    .line 72
    .line 73
    new-array v4, v2, [F

    .line 74
    .line 75
    .line 76
    fill-array-data v4, :array_1

    .line 77
    .line 78
    const-string v5, "scaleY"

    .line 79
    .line 80
    .line 81
    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 85
    .line 86
    .line 87
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 88
    .line 89
    const-wide/16 v5, 0xc8

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 93
    .line 94
    const-wide/16 v5, 0x32

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 98
    .line 99
    new-array v2, v2, [Landroid/animation/Animator;

    .line 100
    const/4 v5, 0x0

    .line 101
    .line 102
    aput-object v0, v2, v5

    .line 103
    .line 104
    aput-object v3, v2, v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 108
    .line 109
    new-instance v1, Lcom/narvii/widget/CommentLiveIndicator$3;

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, p0}, Lcom/narvii/widget/CommentLiveIndicator$3;-><init>(Lcom/narvii/widget/CommentLiveIndicator;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 116
    return-object v4

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4
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
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 11
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/CommentLiveIndicator;->initView()V

    .line 7
    return-void
.end method

.method public startAnimation()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/narvii/widget/CommentLiveIndicator;->initViews()V

    .line 28
    .line 29
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/widget/CommentLiveIndicator;->getIndi0ScaleAnimator()Landroid/animation/Animator;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/widget/CommentLiveIndicator;->getIndi1ScaleAnimator()Landroid/animation/Animator;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/widget/CommentLiveIndicator;->getDotsPreviewAnimators()Landroid/animation/AnimatorSet;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/widget/CommentLiveIndicator;->getDotAnimation()Landroid/animation/AnimatorSet;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    iget-object v4, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 53
    const/4 v5, 0x4

    .line 54
    .line 55
    new-array v5, v5, [Landroid/animation/Animator;

    .line 56
    const/4 v6, 0x0

    .line 57
    .line 58
    aput-object v0, v5, v6

    .line 59
    const/4 v0, 0x1

    .line 60
    .line 61
    aput-object v1, v5, v0

    .line 62
    const/4 v0, 0x2

    .line 63
    .line 64
    aput-object v2, v5, v0

    .line 65
    const/4 v0, 0x3

    .line 66
    .line 67
    aput-object v3, v5, v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 78
    .line 79
    new-instance v1, Lcom/narvii/widget/CommentLiveIndicator$1;

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, p0}, Lcom/narvii/widget/CommentLiveIndicator$1;-><init>(Lcom/narvii/widget/CommentLiveIndicator;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    return-void
.end method
