.class final Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$5;
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
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$5;->$initialOffset:Le8/l;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$5;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p1}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    iget-object v4, p0, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$5;->this$0:Landroidx/compose/animation/AnimatedContentScope;

    .line 11
    .line 12
    .line 13
    invoke-static {v4}, Landroidx/compose/animation/AnimatedContentScope;->e(Landroidx/compose/animation/AnimatedContentScope;)J

    .line 14
    move-result-wide v4

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, v3, v4, v5}, Landroidx/compose/animation/AnimatedContentScope;->d(Landroidx/compose/animation/AnimatedContentScope;JJ)J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 22
    move-result v1

    .line 23
    neg-int v1, v1

    .line 24
    sub-int/2addr v1, p1

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Ljava/lang/Integer;

    .line 35
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
    invoke-virtual {p0, p1}, Landroidx/compose/animation/AnimatedContentScope$slideIntoContainer$5;->b(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
