.class final Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$4;
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
.field final synthetic $initialOffset:Le8/l;
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
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$4;->$initialOffset:Le8/l;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$4;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Landroidx/compose/animation/AnimatedContentScope;->e(Landroidx/compose/animation/AnimatedContentScope;)J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 12
    move-result v1

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$4;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p1}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 18
    move-result-wide v3

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$4;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroidx/compose/animation/AnimatedContentScope;->e(Landroidx/compose/animation/AnimatedContentScope;)J

    .line 24
    move-result-wide v5

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3, v4, v5, v6}, Landroidx/compose/animation/AnimatedContentScope;->d(Landroidx/compose/animation/AnimatedContentScope;JJ)J

    .line 28
    move-result-wide v2

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 32
    move-result p1

    .line 33
    sub-int/2addr v1, p1

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Ljava/lang/Integer;

    .line 44
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
    invoke-virtual {p0, p1}, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$4;->b(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
