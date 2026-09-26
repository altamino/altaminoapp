.class public final Landroidx/compose/animation/core/FloatTweenSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/FloatAnimationSpec;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final delay:I

.field private final duration:I

.field private final easing:Landroidx/compose/animation/core/Easing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/FloatTweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(IILandroidx/compose/animation/core/Easing;)V
    .locals 1
    .param p3    # Landroidx/compose/animation/core/Easing;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "easing"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/FloatTweenSpec;->duration:I

    iput p2, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delay:I

    iput-object p3, p0, Landroidx/compose/animation/core/FloatTweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    return-void
.end method

.method public synthetic constructor <init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/16 p1, 0x12c

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 3
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->a()Landroidx/compose/animation/core/Easing;

    move-result-object p3

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/FloatTweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    return-void
.end method

.method private final f(J)J
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delay:I

    .line 3
    int-to-long v0, v0

    .line 4
    .line 5
    sub-long v2, p1, v0

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/animation/core/FloatTweenSpec;->duration:I

    .line 10
    int-to-long v6, p1

    .line 11
    .line 12
    .line 13
    invoke-static/range {v2 .. v7}, Lj8/m;->p(JJJ)J

    .line 14
    move-result-wide p1

    .line 15
    return-wide p1
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/animation/core/c;->b(Landroidx/compose/animation/core/FloatAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Landroidx/compose/animation/core/c;->c(Landroidx/compose/animation/core/FloatAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;

    move-result-object p1

    return-object p1
.end method

.method public b(JFFF)F
    .locals 10

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0xf4240

    .line 4
    div-long/2addr p1, v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/core/FloatTweenSpec;->f(J)J

    .line 8
    move-result-wide p1

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v2, p1, v2

    .line 13
    .line 14
    if-gez v2, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    .line 18
    :cond_0
    if-nez v2, :cond_1

    .line 19
    return p5

    .line 20
    .line 21
    :cond_1
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    sub-long v2, p1, v2

    .line 24
    .line 25
    mul-long v5, v2, v0

    .line 26
    move-object v4, p0

    .line 27
    move v7, p3

    .line 28
    move v8, p4

    .line 29
    move v9, p5

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {v4 .. v9}, Landroidx/compose/animation/core/FloatTweenSpec;->e(JFFF)F

    .line 33
    move-result v2

    .line 34
    .line 35
    mul-long v4, p1, v0

    .line 36
    move-object v3, p0

    .line 37
    move v6, p3

    .line 38
    move v7, p4

    .line 39
    move v8, p5

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {v3 .. v8}, Landroidx/compose/animation/core/FloatTweenSpec;->e(JFFF)F

    .line 43
    move-result p1

    .line 44
    sub-float/2addr p1, v2

    .line 45
    .line 46
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 47
    mul-float/2addr p1, p2

    .line 48
    return p1
.end method

.method public c(FFF)J
    .locals 2

    .line 1
    iget p1, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delay:I

    iget p2, p0, Landroidx/compose/animation/core/FloatTweenSpec;->duration:I

    add-int/2addr p1, p2

    int-to-long p1, p1

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public synthetic d(FFF)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/core/c;->a(Landroidx/compose/animation/core/FloatAnimationSpec;FFF)F

    move-result p1

    return p1
.end method

.method public e(JFFF)F
    .locals 2

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0xf4240

    .line 4
    div-long/2addr p1, v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/core/FloatTweenSpec;->f(J)J

    .line 8
    move-result-wide p1

    .line 9
    .line 10
    iget p5, p0, Landroidx/compose/animation/core/FloatTweenSpec;->duration:I

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    if-nez p5, :cond_0

    .line 15
    move p1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    long-to-float p1, p1

    .line 18
    int-to-float p2, p5

    .line 19
    div-float/2addr p1, p2

    .line 20
    .line 21
    :goto_0
    iget-object p2, p0, Landroidx/compose/animation/core/FloatTweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    .line 22
    const/4 p5, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p5, v0}, Lj8/m;->m(FFF)F

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, p1}, Landroidx/compose/animation/core/Easing;->a(F)F

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-static {p3, p4, p1}, Landroidx/compose/animation/core/VectorConvertersKt;->k(FFF)F

    .line 34
    move-result p1

    .line 35
    return p1
.end method
