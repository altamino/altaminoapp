.class public Lcom/plattysoft/leonids/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TIMMERTASK_INTERVAL:J = 0x32L


# instance fields
.field private mActivatedParticles:I

.field private final mActiveParticles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/plattysoft/leonids/b;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimator:Landroid/animation/ValueAnimator;

.field public mCurrentTime:J

.field private mDpToPxScale:F

.field private mDrawingView:Lcom/plattysoft/leonids/c;

.field private mEmiterXMax:I

.field private mEmiterXMin:I

.field private mEmiterYMax:I

.field private mEmiterYMin:I

.field private mEmitingTime:J

.field private mInitializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La6/b;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxParticles:I

.field private mModifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb6/b;",
            ">;"
        }
    .end annotation
.end field

.field private mParentLocation:[I

.field private mParentView:Landroid/view/ViewGroup;

.field private mParticles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/plattysoft/leonids/b;",
            ">;"
        }
    .end annotation
.end field

.field private mParticlesPerMilisecond:F

.field private mRandom:Ljava/util/Random;

.field private mTimeToLive:J

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IIJ)V
    .locals 8

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v7, 0x1020002

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/plattysoft/leonids/d;-><init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IIJI)V
    .locals 8

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/plattysoft/leonids/d;-><init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;JI)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;IJI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/plattysoft/leonids/d;->mActiveParticles:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/plattysoft/leonids/d;->mCurrentTime:J

    .line 3
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/plattysoft/leonids/d;->mRandom:Ljava/util/Random;

    .line 4
    invoke-virtual {p1, p5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/plattysoft/leonids/d;->mParentView:Landroid/view/ViewGroup;

    .line 5
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/plattysoft/leonids/d;->mModifiers:Ljava/util/List;

    .line 6
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/plattysoft/leonids/d;->mInitializers:Ljava/util/List;

    iput p2, p0, Lcom/plattysoft/leonids/d;->mMaxParticles:I

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/plattysoft/leonids/d;->mParticles:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/plattysoft/leonids/d;->mTimeToLive:J

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/plattysoft/leonids/d;->mParentLocation:[I

    iget-object p3, p0, Lcom/plattysoft/leonids/d;->mParentView:Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 10
    iget p1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 p2, 0x43200000    # 160.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/plattysoft/leonids/d;->mDpToPxScale:F

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/Bitmap;J)V
    .locals 7

    const v6, 0x1020002

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/plattysoft/leonids/d;-><init>(Landroid/app/Activity;ILandroid/graphics/Bitmap;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/Bitmap;JI)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p4

    move v5, p6

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/plattysoft/leonids/d;-><init>(Landroid/app/Activity;IJI)V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lcom/plattysoft/leonids/d;->mMaxParticles:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/plattysoft/leonids/d;->mParticles:Ljava/util/ArrayList;

    .line 23
    new-instance p4, Lcom/plattysoft/leonids/b;

    invoke-direct {p4, p3}, Lcom/plattysoft/leonids/b;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/drawable/AnimationDrawable;J)V
    .locals 7

    const v6, 0x1020002

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/plattysoft/leonids/d;-><init>(Landroid/app/Activity;ILandroid/graphics/drawable/AnimationDrawable;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/drawable/AnimationDrawable;JI)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p4

    move v5, p6

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/plattysoft/leonids/d;-><init>(Landroid/app/Activity;IJI)V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lcom/plattysoft/leonids/d;->mMaxParticles:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/plattysoft/leonids/d;->mParticles:Ljava/util/ArrayList;

    .line 26
    new-instance p4, Lcom/plattysoft/leonids/a;

    invoke-direct {p4, p3}, Lcom/plattysoft/leonids/a;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;J)V
    .locals 7

    const v6, 0x1020002

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/plattysoft/leonids/d;-><init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;JI)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p4

    move v5, p6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/plattysoft/leonids/d;-><init>(Landroid/app/Activity;IJI)V

    .line 15
    instance-of p1, p3, Landroid/graphics/drawable/BitmapDrawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 16
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    iget p3, p0, Lcom/plattysoft/leonids/d;->mMaxParticles:I

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lcom/plattysoft/leonids/d;->mParticles:Ljava/util/ArrayList;

    .line 17
    new-instance p4, Lcom/plattysoft/leonids/b;

    invoke-direct {p4, p1}, Lcom/plattysoft/leonids/b;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 18
    :cond_0
    instance-of p1, p3, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1

    .line 19
    check-cast p3, Landroid/graphics/drawable/AnimationDrawable;

    :goto_1
    iget p1, p0, Lcom/plattysoft/leonids/d;->mMaxParticles:I

    if-ge p2, p1, :cond_1

    iget-object p1, p0, Lcom/plattysoft/leonids/d;->mParticles:Ljava/util/ArrayList;

    .line 20
    new-instance p4, Lcom/plattysoft/leonids/a;

    invoke-direct {p4, p3}, Lcom/plattysoft/leonids/a;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static bridge synthetic a(Lcom/plattysoft/leonids/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/plattysoft/leonids/d;->f()V

    return-void
.end method

.method static bridge synthetic b(Lcom/plattysoft/leonids/d;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/plattysoft/leonids/d;->m(J)V

    return-void
.end method

.method private c(J)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mParticles:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/plattysoft/leonids/b;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/plattysoft/leonids/b;->d()V

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, Lcom/plattysoft/leonids/d;->mInitializers:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 18
    move-result v2

    .line 19
    .line 20
    if-ge v1, v2, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/plattysoft/leonids/d;->mInitializers:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, La6/b;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/plattysoft/leonids/d;->mRandom:Ljava/util/Random;

    .line 31
    .line 32
    .line 33
    invoke-interface {v2, v0, v3}, La6/b;->initParticle(Lcom/plattysoft/leonids/b;Ljava/util/Random;)V

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget v1, p0, Lcom/plattysoft/leonids/d;->mEmiterXMin:I

    .line 39
    .line 40
    iget v2, p0, Lcom/plattysoft/leonids/d;->mEmiterXMax:I

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v1, v2}, Lcom/plattysoft/leonids/d;->k(II)I

    .line 44
    move-result v1

    .line 45
    .line 46
    iget v2, p0, Lcom/plattysoft/leonids/d;->mEmiterYMin:I

    .line 47
    .line 48
    iget v3, p0, Lcom/plattysoft/leonids/d;->mEmiterYMax:I

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v2, v3}, Lcom/plattysoft/leonids/d;->k(II)I

    .line 52
    move-result v2

    .line 53
    .line 54
    iget-wide v3, p0, Lcom/plattysoft/leonids/d;->mTimeToLive:J

    .line 55
    int-to-float v1, v1

    .line 56
    int-to-float v2, v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/plattysoft/leonids/b;->b(JFF)V

    .line 60
    .line 61
    iget-object v1, p0, Lcom/plattysoft/leonids/d;->mModifiers:Ljava/util/List;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1, p2, v1}, Lcom/plattysoft/leonids/b;->a(JLjava/util/List;)Lcom/plattysoft/leonids/b;

    .line 65
    .line 66
    iget-object p1, p0, Lcom/plattysoft/leonids/d;->mActiveParticles:Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    iget p1, p0, Lcom/plattysoft/leonids/d;->mActivatedParticles:I

    .line 72
    .line 73
    add-int/lit8 p1, p1, 0x1

    .line 74
    .line 75
    iput p1, p0, Lcom/plattysoft/leonids/d;->mActivatedParticles:I

    .line 76
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mParentView:Landroid/view/ViewGroup;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/plattysoft/leonids/d;->mDrawingView:Lcom/plattysoft/leonids/c;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/plattysoft/leonids/d;->mDrawingView:Lcom/plattysoft/leonids/c;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mParentView:Landroid/view/ViewGroup;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mParticles:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/plattysoft/leonids/d;->mActiveParticles:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    return-void
.end method

.method private g(Landroid/view/View;I)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7
    const/4 v2, 0x3

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2, v2}, Lcom/plattysoft/leonids/d;->l(II)Z

    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    aget v2, v1, v3

    .line 18
    .line 19
    iget-object v5, p0, Lcom/plattysoft/leonids/d;->mParentLocation:[I

    .line 20
    .line 21
    aget v3, v5, v3

    .line 22
    sub-int/2addr v2, v3

    .line 23
    .line 24
    iput v2, p0, Lcom/plattysoft/leonids/d;->mEmiterXMin:I

    .line 25
    .line 26
    iput v2, p0, Lcom/plattysoft/leonids/d;->mEmiterXMax:I

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x5

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p2, v2}, Lcom/plattysoft/leonids/d;->l(II)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    aget v2, v1, v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 40
    move-result v5

    .line 41
    add-int/2addr v2, v5

    .line 42
    .line 43
    iget-object v5, p0, Lcom/plattysoft/leonids/d;->mParentLocation:[I

    .line 44
    .line 45
    aget v3, v5, v3

    .line 46
    sub-int/2addr v2, v3

    .line 47
    .line 48
    iput v2, p0, Lcom/plattysoft/leonids/d;->mEmiterXMin:I

    .line 49
    .line 50
    iput v2, p0, Lcom/plattysoft/leonids/d;->mEmiterXMax:I

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-direct {p0, p2, v4}, Lcom/plattysoft/leonids/d;->l(II)Z

    .line 55
    move-result v2

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    aget v2, v1, v3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 63
    move-result v5

    .line 64
    div-int/2addr v5, v0

    .line 65
    add-int/2addr v2, v5

    .line 66
    .line 67
    iget-object v5, p0, Lcom/plattysoft/leonids/d;->mParentLocation:[I

    .line 68
    .line 69
    aget v3, v5, v3

    .line 70
    sub-int/2addr v2, v3

    .line 71
    .line 72
    iput v2, p0, Lcom/plattysoft/leonids/d;->mEmiterXMin:I

    .line 73
    .line 74
    iput v2, p0, Lcom/plattysoft/leonids/d;->mEmiterXMax:I

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_2
    aget v2, v1, v3

    .line 78
    .line 79
    iget-object v5, p0, Lcom/plattysoft/leonids/d;->mParentLocation:[I

    .line 80
    .line 81
    aget v5, v5, v3

    .line 82
    .line 83
    sub-int v5, v2, v5

    .line 84
    .line 85
    iput v5, p0, Lcom/plattysoft/leonids/d;->mEmiterXMin:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 89
    move-result v5

    .line 90
    add-int/2addr v2, v5

    .line 91
    .line 92
    iget-object v5, p0, Lcom/plattysoft/leonids/d;->mParentLocation:[I

    .line 93
    .line 94
    aget v3, v5, v3

    .line 95
    sub-int/2addr v2, v3

    .line 96
    .line 97
    iput v2, p0, Lcom/plattysoft/leonids/d;->mEmiterXMax:I

    .line 98
    .line 99
    :goto_0
    const/16 v2, 0x30

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, p2, v2}, Lcom/plattysoft/leonids/d;->l(II)Z

    .line 103
    move-result v2

    .line 104
    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    aget p1, v1, v4

    .line 108
    .line 109
    iget-object p2, p0, Lcom/plattysoft/leonids/d;->mParentLocation:[I

    .line 110
    .line 111
    aget p2, p2, v4

    .line 112
    sub-int/2addr p1, p2

    .line 113
    .line 114
    iput p1, p0, Lcom/plattysoft/leonids/d;->mEmiterYMin:I

    .line 115
    .line 116
    iput p1, p0, Lcom/plattysoft/leonids/d;->mEmiterYMax:I

    .line 117
    goto :goto_1

    .line 118
    .line 119
    :cond_3
    const/16 v2, 0x50

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, p2, v2}, Lcom/plattysoft/leonids/d;->l(II)Z

    .line 123
    move-result v2

    .line 124
    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    aget p2, v1, v4

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 131
    move-result p1

    .line 132
    add-int/2addr p2, p1

    .line 133
    .line 134
    iget-object p1, p0, Lcom/plattysoft/leonids/d;->mParentLocation:[I

    .line 135
    .line 136
    aget p1, p1, v4

    .line 137
    sub-int/2addr p2, p1

    .line 138
    .line 139
    iput p2, p0, Lcom/plattysoft/leonids/d;->mEmiterYMin:I

    .line 140
    .line 141
    iput p2, p0, Lcom/plattysoft/leonids/d;->mEmiterYMax:I

    .line 142
    goto :goto_1

    .line 143
    .line 144
    :cond_4
    const/16 v2, 0x10

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, p2, v2}, Lcom/plattysoft/leonids/d;->l(II)Z

    .line 148
    move-result p2

    .line 149
    .line 150
    if-eqz p2, :cond_5

    .line 151
    .line 152
    aget p2, v1, v4

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 156
    move-result p1

    .line 157
    div-int/2addr p1, v0

    .line 158
    add-int/2addr p2, p1

    .line 159
    .line 160
    iget-object p1, p0, Lcom/plattysoft/leonids/d;->mParentLocation:[I

    .line 161
    .line 162
    aget p1, p1, v4

    .line 163
    sub-int/2addr p2, p1

    .line 164
    .line 165
    iput p2, p0, Lcom/plattysoft/leonids/d;->mEmiterYMin:I

    .line 166
    .line 167
    iput p2, p0, Lcom/plattysoft/leonids/d;->mEmiterYMax:I

    .line 168
    goto :goto_1

    .line 169
    .line 170
    :cond_5
    aget p2, v1, v4

    .line 171
    .line 172
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mParentLocation:[I

    .line 173
    .line 174
    aget v0, v0, v4

    .line 175
    .line 176
    sub-int v0, p2, v0

    .line 177
    .line 178
    iput v0, p0, Lcom/plattysoft/leonids/d;->mEmiterYMin:I

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 182
    move-result p1

    .line 183
    add-int/2addr p2, p1

    .line 184
    .line 185
    iget-object p1, p0, Lcom/plattysoft/leonids/d;->mParentLocation:[I

    .line 186
    .line 187
    aget p1, p1, v4

    .line 188
    sub-int/2addr p2, p1

    .line 189
    .line 190
    iput p2, p0, Lcom/plattysoft/leonids/d;->mEmiterYMax:I

    .line 191
    :goto_1
    return-void
.end method

.method private k(II)I
    .locals 1

    .line 1
    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    return p1

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mRandom:Ljava/util/Random;

    .line 6
    sub-int/2addr p2, p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    .line 10
    move-result p2

    .line 11
    add-int/2addr p2, p1

    .line 12
    return p2
.end method

.method private l(II)Z
    .locals 0

    .line 1
    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private m(J)V
    .locals 4

    .line 1
    .line 2
    :goto_0
    iget-wide v0, p0, Lcom/plattysoft/leonids/d;->mEmitingTime:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-lez v2, :cond_0

    .line 9
    .line 10
    cmp-long v2, p1, v0

    .line 11
    .line 12
    if-ltz v2, :cond_1

    .line 13
    .line 14
    :cond_0
    const-wide/16 v2, -0x1

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mParticles:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget v0, p0, Lcom/plattysoft/leonids/d;->mActivatedParticles:I

    .line 29
    int-to-float v0, v0

    .line 30
    .line 31
    iget v1, p0, Lcom/plattysoft/leonids/d;->mParticlesPerMilisecond:F

    .line 32
    long-to-float v2, p1

    .line 33
    mul-float/2addr v1, v2

    .line 34
    .line 35
    cmpg-float v0, v0, v1

    .line 36
    .line 37
    if-gez v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/plattysoft/leonids/d;->c(J)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mActiveParticles:Ljava/util/ArrayList;

    .line 44
    monitor-enter v0

    .line 45
    const/4 v1, 0x0

    .line 46
    .line 47
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/plattysoft/leonids/d;->mActiveParticles:Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v2

    .line 52
    .line 53
    if-ge v1, v2, :cond_4

    .line 54
    .line 55
    iget-object v2, p0, Lcom/plattysoft/leonids/d;->mActiveParticles:Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    check-cast v2, Lcom/plattysoft/leonids/b;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1, p2}, Lcom/plattysoft/leonids/b;->e(J)Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    iget-object v2, p0, Lcom/plattysoft/leonids/d;->mActiveParticles:Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    check-cast v2, Lcom/plattysoft/leonids/b;

    .line 76
    .line 77
    add-int/lit8 v1, v1, -0x1

    .line 78
    .line 79
    iget-object v3, p0, Lcom/plattysoft/leonids/d;->mParticles:Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_2

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    goto :goto_3

    .line 86
    .line 87
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    iget-object p1, p0, Lcom/plattysoft/leonids/d;->mDrawingView:Lcom/plattysoft/leonids/c;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 95
    return-void

    .line 96
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw p1
.end method

.method private t(Landroid/view/animation/Interpolator;J)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    long-to-int v1, p2

    .line 3
    .line 4
    .line 5
    filled-new-array {v0, v1}, [I

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/plattysoft/leonids/d;->mAnimator:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/plattysoft/leonids/d;->mAnimator:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    new-instance p3, Lcom/plattysoft/leonids/d$a;

    .line 20
    .line 21
    .line 22
    invoke-direct {p3, p0}, Lcom/plattysoft/leonids/d$a;-><init>(Lcom/plattysoft/leonids/d;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 26
    .line 27
    iget-object p2, p0, Lcom/plattysoft/leonids/d;->mAnimator:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    new-instance p3, Lcom/plattysoft/leonids/d$b;

    .line 30
    .line 31
    .line 32
    invoke-direct {p3, p0}, Lcom/plattysoft/leonids/d$b;-><init>(Lcom/plattysoft/leonids/d;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36
    .line 37
    iget-object p2, p0, Lcom/plattysoft/leonids/d;->mAnimator:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/plattysoft/leonids/d;->mAnimator:Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 46
    return-void
.end method

.method private u(II)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/plattysoft/leonids/d;->mActivatedParticles:I

    .line 4
    int-to-float v0, p1

    .line 5
    .line 6
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 7
    div-float/2addr v0, v1

    .line 8
    .line 9
    iput v0, p0, Lcom/plattysoft/leonids/d;->mParticlesPerMilisecond:F

    .line 10
    .line 11
    new-instance v0, Lcom/plattysoft/leonids/c;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/plattysoft/leonids/d;->mParentView:Landroid/view/ViewGroup;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/plattysoft/leonids/c;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/plattysoft/leonids/d;->mDrawingView:Lcom/plattysoft/leonids/c;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/plattysoft/leonids/d;->mParentView:Landroid/view/ViewGroup;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mDrawingView:Lcom/plattysoft/leonids/c;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/plattysoft/leonids/d;->mActiveParticles:Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/plattysoft/leonids/c;->a(Ljava/util/ArrayList;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/plattysoft/leonids/d;->v(I)V

    .line 38
    int-to-long p1, p2

    .line 39
    .line 40
    iput-wide p1, p0, Lcom/plattysoft/leonids/d;->mEmitingTime:J

    .line 41
    .line 42
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 46
    .line 47
    iget-wide v1, p0, Lcom/plattysoft/leonids/d;->mTimeToLive:J

    .line 48
    add-long/2addr p1, v1

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v0, p1, p2}, Lcom/plattysoft/leonids/d;->t(Landroid/view/animation/Interpolator;J)V

    .line 52
    return-void
.end method

.method private v(I)V
    .locals 8

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/plattysoft/leonids/d;->mCurrentTime:J

    .line 6
    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    div-long v2, v0, v2

    .line 10
    int-to-long v4, p1

    .line 11
    div-long/2addr v2, v4

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    cmp-long p1, v2, v4

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    return-void

    .line 19
    :cond_1
    div-long/2addr v0, v2

    .line 20
    const/4 p1, 0x1

    .line 21
    :goto_0
    int-to-long v4, p1

    .line 22
    .line 23
    cmp-long v6, v4, v2

    .line 24
    .line 25
    if-gtz v6, :cond_2

    .line 26
    mul-long/2addr v4, v0

    .line 27
    .line 28
    const-wide/16 v6, 0x1

    .line 29
    add-long/2addr v4, v6

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v4, v5}, Lcom/plattysoft/leonids/d;->m(J)V

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-void
.end method


# virtual methods
.method public d(La6/b;)Lcom/plattysoft/leonids/d;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mInitializers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method

.method public e(Lb6/b;)Lcom/plattysoft/leonids/d;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mModifiers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method

.method public h(F)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/plattysoft/leonids/d;->mDpToPxScale:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public i(Landroid/view/View;II)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x11

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/plattysoft/leonids/d;->j(Landroid/view/View;III)V

    .line 6
    return-void
.end method

.method public j(Landroid/view/View;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/plattysoft/leonids/d;->g(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p3, p4}, Lcom/plattysoft/leonids/d;->u(II)V

    .line 7
    return-void
.end method

.method public n(Landroid/view/View;I)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lcom/plattysoft/leonids/d;->o(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    .line 9
    return-void
.end method

.method public o(Landroid/view/View;ILandroid/view/animation/Interpolator;)V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x11

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/plattysoft/leonids/d;->g(Landroid/view/View;I)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput p1, p0, Lcom/plattysoft/leonids/d;->mActivatedParticles:I

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/plattysoft/leonids/d;->mTimeToLive:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/plattysoft/leonids/d;->mEmitingTime:J

    .line 13
    .line 14
    :goto_0
    if-ge p1, p2, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lcom/plattysoft/leonids/d;->mMaxParticles:I

    .line 17
    .line 18
    if-ge p1, v0, :cond_0

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0, v1}, Lcom/plattysoft/leonids/d;->c(J)V

    .line 24
    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    new-instance p1, Lcom/plattysoft/leonids/c;

    .line 29
    .line 30
    iget-object p2, p0, Lcom/plattysoft/leonids/d;->mParentView:Landroid/view/ViewGroup;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p2}, Lcom/plattysoft/leonids/c;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/plattysoft/leonids/d;->mDrawingView:Lcom/plattysoft/leonids/c;

    .line 40
    .line 41
    iget-object p2, p0, Lcom/plattysoft/leonids/d;->mParentView:Landroid/view/ViewGroup;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    .line 46
    iget-object p1, p0, Lcom/plattysoft/leonids/d;->mDrawingView:Lcom/plattysoft/leonids/c;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/plattysoft/leonids/d;->mActiveParticles:Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/plattysoft/leonids/c;->a(Ljava/util/ArrayList;)V

    .line 52
    .line 53
    iget-wide p1, p0, Lcom/plattysoft/leonids/d;->mTimeToLive:J

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p3, p1, p2}, Lcom/plattysoft/leonids/d;->t(Landroid/view/animation/Interpolator;J)V

    .line 57
    return-void
.end method

.method public p(FI)Lcom/plattysoft/leonids/d;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mInitializers:Ljava/util/List;

    .line 3
    .line 4
    new-instance v1, La6/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/plattysoft/leonids/d;->h(F)F

    .line 8
    move-result v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/plattysoft/leonids/d;->h(F)F

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2, p1, p2, p2}, La6/a;-><init>(FFII)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    return-object p0
.end method

.method public q(II)Lcom/plattysoft/leonids/d;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mInitializers:Ljava/util/List;

    .line 3
    .line 4
    new-instance v1, La6/c;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, La6/c;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-object p0
.end method

.method public r(FF)Lcom/plattysoft/leonids/d;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mInitializers:Ljava/util/List;

    .line 3
    .line 4
    new-instance v1, La6/d;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, La6/d;-><init>(FF)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-object p0
.end method

.method public s(FF)Lcom/plattysoft/leonids/d;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/plattysoft/leonids/d;->mInitializers:Ljava/util/List;

    .line 3
    .line 4
    new-instance v1, La6/e;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, La6/e;-><init>(FF)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-object p0
.end method
