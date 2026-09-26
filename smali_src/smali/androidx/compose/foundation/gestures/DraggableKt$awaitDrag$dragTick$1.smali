.class final Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt;->g(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lw7/u;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/u;ZLandroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $channel:Lkotlinx/coroutines/channels/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/u<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $orientation:Landroidx/compose/foundation/gestures/Orientation;

.field final synthetic $reverseDirection:Z

.field final synthetic $velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlinx/coroutines/channels/u;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Lkotlinx/coroutines/channels/u<",
            "-",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$channel:Lkotlinx/coroutines/channels/u;

    iput-boolean p4, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$reverseDirection:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 5
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "event"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->b(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->g(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt;->d(JLandroidx/compose/foundation/gestures/Orientation;)F

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$channel:Lkotlinx/coroutines/channels/u;

    .line 26
    .line 27
    new-instance v2, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 28
    .line 29
    iget-boolean v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$reverseDirection:Z

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    const/4 v3, -0x1

    .line 33
    int-to-float v3, v3

    .line 34
    mul-float/2addr v0, v3

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 38
    move-result-wide v3

    .line 39
    const/4 p1, 0x0

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v0, v3, v4, p1}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(FJLkotlin/jvm/internal/k;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v2}, Lkotlinx/coroutines/channels/u;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->a(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
