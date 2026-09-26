.class final Landroidx/compose/animation/core/EasingFunctionsKt$EaseOutElastic$1;
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
.field public static final INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseOutElastic$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseOutElastic$1;

    invoke-direct {v0}, Landroidx/compose/animation/core/EasingFunctionsKt$EaseOutElastic$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseOutElastic$1;->INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseOutElastic$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 7

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
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpg-float v1, p1, v0

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    float-to-double v1, v1

    .line 17
    .line 18
    const/high16 v3, -0x3ee00000    # -10.0f

    .line 19
    mul-float/2addr v3, p1

    .line 20
    float-to-double v3, v3

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 24
    move-result-wide v1

    .line 25
    double-to-float v1, v1

    .line 26
    float-to-double v1, v1

    .line 27
    .line 28
    const/high16 v3, 0x41200000    # 10.0f

    .line 29
    mul-float/2addr p1, v3

    .line 30
    .line 31
    const/high16 v3, 0x3f400000    # 0.75f

    .line 32
    sub-float/2addr p1, v3

    .line 33
    float-to-double v3, p1

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide v5, 0x4000c152382d7365L    # 2.0943951023931953

    .line 39
    mul-double/2addr v3, v5

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 43
    move-result-wide v3

    .line 44
    mul-double/2addr v1, v3

    .line 45
    float-to-double v3, v0

    .line 46
    add-double/2addr v1, v3

    .line 47
    double-to-float v0, v1

    .line 48
    :goto_0
    return v0
.end method
