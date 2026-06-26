.class public Lcom/plattysoft/leonids/ParticleSystem;
.super Ljava/lang/Object;
.source "ParticleSystem.java"


# static fields
.field private static final TIMMERTASK_INTERVAL:J = 0x32L


# instance fields
.field private mActivatedParticles:I

.field private final mActiveParticles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/plattysoft/leonids/Particle;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimator:Landroid/animation/ValueAnimator;

.field public mCurrentTime:J

.field private mDpToPxScale:F

.field private mDrawingView:Lcom/plattysoft/leonids/ParticleField;

.field private mEmiterXMax:I

.field private mEmiterXMin:I

.field private mEmiterYMax:I

.field private mEmiterYMin:I

.field private mEmitingTime:J

.field private mInitializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/plattysoft/leonids/initializers/ParticleInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxParticles:I

.field private mModifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/plattysoft/leonids/modifiers/ParticleModifier;",
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
            "Lcom/plattysoft/leonids/Particle;",
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

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v7, 0x1020002

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IIJI)V
    .locals 8

    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;JI)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;IJI)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mCurrentTime:J

    .line 67
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mRandom:Ljava/util/Random;

    .line 68
    invoke-virtual {p1, p5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    .line 70
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/plattysoft/leonids/ParticleSystem;->mModifiers:Ljava/util/List;

    .line 71
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    .line 73
    iput p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mMaxParticles:I

    .line 76
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    .line 77
    iput-wide p3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimeToLive:J

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 79
    iput-object p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    .line 80
    iget-object p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 83
    iget p1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 p2, 0x43200000    # 160.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDpToPxScale:F

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

    .line 163
    invoke-direct/range {v0 .. v6}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;ILandroid/graphics/Bitmap;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/Bitmap;JI)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p4

    move v5, p6

    .line 175
    invoke-direct/range {v0 .. v5}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;IJI)V

    const/4 p1, 0x0

    .line 176
    :goto_0
    iget p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mMaxParticles:I

    if-ge p1, p2, :cond_0

    .line 177
    iget-object p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    new-instance p4, Lcom/plattysoft/leonids/Particle;

    invoke-direct {p4, p3}, Lcom/plattysoft/leonids/Particle;-><init>(Landroid/graphics/Bitmap;)V

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

    .line 190
    invoke-direct/range {v0 .. v6}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;ILandroid/graphics/drawable/AnimationDrawable;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/drawable/AnimationDrawable;JI)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p4

    move v5, p6

    .line 203
    invoke-direct/range {v0 .. v5}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;IJI)V

    const/4 p1, 0x0

    .line 205
    :goto_0
    iget p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mMaxParticles:I

    if-ge p1, p2, :cond_0

    .line 206
    iget-object p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    new-instance p4, Lcom/plattysoft/leonids/AnimatedParticle;

    invoke-direct {p4, p3}, Lcom/plattysoft/leonids/AnimatedParticle;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

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

    .line 120
    invoke-direct/range {v0 .. v6}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;JI)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p4

    move v5, p6

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/plattysoft/leonids/ParticleSystem;-><init>(Landroid/app/Activity;IJI)V

    .line 133
    instance-of p1, p3, Landroid/graphics/drawable/BitmapDrawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 134
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 135
    :goto_0
    iget p3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mMaxParticles:I

    if-ge p2, p3, :cond_1

    .line 136
    iget-object p3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    new-instance p4, Lcom/plattysoft/leonids/Particle;

    invoke-direct {p4, p1}, Lcom/plattysoft/leonids/Particle;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 139
    :cond_0
    instance-of p1, p3, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1

    .line 140
    check-cast p3, Landroid/graphics/drawable/AnimationDrawable;

    .line 141
    :goto_1
    iget p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mMaxParticles:I

    if-ge p2, p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    new-instance p4, Lcom/plattysoft/leonids/AnimatedParticle;

    invoke-direct {p4, p3}, Lcom/plattysoft/leonids/AnimatedParticle;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/plattysoft/leonids/ParticleSystem;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/plattysoft/leonids/ParticleSystem;->onUpdate(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/plattysoft/leonids/ParticleSystem;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/plattysoft/leonids/ParticleSystem;->cleanupAnimation()V

    return-void
.end method

.method private activateParticle(J)V
    .locals 5

    .line 523
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/plattysoft/leonids/Particle;

    .line 524
    invoke-virtual {v0}, Lcom/plattysoft/leonids/Particle;->init()V

    .line 526
    :goto_0
    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 527
    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/plattysoft/leonids/initializers/ParticleInitializer;

    iget-object v3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mRandom:Ljava/util/Random;

    invoke-interface {v2, v0, v3}, Lcom/plattysoft/leonids/initializers/ParticleInitializer;->initParticle(Lcom/plattysoft/leonids/Particle;Ljava/util/Random;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    :cond_0
    iget v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    iget v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMax:I

    invoke-direct {p0, v1, v2}, Lcom/plattysoft/leonids/ParticleSystem;->getFromRange(II)I

    move-result v1

    .line 530
    iget v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    iget v3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMax:I

    invoke-direct {p0, v2, v3}, Lcom/plattysoft/leonids/ParticleSystem;->getFromRange(II)I

    move-result v2

    .line 531
    iget-wide v3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimeToLive:J

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/plattysoft/leonids/Particle;->configure(JFF)V

    .line 532
    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mModifiers:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lcom/plattysoft/leonids/Particle;->activate(JLjava/util/List;)Lcom/plattysoft/leonids/Particle;

    .line 533
    iget-object p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    iget p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActivatedParticles:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActivatedParticles:I

    return-void
.end method

.method private cleanupAnimation()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 566
    iput-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    .line 567
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 568
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private configureEmiter(Landroid/view/View;I)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 477
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x3

    .line 480
    invoke-direct {p0, p2, v2}, Lcom/plattysoft/leonids/ParticleSystem;->hasGravity(II)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 481
    aget v2, v1, v3

    iget-object v5, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v3, v5, v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    .line 482
    iget v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    iput v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMax:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    .line 484
    invoke-direct {p0, p2, v2}, Lcom/plattysoft/leonids/ParticleSystem;->hasGravity(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    aget v2, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v3, v5, v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    .line 486
    iget v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    iput v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMax:I

    goto :goto_0

    .line 488
    :cond_1
    invoke-direct {p0, p2, v4}, Lcom/plattysoft/leonids/ParticleSystem;->hasGravity(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    aget v2, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v2, v5

    iget-object v5, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v3, v5, v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    .line 490
    iget v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    iput v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMax:I

    goto :goto_0

    .line 494
    :cond_2
    aget v2, v1, v3

    iget-object v5, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v5, v5, v3

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMin:I

    .line 495
    aget v2, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v3, v5, v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterXMax:I

    :goto_0
    const/16 v2, 0x30

    .line 499
    invoke-direct {p0, p2, v2}, Lcom/plattysoft/leonids/ParticleSystem;->hasGravity(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 500
    aget p1, v1, v4

    iget-object p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget p2, p2, v4

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    .line 501
    iget p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    iput p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMax:I

    goto :goto_1

    :cond_3
    const/16 v2, 0x50

    .line 503
    invoke-direct {p0, p2, v2}, Lcom/plattysoft/leonids/ParticleSystem;->hasGravity(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 504
    aget p2, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget p1, p1, v4

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    .line 505
    iget p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    iput p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMax:I

    goto :goto_1

    :cond_4
    const/16 v2, 0x10

    .line 507
    invoke-direct {p0, p2, v2}, Lcom/plattysoft/leonids/ParticleSystem;->hasGravity(II)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 508
    aget p2, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget p1, p1, v4

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    .line 509
    iget p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    iput p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMax:I

    goto :goto_1

    .line 513
    :cond_5
    aget p2, v1, v4

    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget v0, v0, v4

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMin:I

    .line 514
    aget p2, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentLocation:[I

    aget p1, p1, v4

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmiterYMax:I

    :goto_1
    return-void
.end method

.method private getFromRange(II)I
    .locals 1

    if-ne p1, p2, :cond_0

    return p1

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mRandom:Ljava/util/Random;

    sub-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/2addr p2, p1

    return p2
.end method

.method private hasGravity(II)Z
    .locals 0

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onUpdate(J)V
    .locals 5

    .line 545
    :goto_0
    iget-wide v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmitingTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmitingTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    .line 546
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActivatedParticles:I

    int-to-float v0, v0

    iget v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticlesPerMilisecond:F

    long-to-float v2, p1

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 549
    invoke-direct {p0, p1, p2}, Lcom/plattysoft/leonids/ParticleSystem;->activateParticle(J)V

    goto :goto_0

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 552
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 553
    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/plattysoft/leonids/Particle;

    invoke-virtual {v2, p1, p2}, Lcom/plattysoft/leonids/Particle;->update(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 555
    iget-object v2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/plattysoft/leonids/Particle;

    add-int/lit8 v1, v1, -0x1

    .line 557
    iget-object v3, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 560
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    iget-object p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void

    :catchall_0
    move-exception p1

    .line 560
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private startAnimator(Landroid/view/animation/Interpolator;J)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    long-to-int v1, p2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 444
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    .line 445
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 446
    iget-object p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/plattysoft/leonids/ParticleSystem$2;

    invoke-direct {p3, p0}, Lcom/plattysoft/leonids/ParticleSystem$2;-><init>(Lcom/plattysoft/leonids/ParticleSystem;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 453
    iget-object p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/plattysoft/leonids/ParticleSystem$3;

    invoke-direct {p3, p0}, Lcom/plattysoft/leonids/ParticleSystem$3;-><init>(Lcom/plattysoft/leonids/ParticleSystem;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 470
    iget-object p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 471
    iget-object p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startEmiting(II)V
    .locals 3

    const/4 v0, 0x0

    .line 388
    iput v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActivatedParticles:I

    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 389
    iput v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParticlesPerMilisecond:F

    .line 391
    new-instance v0, Lcom/plattysoft/leonids/ParticleField;

    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/plattysoft/leonids/ParticleField;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    .line 392
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 394
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    iget-object v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/plattysoft/leonids/ParticleField;->setParticles(Ljava/util/ArrayList;)V

    .line 395
    invoke-direct {p0, p1}, Lcom/plattysoft/leonids/ParticleSystem;->updateParticlesBeforeStartTime(I)V

    int-to-long p1, p2

    .line 396
    iput-wide p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmitingTime:J

    .line 397
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-wide v1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimeToLive:J

    add-long/2addr p1, v1

    invoke-direct {p0, v0, p1, p2}, Lcom/plattysoft/leonids/ParticleSystem;->startAnimator(Landroid/view/animation/Interpolator;J)V

    return-void
.end method

.method private updateParticlesBeforeStartTime(I)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 599
    :cond_0
    iget-wide v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mCurrentTime:J

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    int-to-long v4, p1

    .line 600
    div-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    return-void

    .line 604
    :cond_1
    div-long/2addr v0, v2

    const/4 p1, 0x1

    :goto_0
    int-to-long v4, p1

    cmp-long v6, v4, v2

    if-gtz v6, :cond_2

    mul-long v4, v4, v0

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 606
    invoke-direct {p0, v4, v5}, Lcom/plattysoft/leonids/ParticleSystem;->onUpdate(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addInitializer(Lcom/plattysoft/leonids/initializers/ParticleInitializer;)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addModifier(Lcom/plattysoft/leonids/modifiers/ParticleModifier;)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public dpToPx(F)F
    .locals 1

    .line 151
    iget v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDpToPxScale:F

    mul-float p1, p1, v0

    return p1
.end method

.method public emit(Landroid/view/View;II)V
    .locals 1

    const/16 v0, 0x11

    .line 326
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/plattysoft/leonids/ParticleSystem;->emitWithGravity(Landroid/view/View;III)V

    return-void
.end method

.method public emitWithGravity(Landroid/view/View;III)V
    .locals 0

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/plattysoft/leonids/ParticleSystem;->configureEmiter(Landroid/view/View;I)V

    .line 314
    invoke-direct {p0, p3, p4}, Lcom/plattysoft/leonids/ParticleSystem;->startEmiting(II)V

    return-void
.end method

.method public oneShot(Landroid/view/View;I)V
    .locals 1

    .line 416
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/plattysoft/leonids/ParticleSystem;->oneShot(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public oneShot(Landroid/view/View;ILandroid/view/animation/Interpolator;)V
    .locals 2

    const/16 v0, 0x11

    .line 427
    invoke-direct {p0, p1, v0}, Lcom/plattysoft/leonids/ParticleSystem;->configureEmiter(Landroid/view/View;I)V

    const/4 p1, 0x0

    .line 428
    iput p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActivatedParticles:I

    .line 429
    iget-wide v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimeToLive:J

    iput-wide v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mEmitingTime:J

    :goto_0
    if-ge p1, p2, :cond_0

    .line 431
    iget v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mMaxParticles:I

    if-ge p1, v0, :cond_0

    const-wide/16 v0, 0x0

    .line 432
    invoke-direct {p0, v0, v1}, Lcom/plattysoft/leonids/ParticleSystem;->activateParticle(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 435
    :cond_0
    new-instance p1, Lcom/plattysoft/leonids/ParticleField;

    iget-object p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/plattysoft/leonids/ParticleField;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    .line 436
    iget-object p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mParentView:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 437
    iget-object p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mDrawingView:Lcom/plattysoft/leonids/ParticleField;

    iget-object p2, p0, Lcom/plattysoft/leonids/ParticleSystem;->mActiveParticles:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/plattysoft/leonids/ParticleField;->setParticles(Ljava/util/ArrayList;)V

    .line 440
    iget-wide p1, p0, Lcom/plattysoft/leonids/ParticleSystem;->mTimeToLive:J

    invoke-direct {p0, p3, p1, p2}, Lcom/plattysoft/leonids/ParticleSystem;->startAnimator(Landroid/view/animation/Interpolator;J)V

    return-void
.end method

.method public setAcceleration(FI)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    new-instance v1, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;

    invoke-virtual {p0, p1}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result v2

    invoke-virtual {p0, p1}, Lcom/plattysoft/leonids/ParticleSystem;->dpToPx(F)F

    move-result p1

    invoke-direct {v1, v2, p1, p2, p2}, Lcom/plattysoft/leonids/initializers/AccelerationInitializer;-><init>(FFII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setInitialRotationRange(II)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    new-instance v1, Lcom/plattysoft/leonids/initializers/RotationInitiazer;

    invoke-direct {v1, p1, p2}, Lcom/plattysoft/leonids/initializers/RotationInitiazer;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setRotationSpeedRange(FF)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    new-instance v1, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;

    invoke-direct {v1, p1, p2}, Lcom/plattysoft/leonids/initializers/RotationSpeedInitializer;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setScaleRange(FF)Lcom/plattysoft/leonids/ParticleSystem;
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem;->mInitializers:Ljava/util/List;

    new-instance v1, Lcom/plattysoft/leonids/initializers/ScaleInitializer;

    invoke-direct {v1, p1, p2}, Lcom/plattysoft/leonids/initializers/ScaleInitializer;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
