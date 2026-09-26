.class public final Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/selection/MouseSelectionObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextController;->o(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

.field private lastPosition:J

.field final synthetic this$0:Landroidx/compose/foundation/text/TextController;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextController;Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 13
    move-result-wide p1

    .line 14
    .line 15
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    .line 16
    return-void
.end method


# virtual methods
.method public a(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 9
    .param p3    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "adjustment"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->b()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 15
    move-result-object v2

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x0

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    return v5

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextState;->g()J

    .line 38
    move-result-wide v3

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->b(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    return v5

    .line 46
    .line 47
    :cond_1
    iget-wide v5, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    .line 48
    const/4 v7, 0x0

    .line 49
    move-wide v3, p1

    .line 50
    move-object v8, p3

    .line 51
    .line 52
    .line 53
    invoke-interface/range {v1 .. v8}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->g(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    .line 54
    move-result p3

    .line 55
    .line 56
    if-ne p3, v0, :cond_2

    .line 57
    .line 58
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    .line 59
    :cond_2
    return v0
.end method

.method public b(J)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->b()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 17
    .line 18
    .line 19
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    return v4

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->g()J

    .line 32
    move-result-wide v5

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v5, v6}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->b(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    return v4

    .line 40
    .line 41
    :cond_1
    iget-wide v5, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    .line 42
    const/4 v7, 0x0

    .line 43
    .line 44
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->e()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 48
    move-result-object v8

    .line 49
    move-wide v3, p1

    .line 50
    .line 51
    .line 52
    invoke-interface/range {v1 .. v8}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->g(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    .line 58
    :cond_2
    const/4 p1, 0x1

    .line 59
    return p1
.end method

.method public c(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 5
    .param p3    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "adjustment"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->b()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 26
    move-result v4

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    return v1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-interface {v2, v0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->a(Landroidx/compose/ui/layout/LayoutCoordinates;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 33
    .line 34
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextState;->g()J

    .line 42
    move-result-wide p1

    .line 43
    .line 44
    .line 45
    invoke-static {v2, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->b(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :cond_1
    return v1
.end method

.method public d(J)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->b()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 10
    move-result-object v2

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-object v9, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 16
    .line 17
    iget-object v10, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 18
    .line 19
    .line 20
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    return v0

    .line 25
    .line 26
    :cond_0
    iget-wide v5, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    .line 27
    const/4 v7, 0x0

    .line 28
    .line 29
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->e()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 33
    move-result-object v8

    .line 34
    move-object v1, v9

    .line 35
    move-wide v3, p1

    .line 36
    .line 37
    .line 38
    invoke-interface/range {v1 .. v8}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->g(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$mouseSelectionObserver$1;->lastPosition:J

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {v10}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextState;->g()J

    .line 51
    move-result-wide p1

    .line 52
    .line 53
    .line 54
    invoke-static {v9, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->b(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_2
    return v0
.end method
