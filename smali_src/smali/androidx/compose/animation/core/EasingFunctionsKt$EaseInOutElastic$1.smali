.class final Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/EasingFunctionsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;

    invoke-direct {v0}, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;->INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float v1, p1, v0

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpg-float v2, p1, v1

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    cmpg-float v0, v0, p1

    .line 17
    .line 18
    const/high16 v2, 0x41320000    # 11.125f

    .line 19
    .line 20
    const/high16 v3, 0x41200000    # 10.0f

    .line 21
    .line 22
    const/high16 v4, 0x41a00000    # 20.0f

    .line 23
    .line 24
    const/high16 v5, 0x40000000    # 2.0f

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const-wide v6, 0x3ff657184ae74487L    # 1.3962634015954636

    .line 30
    .line 31
    if-gtz v0, :cond_2

    .line 32
    .line 33
    const/high16 v0, 0x3f000000    # 0.5f

    .line 34
    .line 35
    cmpg-float v0, p1, v0

    .line 36
    .line 37
    if-gtz v0, :cond_2

    .line 38
    float-to-double v0, v5

    .line 39
    mul-float/2addr p1, v4

    .line 40
    .line 41
    sub-float v3, p1, v3

    .line 42
    float-to-double v3, v3

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 46
    move-result-wide v3

    .line 47
    double-to-float v3, v3

    .line 48
    float-to-double v3, v3

    .line 49
    sub-float/2addr p1, v2

    .line 50
    float-to-double v8, p1

    .line 51
    mul-double/2addr v8, v6

    .line 52
    .line 53
    .line 54
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 55
    move-result-wide v5

    .line 56
    mul-double/2addr v3, v5

    .line 57
    neg-double v2, v3

    .line 58
    div-double/2addr v2, v0

    .line 59
    double-to-float v0, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    float-to-double v8, v5

    .line 62
    .line 63
    const/high16 v0, -0x3e600000    # -20.0f

    .line 64
    mul-float/2addr v0, p1

    .line 65
    add-float/2addr v0, v3

    .line 66
    float-to-double v10, v0

    .line 67
    .line 68
    .line 69
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 70
    move-result-wide v10

    .line 71
    double-to-float v0, v10

    .line 72
    float-to-double v10, v0

    .line 73
    mul-float/2addr p1, v4

    .line 74
    sub-float/2addr p1, v2

    .line 75
    float-to-double v2, p1

    .line 76
    mul-double/2addr v2, v6

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 80
    move-result-wide v2

    .line 81
    mul-double/2addr v10, v2

    .line 82
    div-double/2addr v10, v8

    .line 83
    double-to-float p1, v10

    .line 84
    .line 85
    add-float v0, p1, v1

    .line 86
    :goto_0
    return v0
.end method
