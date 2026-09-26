.class final Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->m(Landroidx/compose/ui/input/pointer/PointerInputScope;Le8/l;Le8/a;Le8/a;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$5"
    f = "DragGestureDetector.kt"
    l = {
        0x114,
        0x118,
        0x11c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $onDrag:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragCancel:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragEnd:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragStart:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Le8/l;Le8/a;Le8/a;Le8/p;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lw7/l0;",
            ">;",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lw7/l0;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->$onDragStart:Le8/l;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->$onDragCancel:Le8/a;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->$onDragEnd:Le8/a;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->$onDrag:Le8/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 7
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

    new-instance v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->$onDragStart:Le8/l;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->$onDragCancel:Le8/a;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->$onDragEnd:Le8/a;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->$onDrag:Le8/p;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;-><init>(Le8/l;Le8/a;Le8/a;Le8/p;Lkotlin/coroutines/d;)V

    iput-object p1, v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public final f(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputScope;
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
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->f(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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
    iget v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->label:I

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    if-eq v1, v5, :cond_2

    .line 15
    .line 16
    if-eq v1, v4, :cond_1

    .line 17
    .line 18
    if-ne v1, v3, :cond_0

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_3

    .line 26
    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 38
    .line 39
    .line 40
    :try_start_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 57
    .line 58
    new-instance v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1;-><init>(Lkotlin/coroutines/d;)V

    .line 62
    .line 63
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    iput v5, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->label:I

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v1, p0}, Landroidx/compose/ui/input/pointer/PointerInputScope;->J(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    if-ne v1, v0, :cond_4

    .line 72
    return-object v0

    .line 73
    :cond_4
    move-object v10, v1

    .line 74
    move-object v1, p1

    .line 75
    move-object p1, v10

    .line 76
    .line 77
    :goto_0
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 78
    .line 79
    :try_start_2
    iput-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->L$0:Ljava/lang/Object;

    .line 80
    .line 81
    iput v4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->label:I

    .line 82
    .line 83
    .line 84
    invoke-static {v1, p1, p0}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    if-ne p1, v0, :cond_5

    .line 88
    return-object v0

    .line 89
    :cond_5
    :goto_1
    move-object v5, p1

    .line 90
    .line 91
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 92
    .line 93
    if-eqz v5, :cond_6

    .line 94
    .line 95
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->$onDragStart:Le8/l;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 99
    move-result-wide v6

    .line 100
    .line 101
    .line 102
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 103
    move-result-object v4

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    new-instance p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$1;

    .line 109
    .line 110
    iget-object v6, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->$onDragEnd:Le8/a;

    .line 111
    .line 112
    iget-object v7, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->$onDragCancel:Le8/a;

    .line 113
    .line 114
    iget-object v8, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->$onDrag:Le8/p;

    .line 115
    const/4 v9, 0x0

    .line 116
    move-object v4, p1

    .line 117
    .line 118
    .line 119
    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInputChange;Le8/a;Le8/a;Le8/p;Lkotlin/coroutines/d;)V

    .line 120
    .line 121
    iput-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->L$0:Ljava/lang/Object;

    .line 122
    .line 123
    iput v3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->label:I

    .line 124
    .line 125
    .line 126
    invoke-interface {v1, p1, p0}, Landroidx/compose/ui/input/pointer/PointerInputScope;->J(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 127
    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    .line 129
    if-ne p1, v0, :cond_6

    .line 130
    return-object v0

    .line 131
    .line 132
    :cond_6
    :goto_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 133
    return-object p1

    .line 134
    .line 135
    :goto_3
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGesturesAfterLongPress$5;->$onDragCancel:Le8/a;

    .line 136
    .line 137
    .line 138
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 139
    throw p1
.end method
