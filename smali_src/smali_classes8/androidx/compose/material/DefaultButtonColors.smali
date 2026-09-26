.class final Landroidx/compose/material/DefaultButtonColors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material/ButtonColors;


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation


# instance fields
.field private final backgroundColor:J

.field private final contentColor:J

.field private final disabledBackgroundColor:J

.field private final disabledContentColor:J


# direct methods
.method private constructor <init>(JJJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material/DefaultButtonColors;->backgroundColor:J

    iput-wide p3, p0, Landroidx/compose/material/DefaultButtonColors;->contentColor:J

    iput-wide p5, p0, Landroidx/compose/material/DefaultButtonColors;->disabledBackgroundColor:J

    iput-wide p7, p0, Landroidx/compose/material/DefaultButtonColors;->disabledContentColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroidx/compose/material/DefaultButtonColors;-><init>(JJJJ)V

    return-void
.end method


# virtual methods
.method public a(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 2
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, -0x270e63e3

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/compose/material/DefaultButtonColors;->backgroundColor:J

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-wide v0, p0, Landroidx/compose/material/DefaultButtonColors;->disabledBackgroundColor:J

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 17
    move-result-object p1

    .line 18
    const/4 p3, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 26
    return-object p1
.end method

.method public b(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 2
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, -0x7f2ce0b4

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/compose/material/DefaultButtonColors;->contentColor:J

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-wide v0, p0, Landroidx/compose/material/DefaultButtonColors;->disabledContentColor:J

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 17
    move-result-object p1

    .line 18
    const/4 p3, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 26
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_6

    .line 8
    .line 9
    const-class v2, Landroidx/compose/material/DefaultButtonColors;

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    check-cast p1, Landroidx/compose/material/DefaultButtonColors;

    .line 31
    .line 32
    iget-wide v2, p0, Landroidx/compose/material/DefaultButtonColors;->backgroundColor:J

    .line 33
    .line 34
    iget-wide v4, p1, Landroidx/compose/material/DefaultButtonColors;->backgroundColor:J

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    return v1

    .line 42
    .line 43
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material/DefaultButtonColors;->contentColor:J

    .line 44
    .line 45
    iget-wide v4, p1, Landroidx/compose/material/DefaultButtonColors;->contentColor:J

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 49
    move-result v2

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    return v1

    .line 53
    .line 54
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material/DefaultButtonColors;->disabledBackgroundColor:J

    .line 55
    .line 56
    iget-wide v4, p1, Landroidx/compose/material/DefaultButtonColors;->disabledBackgroundColor:J

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 60
    move-result v2

    .line 61
    .line 62
    if-nez v2, :cond_4

    .line 63
    return v1

    .line 64
    .line 65
    :cond_4
    iget-wide v2, p0, Landroidx/compose/material/DefaultButtonColors;->disabledContentColor:J

    .line 66
    .line 67
    iget-wide v4, p1, Landroidx/compose/material/DefaultButtonColors;->disabledContentColor:J

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 71
    move-result p1

    .line 72
    .line 73
    if-nez p1, :cond_5

    .line 74
    return v1

    .line 75
    :cond_5
    return v0

    .line 76
    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/material/DefaultButtonColors;->backgroundColor:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-wide v1, p0, Landroidx/compose/material/DefaultButtonColors;->contentColor:J

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-wide v1, p0, Landroidx/compose/material/DefaultButtonColors;->disabledBackgroundColor:J

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-wide v1, p0, Landroidx/compose/material/DefaultButtonColors;->disabledContentColor:J

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    return v0
.end method
