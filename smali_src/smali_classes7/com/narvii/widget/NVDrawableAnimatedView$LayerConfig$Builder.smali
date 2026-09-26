.class public Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field animationInterval:F

.field animationType:I

.field duration:I

.field fromValue:F

.field interpolator:Landroid/animation/TimeInterpolator;

.field layerAlpha:F

.field layerGravity:I

.field layerScaleType:I

.field marginBottom:I

.field marginEnd:I

.field marginStart:I

.field marginTop:I

.field repeatCount:I

.field repeatMode:I

.field resId:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field scalePivotX:F

.field scalePivotY:F

.field startDelay:J


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerScaleType:I

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity:I

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iput v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerAlpha:F

    .line 14
    .line 15
    const/high16 v1, -0x40800000    # -1.0f

    .line 16
    .line 17
    iput v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->scalePivotX:F

    .line 18
    .line 19
    iput v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->scalePivotY:F

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    iput v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginStart:I

    .line 23
    .line 24
    iput v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginTop:I

    .line 25
    .line 26
    iput v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginEnd:I

    .line 27
    .line 28
    iput v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginBottom:I

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    iput v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->fromValue:F

    .line 32
    .line 33
    iput v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->animationInterval:F

    .line 34
    .line 35
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->repeatMode:I

    .line 36
    const/4 v0, -0x1

    .line 37
    .line 38
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->repeatCount:I

    .line 39
    .line 40
    const-wide/16 v0, 0x0

    .line 41
    .line 42
    iput-wide v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->startDelay:J

    .line 43
    const/4 v0, 0x0

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->interpolator:Landroid/animation/TimeInterpolator;

    .line 46
    .line 47
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->resId:I

    .line 48
    .line 49
    iput p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->animationType:I

    .line 50
    return-void
.end method


# virtual methods
.method public animationInterval(F)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->animationInterval:F

    return-object p0
.end method

.method public build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;-><init>(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;)V

    .line 6
    return-object v0
.end method

.method public duration(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->duration:I

    return-object p0
.end method

.method public fromValue(F)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->fromValue:F

    return-object p0
.end method

.method public interpolator(Landroid/animation/TimeInterpolator;)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->interpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public layerAlpha(F)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerAlpha:F

    return-object p0
.end method

.method public layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity:I

    return-object p0
.end method

.method public layerScaleType(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerScaleType:I

    return-object p0
.end method

.method public margin(IIII)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginStart:I

    iput p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginTop:I

    iput p3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginEnd:I

    iput p4, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->marginBottom:I

    return-object p0
.end method

.method public repeatCount(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->repeatCount:I

    return-object p0
.end method

.method public repeatMode(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->repeatMode:I

    :cond_1
    return-object p0
.end method

.method public scalePivot(FF)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->scalePivotX:F

    iput p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->scalePivotY:F

    return-object p0
.end method

.method public startDelay(J)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->startDelay:J

    :cond_0
    return-object p0
.end method
