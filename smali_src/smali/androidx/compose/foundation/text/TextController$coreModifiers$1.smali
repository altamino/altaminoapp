.class final Landroidx/compose/foundation/text/TextController$coreModifiers$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextController;-><init>(Landroidx/compose/foundation/text/TextState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/TextController;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextController;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/TextState;->k(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/foundation/text/TextController;->a(Landroidx/compose/foundation/text/TextController;)Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextState;->g()J

    .line 30
    move-result-wide v1

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->b(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    .line 40
    move-result-wide v0

    .line 41
    .line 42
    iget-object p1, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextState;->e()J

    .line 50
    move-result-wide v2

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->j(JJ)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-nez p1, :cond_0

    .line 57
    .line 58
    iget-object p1, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Landroidx/compose/foundation/text/TextController;->a(Landroidx/compose/foundation/text/TextController;)Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    iget-object v2, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Landroidx/compose/foundation/text/TextState;->g()J

    .line 74
    move-result-wide v2

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v2, v3}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->b(J)V

    .line 78
    .line 79
    :cond_0
    iget-object p1, p0, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Landroidx/compose/foundation/text/TextState;->n(J)V

    .line 87
    :cond_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/TextController$coreModifiers$1;->a(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
