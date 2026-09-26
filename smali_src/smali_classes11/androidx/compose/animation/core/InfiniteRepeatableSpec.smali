.class public final Landroidx/compose/animation/core/InfiniteRepeatableSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/AnimationSpec;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/AnimationSpec<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final initialStartOffset:J

.field private final repeatMode:Landroidx/compose/animation/core/RepeatMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)V
    .locals 9

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repeatMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 8
    invoke-static {v2, v2, v0, v1}, Landroidx/compose/animation/core/StartOffset;->c(IIILkotlin/jvm/internal/k;)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 6
    sget-object p2, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)V

    return-void
.end method

.method private constructor <init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
            "TT;>;",
            "Landroidx/compose/animation/core/RepeatMode;",
            "J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    iput-wide p3, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILkotlin/jvm/internal/k;)V
    .locals 6

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 3
    sget-object p2, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x2

    .line 4
    invoke-static {p3, p3, p4, p2}, Landroidx/compose/animation/core/StartOffset;->c(IIILkotlin/jvm/internal/k;)J

    move-result-wide p3

    :cond_1
    move-wide v3, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 7
    .param p1    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;)",
            "Landroidx/compose/animation/core/VectorizedAnimationSpec<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "converter"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, p1}, Landroidx/compose/animation/core/DurationBasedAnimationSpec;->a(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    .line 16
    .line 17
    iget-wide v4, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v1, v0

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/k;)V

    .line 23
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 8
    .line 9
    iget-object v0, p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    .line 22
    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    iget-wide v2, p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    .line 26
    .line 27
    iget-wide v4, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/animation/core/StartOffset;->e(JJ)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-wide v1, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Landroidx/compose/animation/core/StartOffset;->f(J)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method
