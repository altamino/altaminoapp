.class Lcom/narvii/list/refresh/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;,
        Lcom/narvii/list/refresh/MaterialProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x534

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_OFFSET_ANGLE:F = 5.0f

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 8.75f

.field private static final CENTER_RADIUS_LARGE:F = 12.5f

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final COLOR_START_DELAY_OFFSET:F = 0.75f

.field static final DEFAULT:I = 0x1

.field private static final END_TRIM_START_DELAY_OFFSET:F = 0.5f

.field private static final FULL_ROTATION:F = 1080.0f

.field static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final NUM_POINTS:F = 5.0f

.field private static final START_TRIM_DURATION_OFFSET:F = 0.5f

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private final COLORS:[I

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field mFinishing:Z

.field private mHeight:D

.field private mParent:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
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
    sput-object v0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 8
    .line 9
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    const/high16 v0, -0x1000000

    .line 6
    .line 7
    .line 8
    filled-new-array {v0}, [I

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->COLORS:[I

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    iput-object v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v1, Lcom/narvii/list/refresh/MaterialProgressDrawable$3;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$3;-><init>(Lcom/narvii/list/refresh/MaterialProgressDrawable;)V

    .line 24
    .line 25
    iput-object v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mParent:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 34
    .line 35
    new-instance p1, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 44
    const/4 p1, 0x1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->updateSizes(I)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setupAnimators()V

    .line 51
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/list/refresh/MaterialProgressDrawable;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRotationCount:F

    return p0
.end method

.method private applyFinishTranslation(FLcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->updateRingColor(FLcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    const v1, 0x3f4ccccd    # 0.8f

    .line 11
    div-float/2addr v0, v1

    .line 12
    float-to-double v0, v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 19
    add-double/2addr v0, v2

    .line 20
    double-to-float v0, v0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->getMinProgressArc(Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)F

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    .line 32
    move-result v3

    .line 33
    sub-float/2addr v3, v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    .line 37
    move-result v1

    .line 38
    sub-float/2addr v3, v1

    .line 39
    mul-float/2addr v3, p1

    .line 40
    add-float/2addr v2, v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    .line 47
    move-result v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    .line 54
    move-result v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    .line 58
    move-result v2

    .line 59
    sub-float/2addr v0, v2

    .line 60
    mul-float/2addr v0, p1

    .line 61
    add-float/2addr v1, v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 65
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/list/refresh/MaterialProgressDrawable;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRotationCount:F

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/list/refresh/MaterialProgressDrawable;FLcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->applyFinishTranslation(FLcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/list/refresh/MaterialProgressDrawable;Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->getMinProgressArc(Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)F

    move-result p0

    return p0
.end method

.method static bridge synthetic e(Lcom/narvii/list/refresh/MaterialProgressDrawable;FLcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->updateRingColor(FLcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    shr-int/lit8 v0, p2, 0x18

    .line 11
    .line 12
    and-int/lit16 v0, v0, 0xff

    .line 13
    .line 14
    shr-int/lit8 v1, p2, 0x10

    .line 15
    .line 16
    and-int/lit16 v1, v1, 0xff

    .line 17
    .line 18
    shr-int/lit8 v2, p2, 0x8

    .line 19
    .line 20
    and-int/lit16 v2, v2, 0xff

    .line 21
    .line 22
    and-int/lit16 p2, p2, 0xff

    .line 23
    .line 24
    .line 25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result p3

    .line 31
    .line 32
    shr-int/lit8 v3, p3, 0x18

    .line 33
    .line 34
    and-int/lit16 v3, v3, 0xff

    .line 35
    .line 36
    shr-int/lit8 v4, p3, 0x10

    .line 37
    .line 38
    and-int/lit16 v4, v4, 0xff

    .line 39
    .line 40
    shr-int/lit8 v5, p3, 0x8

    .line 41
    .line 42
    and-int/lit16 v5, v5, 0xff

    .line 43
    .line 44
    and-int/lit16 p3, p3, 0xff

    .line 45
    sub-int/2addr v3, v0

    .line 46
    int-to-float v3, v3

    .line 47
    mul-float/2addr v3, p1

    .line 48
    float-to-int v3, v3

    .line 49
    add-int/2addr v0, v3

    .line 50
    .line 51
    shl-int/lit8 v0, v0, 0x18

    .line 52
    sub-int/2addr v4, v1

    .line 53
    int-to-float v3, v4

    .line 54
    mul-float/2addr v3, p1

    .line 55
    float-to-int v3, v3

    .line 56
    add-int/2addr v1, v3

    .line 57
    .line 58
    shl-int/lit8 v1, v1, 0x10

    .line 59
    or-int/2addr v0, v1

    .line 60
    sub-int/2addr v5, v2

    .line 61
    int-to-float v1, v5

    .line 62
    mul-float/2addr v1, p1

    .line 63
    float-to-int v1, v1

    .line 64
    add-int/2addr v2, v1

    .line 65
    .line 66
    shl-int/lit8 v1, v2, 0x8

    .line 67
    or-int/2addr v0, v1

    .line 68
    sub-int/2addr p3, p2

    .line 69
    int-to-float p3, p3

    .line 70
    mul-float/2addr p1, p3

    .line 71
    float-to-int p1, p1

    .line 72
    add-int/2addr p2, p1

    .line 73
    .line 74
    or-int p1, v0, p2

    .line 75
    return p1
.end method

.method static bridge synthetic f()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getMinProgressArc(Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)F
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getCenterRadius()D

    .line 14
    move-result-wide v4

    .line 15
    mul-double/2addr v4, v2

    .line 16
    div-double/2addr v0, v4

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 20
    move-result-wide v0

    .line 21
    double-to-float p1, v0

    .line 22
    return p1
.end method

.method private getRotation()F
    .locals 1

    iget v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRotation:F

    return v0
.end method

.method private setSizeParameters(DDDDFF)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 11
    float-to-double v2, v1

    .line 12
    mul-double/2addr p1, v2

    .line 13
    .line 14
    iput-wide p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mWidth:D

    .line 15
    mul-double/2addr p3, v2

    .line 16
    .line 17
    iput-wide p3, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mHeight:D

    .line 18
    double-to-float p1, p7

    .line 19
    mul-float/2addr p1, v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 23
    mul-double/2addr p5, v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p5, p6}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    .line 27
    const/4 p1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 31
    mul-float/2addr p9, v1

    .line 32
    mul-float/2addr p10, v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p9, p10}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 36
    .line 37
    iget-wide p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mWidth:D

    .line 38
    double-to-int p1, p1

    .line 39
    .line 40
    iget-wide p2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mHeight:D

    .line 41
    double-to-int p2, p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setInsets(II)V

    .line 45
    return-void
.end method

.method private setupAnimators()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$1;-><init>(Lcom/narvii/list/refresh/MaterialProgressDrawable;Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)V

    .line 8
    const/4 v2, -0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 16
    .line 17
    sget-object v2, Lcom/narvii/list/refresh/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 21
    .line 22
    new-instance v2, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, p0, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$2;-><init>(Lcom/narvii/list/refresh/MaterialProgressDrawable;Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 29
    .line 30
    iput-object v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 31
    return-void
.end method

.method private updateRingColor(FLcom/narvii/list/refresh/MaterialProgressDrawable$Ring;)V
    .locals 2

    .line 1
    .line 2
    const/high16 v0, 0x3f400000    # 0.75f

    .line 3
    .line 4
    cmpl-float v1, p1, v0

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    sub-float/2addr p1, v0

    .line 8
    .line 9
    const/high16 v0, 0x3e800000    # 0.25f

    .line 10
    div-float/2addr p1, v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getStartingColor()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getNextColor()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->evaluateColorChange(FII)I

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setColor(I)V

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    move-result v1

    .line 9
    .line 10
    iget v2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRotation:F

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    .line 14
    move-result v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    .line 18
    move-result v4

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 30
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    .line 10
    :goto_0
    if-ge v3, v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 15
    .line 16
    check-cast v4, Landroid/view/animation/Animation;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    .line 20
    move-result v5

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    .line 26
    move-result v4

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v2
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setAlpha(I)V

    .line 6
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    .line 6
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 12
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 6
    return-void
.end method

.method setRotation(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRotation:F

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 11
    return-void
.end method

.method public showArrow(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 6
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getEndTrim()F

    .line 16
    move-result v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->getStartTrim()F

    .line 22
    move-result v1

    .line 23
    .line 24
    cmpl-float v0, v0, v1

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mFinishing:Z

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 32
    .line 33
    const-wide/16 v1, 0x29a

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mParent:Landroid/view/View;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 47
    const/4 v1, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 58
    .line 59
    const-wide/16 v1, 0x534

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mParent:Landroid/view/View;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 70
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mParent:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setRotation(F)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/list/refresh/MaterialProgressDrawable;->mRing:Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 26
    return-void
.end method

.method public updateSizes(I)V
    .locals 22

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-wide/high16 v1, 0x404c000000000000L    # 56.0

    .line 5
    .line 6
    const-wide/high16 v3, 0x404c000000000000L    # 56.0

    .line 7
    .line 8
    const-wide/high16 v5, 0x4029000000000000L    # 12.5

    .line 9
    .line 10
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 11
    .line 12
    const/high16 v9, 0x41400000    # 12.0f

    .line 13
    .line 14
    const/high16 v10, 0x40c00000    # 6.0f

    .line 15
    .line 16
    move-object/from16 v0, p0

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v10}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    .line 23
    .line 24
    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const-wide v16, 0x4021800000000000L    # 8.75

    .line 30
    .line 31
    const-wide/high16 v18, 0x4004000000000000L    # 2.5

    .line 32
    .line 33
    const/high16 v20, 0x41200000    # 10.0f

    .line 34
    .line 35
    const/high16 v21, 0x40a00000    # 5.0f

    .line 36
    .line 37
    move-object/from16 v11, p0

    .line 38
    .line 39
    .line 40
    invoke-direct/range {v11 .. v21}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 41
    :goto_0
    return-void
.end method
