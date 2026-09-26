.class public Lcom/narvii/util/particles/ScaleModifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb6/b;


# instance fields
.field duration:I

.field interpolator:Landroid/view/animation/Interpolator;

.field scaleFrom:F

.field scaleTo:F


# direct methods
.method public constructor <init>(FFILandroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/util/particles/ScaleModifier;->scaleFrom:F

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/util/particles/ScaleModifier;->scaleTo:F

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/util/particles/ScaleModifier;->duration:I

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/util/particles/ScaleModifier;->interpolator:Landroid/view/animation/Interpolator;

    .line 12
    return-void
.end method


# virtual methods
.method public apply(Lcom/plattysoft/leonids/b;J)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/util/particles/ScaleModifier;->scaleFrom:F

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/util/particles/ScaleModifier;->scaleTo:F

    .line 5
    sub-float/2addr v1, v0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/narvii/util/particles/ScaleModifier;->interpolator:Landroid/view/animation/Interpolator;

    .line 8
    .line 9
    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    long-to-float p2, p2

    .line 11
    mul-float/2addr p2, v3

    .line 12
    .line 13
    iget p3, p0, Lcom/narvii/util/particles/ScaleModifier;->duration:I

    .line 14
    int-to-float p3, p3

    .line 15
    div-float/2addr p2, p3

    .line 16
    .line 17
    .line 18
    invoke-interface {v2, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 19
    move-result p2

    .line 20
    mul-float/2addr v1, p2

    .line 21
    add-float/2addr v0, v1

    .line 22
    .line 23
    iput v0, p1, Lcom/plattysoft/leonids/b;->mScale:F

    .line 24
    return-void
.end method
