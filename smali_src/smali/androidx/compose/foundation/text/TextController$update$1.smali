.class public final Landroidx/compose/foundation/text/TextController$update$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/TextDragObserver;


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

.field private dragTotalDistance:J

.field private lastPosition:J

.field final synthetic this$0:Landroidx/compose/foundation/text/TextController;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextController;Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

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
    move-result-wide v0

    .line 14
    .line 15
    iput-wide v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 19
    move-result-wide p1

    .line 20
    .line 21
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    .line 22
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(J)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

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
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 17
    .line 18
    .line 19
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextState;->g()J

    .line 31
    move-result-wide v3

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->b(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    return-void

    .line 39
    .line 40
    :cond_1
    iget-wide v3, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v4, p1, p2}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    .line 44
    move-result-wide p1

    .line 45
    .line 46
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    .line 47
    .line 48
    iget-wide v3, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v4, p1, p2}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    .line 52
    move-result-wide p1

    .line 53
    .line 54
    iget-wide v3, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v3, v4, p1, p2}, Landroidx/compose/foundation/text/TextController;->e(Landroidx/compose/foundation/text/TextController;JJ)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    iget-wide v5, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 63
    .line 64
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->d()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 68
    move-result-object v8

    .line 69
    const/4 v7, 0x0

    .line 70
    move-wide v3, p1

    .line 71
    .line 72
    .line 73
    invoke-interface/range {v1 .. v8}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->g(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x1

    .line 76
    .line 77
    if-ne v0, v1, :cond_2

    .line 78
    .line 79
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 80
    .line 81
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 85
    move-result-wide p1

    .line 86
    .line 87
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    .line 88
    :cond_2
    return-void
.end method

.method public c(J)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

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
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {v1, p1, p2, p1, p2}, Landroidx/compose/foundation/text/TextController;->e(Landroidx/compose/foundation/text/TextController;JJ)Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextState;->g()J

    .line 37
    move-result-wide v0

    .line 38
    .line 39
    .line 40
    invoke-interface {v2, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->i(J)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->g()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-interface {v2, v0, p1, p2, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->a(Landroidx/compose/ui/layout/LayoutCoordinates;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 51
    .line 52
    :goto_0
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->lastPosition:J

    .line 53
    .line 54
    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 55
    .line 56
    iget-object p2, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextState;->g()J

    .line 64
    move-result-wide v0

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->b(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-nez p1, :cond_3

    .line 71
    return-void

    .line 72
    .line 73
    :cond_3
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 77
    move-result-wide p1

    .line 78
    .line 79
    iput-wide p1, p0, Landroidx/compose/foundation/text/TextController$update$1;->dragTotalDistance:J

    .line 80
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCancel()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextState;->g()J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->b(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->d()V

    .line 24
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/foundation/text/TextController$update$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextState;->g()J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->b(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/foundation/text/TextController$update$1;->$selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->d()V

    .line 24
    :cond_0
    return-void
.end method
