.class public Lio/agora/rtc/gl/RendererCommon$VideoLayoutMeasure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoLayoutMeasure"
.end annotation


# instance fields
.field private scalingTypeMatchOrientation:Lio/agora/rtc/gl/RendererCommon$ScalingType;

.field private scalingTypeMismatchOrientation:Lio/agora/rtc/gl/RendererCommon$ScalingType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lio/agora/rtc/gl/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lio/agora/rtc/gl/RendererCommon$ScalingType;

    .line 6
    .line 7
    iput-object v0, p0, Lio/agora/rtc/gl/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lio/agora/rtc/gl/RendererCommon$ScalingType;

    .line 8
    .line 9
    iput-object v0, p0, Lio/agora/rtc/gl/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lio/agora/rtc/gl/RendererCommon$ScalingType;

    .line 10
    return-void
.end method


# virtual methods
.method public measure(IIII)Landroid/graphics/Point;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthSpec",
            "heightSpec",
            "frameWidth",
            "frameHeight"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz p3, :cond_6

    .line 14
    .line 15
    if-eqz p4, :cond_6

    .line 16
    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    int-to-float p3, p3

    .line 22
    int-to-float p4, p4

    .line 23
    div-float/2addr p3, p4

    .line 24
    int-to-float p4, v1

    .line 25
    int-to-float v2, v0

    .line 26
    div-float/2addr p4, v2

    .line 27
    .line 28
    const/high16 v2, 0x3f800000    # 1.0f

    .line 29
    .line 30
    cmpl-float v3, p3, v2

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    .line 34
    if-lez v3, :cond_1

    .line 35
    move v3, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v3, v4

    .line 38
    .line 39
    :goto_0
    cmpl-float p4, p4, v2

    .line 40
    .line 41
    if-lez p4, :cond_2

    .line 42
    move v4, v5

    .line 43
    .line 44
    :cond_2
    if-ne v3, v4, :cond_3

    .line 45
    .line 46
    iget-object p4, p0, Lio/agora/rtc/gl/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lio/agora/rtc/gl/RendererCommon$ScalingType;

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_3
    iget-object p4, p0, Lio/agora/rtc/gl/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lio/agora/rtc/gl/RendererCommon$ScalingType;

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-static {p4, p3, v1, v0}, Lio/agora/rtc/gl/RendererCommon;->getDisplaySize(Lio/agora/rtc/gl/RendererCommon$ScalingType;FII)Landroid/graphics/Point;

    .line 53
    move-result-object p3

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 57
    move-result p1

    .line 58
    .line 59
    const/high16 p4, 0x40000000    # 2.0f

    .line 60
    .line 61
    if-ne p1, p4, :cond_4

    .line 62
    .line 63
    iput v1, p3, Landroid/graphics/Point;->x:I

    .line 64
    .line 65
    .line 66
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 67
    move-result p1

    .line 68
    .line 69
    if-ne p1, p4, :cond_5

    .line 70
    .line 71
    iput v0, p3, Landroid/graphics/Point;->y:I

    .line 72
    :cond_5
    return-object p3

    .line 73
    .line 74
    :cond_6
    :goto_2
    new-instance p1, Landroid/graphics/Point;

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 78
    return-object p1
.end method

.method public setScalingType(Lio/agora/rtc/gl/RendererCommon$ScalingType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scalingType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lio/agora/rtc/gl/RendererCommon$ScalingType;

    iput-object p1, p0, Lio/agora/rtc/gl/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lio/agora/rtc/gl/RendererCommon$ScalingType;

    return-void
.end method

.method public setScalingType(Lio/agora/rtc/gl/RendererCommon$ScalingType;Lio/agora/rtc/gl/RendererCommon$ScalingType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scalingTypeMatchOrientation",
            "scalingTypeMismatchOrientation"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lio/agora/rtc/gl/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lio/agora/rtc/gl/RendererCommon$ScalingType;

    iput-object p2, p0, Lio/agora/rtc/gl/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lio/agora/rtc/gl/RendererCommon$ScalingType;

    return-void
.end method
