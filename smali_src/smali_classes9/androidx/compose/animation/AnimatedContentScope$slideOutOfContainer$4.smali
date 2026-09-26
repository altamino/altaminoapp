.class final Landroidx/compose/animation/AnimatedContentScope$slideOutOfContainer$4;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $targetOffset:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/animation/AnimatedContentScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/AnimatedContentScope<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final b(I)Ljava/lang/Integer;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope$slideOutOfContainer$4;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/animation/AnimatedContentScope;->m()Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentScope$slideOutOfContainer$4;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/animation/AnimatedContentScope;->n()Landroidx/compose/animation/core/Transition;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Landroidx/compose/runtime/State;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 34
    move-result-wide v0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 41
    move-result-wide v0

    .line 42
    .line 43
    :goto_0
    iget-object v2, p0, Landroidx/compose/animation/AnimatedContentScope$slideOutOfContainer$4;->$targetOffset:Le8/l;

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/compose/animation/AnimatedContentScope$slideOutOfContainer$4;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p1}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 49
    move-result-wide v4

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v4, v5, v0, v1}, Landroidx/compose/animation/AnimatedContentScope;->d(Landroidx/compose/animation/AnimatedContentScope;JJ)J

    .line 53
    move-result-wide v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 57
    move-result v0

    .line 58
    neg-int v0, v0

    .line 59
    sub-int/2addr v0, p1

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-interface {v2, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    check-cast p1, Ljava/lang/Integer;

    .line 70
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/compose/animation/AnimatedContentScope$slideOutOfContainer$4;->b(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
