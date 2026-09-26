.class final Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutBounce$1;
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
.field public static final INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutBounce$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutBounce$1;

    invoke-direct {v0}, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutBounce$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutBounce$1;->INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutBounce$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 4

    .line 1
    float-to-double v0, p1

    .line 2
    .line 3
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 4
    .line 5
    cmpg-double v0, v0, v2

    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    const/high16 v3, 0x40000000    # 2.0f

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    int-to-float v0, v2

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/compose/animation/core/EasingFunctionsKt;->a()Landroidx/compose/animation/core/Easing;

    .line 17
    move-result-object v2

    .line 18
    mul-float/2addr p1, v3

    .line 19
    sub-float/2addr v1, p1

    .line 20
    .line 21
    .line 22
    invoke-interface {v2, v1}, Landroidx/compose/animation/core/Easing;->a(F)F

    .line 23
    move-result p1

    .line 24
    sub-float/2addr v0, p1

    .line 25
    :goto_0
    div-float/2addr v0, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    int-to-float v0, v2

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroidx/compose/animation/core/EasingFunctionsKt;->a()Landroidx/compose/animation/core/Easing;

    .line 31
    move-result-object v2

    .line 32
    mul-float/2addr p1, v3

    .line 33
    sub-float/2addr p1, v1

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, p1}, Landroidx/compose/animation/core/Easing;->a(F)F

    .line 37
    move-result p1

    .line 38
    add-float/2addr v0, p1

    .line 39
    goto :goto_0

    .line 40
    :goto_1
    return v0
.end method
