.class public Lb6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb6/b;


# instance fields
.field private mDuration:F

.field private mEndTime:J

.field private mFinalValue:I

.field private mInitialValue:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J

.field private mValueIncrement:F


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 8

    .line 2
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lb6/a;-><init>(IIJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIJJLandroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb6/a;->mInitialValue:I

    iput p2, p0, Lb6/a;->mFinalValue:I

    iput-wide p3, p0, Lb6/a;->mStartTime:J

    iput-wide p5, p0, Lb6/a;->mEndTime:J

    sub-long/2addr p5, p3

    long-to-float p3, p5

    iput p3, p0, Lb6/a;->mDuration:F

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iput p1, p0, Lb6/a;->mValueIncrement:F

    iput-object p7, p0, Lb6/a;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/plattysoft/leonids/b;J)V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lb6/a;->mStartTime:J

    .line 3
    .line 4
    cmp-long v2, p2, v0

    .line 5
    .line 6
    if-gez v2, :cond_0

    .line 7
    .line 8
    iget p2, p0, Lb6/a;->mInitialValue:I

    .line 9
    .line 10
    iput p2, p1, Lcom/plattysoft/leonids/b;->mAlpha:I

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-wide v2, p0, Lb6/a;->mEndTime:J

    .line 14
    .line 15
    cmp-long v2, p2, v2

    .line 16
    .line 17
    if-lez v2, :cond_1

    .line 18
    .line 19
    iget p2, p0, Lb6/a;->mFinalValue:I

    .line 20
    .line 21
    iput p2, p1, Lcom/plattysoft/leonids/b;->mAlpha:I

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    iget-object v2, p0, Lb6/a;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 25
    sub-long/2addr p2, v0

    .line 26
    long-to-float p2, p2

    .line 27
    .line 28
    const/high16 p3, 0x3f800000    # 1.0f

    .line 29
    mul-float/2addr p2, p3

    .line 30
    .line 31
    iget p3, p0, Lb6/a;->mDuration:F

    .line 32
    div-float/2addr p2, p3

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 36
    move-result p2

    .line 37
    .line 38
    iget p3, p0, Lb6/a;->mInitialValue:I

    .line 39
    int-to-float p3, p3

    .line 40
    .line 41
    iget v0, p0, Lb6/a;->mValueIncrement:F

    .line 42
    mul-float/2addr v0, p2

    .line 43
    add-float/2addr p3, v0

    .line 44
    float-to-int p2, p3

    .line 45
    .line 46
    iput p2, p1, Lcom/plattysoft/leonids/b;->mAlpha:I

    .line 47
    :goto_0
    return-void
.end method
