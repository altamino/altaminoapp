.class final Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Landroidx/compose/foundation/gestures/PointerAwareDragScope;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$2$2"
    f = "Draggable.kt"
    l = {
        0xf6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $channel:Lkotlinx/coroutines/channels/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/d<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $event:Lkotlin/jvm/internal/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/p0<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/p0;Lkotlinx/coroutines/channels/d;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/p0<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;",
            "Lkotlinx/coroutines/channels/d<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->$event:Lkotlin/jvm/internal/p0;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->$channel:Lkotlinx/coroutines/channels/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->$event:Lkotlin/jvm/internal/p0;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->$channel:Lkotlinx/coroutines/channels/d;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;-><init>(Lkotlin/jvm/internal/p0;Lkotlinx/coroutines/channels/d;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Landroidx/compose/foundation/gestures/PointerAwareDragScope;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/foundation/gestures/PointerAwareDragScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/PointerAwareDragScope;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/gestures/PointerAwareDragScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->f(Landroidx/compose/foundation/gestures/PointerAwareDragScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->label:I

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->L$1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lkotlin/jvm/internal/p0;

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Landroidx/compose/foundation/gestures/PointerAwareDragScope;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 23
    move-object v4, v3

    .line 24
    move-object v3, v1

    .line 25
    move-object v1, v0

    .line 26
    move-object v0, p0

    .line 27
    goto :goto_2

    .line 28
    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Landroidx/compose/foundation/gestures/PointerAwareDragScope;

    .line 43
    move-object v3, p1

    .line 44
    move-object p1, p0

    .line 45
    .line 46
    :goto_0
    iget-object v1, p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->$event:Lkotlin/jvm/internal/p0;

    .line 47
    .line 48
    iget-object v1, v1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 49
    .line 50
    instance-of v4, v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 51
    .line 52
    if-nez v4, :cond_5

    .line 53
    .line 54
    instance-of v4, v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 55
    .line 56
    if-nez v4, :cond_5

    .line 57
    .line 58
    instance-of v4, v1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 59
    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v1, 0x0

    .line 65
    .line 66
    :goto_1
    if-eqz v1, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->a()F

    .line 70
    move-result v4

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->b()J

    .line 74
    move-result-wide v5

    .line 75
    .line 76
    .line 77
    invoke-interface {v3, v4, v5, v6}, Landroidx/compose/foundation/gestures/PointerAwareDragScope;->a(FJ)V

    .line 78
    .line 79
    :cond_3
    iget-object v1, p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->$event:Lkotlin/jvm/internal/p0;

    .line 80
    .line 81
    iget-object v4, p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->$channel:Lkotlinx/coroutines/channels/d;

    .line 82
    .line 83
    iput-object v3, p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    iput-object v1, p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->L$1:Ljava/lang/Object;

    .line 86
    .line 87
    iput v2, p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;->label:I

    .line 88
    .line 89
    .line 90
    invoke-interface {v4, p1}, Lkotlinx/coroutines/channels/t;->v(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 91
    move-result-object v4

    .line 92
    .line 93
    if-ne v4, v0, :cond_4

    .line 94
    return-object v0

    .line 95
    :cond_4
    move-object v7, v0

    .line 96
    move-object v0, p1

    .line 97
    move-object p1, v4

    .line 98
    move-object v4, v3

    .line 99
    move-object v3, v1

    .line 100
    move-object v1, v7

    .line 101
    .line 102
    :goto_2
    iput-object p1, v3, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 103
    move-object p1, v0

    .line 104
    move-object v0, v1

    .line 105
    move-object v3, v4

    .line 106
    goto :goto_0

    .line 107
    .line 108
    :cond_5
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 109
    return-object p1
.end method
