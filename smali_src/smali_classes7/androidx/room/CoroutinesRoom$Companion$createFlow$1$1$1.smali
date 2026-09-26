.class final Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/o0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1$1"
    f = "CoroutinesRoom.kt"
    l = {
        0x7f,
        0x81
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $db:Landroidx/room/RoomDatabase;

.field final synthetic $observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

.field final synthetic $observerChannel:Lkotlinx/coroutines/channels/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $resultChannel:Lkotlinx/coroutines/channels/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;Lkotlinx/coroutines/channels/d;Ljava/util/concurrent/Callable;Lkotlinx/coroutines/channels/d;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;",
            "Lkotlinx/coroutines/channels/d<",
            "Lw7/l0;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/channels/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    iput-object p3, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observerChannel:Lkotlinx/coroutines/channels/d;

    iput-object p4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$callable:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$resultChannel:Lkotlinx/coroutines/channels/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance p1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;

    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    iget-object v2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    iget-object v3, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observerChannel:Lkotlinx/coroutines/channels/d;

    iget-object v4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$callable:Ljava/util/concurrent/Callable;

    iget-object v5, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$resultChannel:Lkotlinx/coroutines/channels/d;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;Lkotlinx/coroutines/channels/d;Ljava/util/concurrent/Callable;Lkotlinx/coroutines/channels/d;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/o0;
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
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    iget v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->label:I

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lkotlinx/coroutines/channels/f;

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    move-object p1, v1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    move-object v1, p0

    .line 26
    goto :goto_3

    .line 27
    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1

    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lkotlinx/coroutines/channels/f;

    .line 39
    .line 40
    .line 41
    :try_start_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    move-object v4, v1

    .line 43
    move-object v1, p0

    .line 44
    goto :goto_2

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->m()Landroidx/room/InvalidationTracker;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroidx/room/InvalidationTracker;->c(Landroidx/room/InvalidationTracker$Observer;)V

    .line 59
    .line 60
    :try_start_2
    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observerChannel:Lkotlinx/coroutines/channels/d;

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Lkotlinx/coroutines/channels/t;->iterator()Lkotlinx/coroutines/channels/f;

    .line 64
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :goto_0
    move-object v1, p0

    .line 66
    .line 67
    :goto_1
    :try_start_3
    iput-object p1, v1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    iput v3, v1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->label:I

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v1}, Lkotlinx/coroutines/channels/f;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    if-ne v4, v0, :cond_3

    .line 76
    return-object v0

    .line 77
    :cond_3
    move-object v6, v4

    .line 78
    move-object v4, p1

    .line 79
    move-object p1, v6

    .line 80
    .line 81
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    move-result p1

    .line 86
    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    .line 90
    invoke-interface {v4}, Lkotlinx/coroutines/channels/f;->next()Ljava/lang/Object;

    .line 91
    .line 92
    iget-object p1, v1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$callable:Ljava/util/concurrent/Callable;

    .line 93
    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    iget-object v5, v1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$resultChannel:Lkotlinx/coroutines/channels/d;

    .line 99
    .line 100
    iput-object v4, v1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    iput v2, v1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->label:I

    .line 103
    .line 104
    .line 105
    invoke-interface {v5, p1, v1}, Lkotlinx/coroutines/channels/u;->w(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 106
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    .line 108
    if-ne p1, v0, :cond_4

    .line 109
    return-object v0

    .line 110
    :cond_4
    move-object p1, v4

    .line 111
    goto :goto_1

    .line 112
    :catchall_1
    move-exception p1

    .line 113
    goto :goto_3

    .line 114
    .line 115
    :cond_5
    iget-object p1, v1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->m()Landroidx/room/InvalidationTracker;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    iget-object v0, v1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroidx/room/InvalidationTracker;->o(Landroidx/room/InvalidationTracker$Observer;)V

    .line 125
    .line 126
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 127
    return-object p1

    .line 128
    .line 129
    :goto_3
    iget-object v0, v1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->m()Landroidx/room/InvalidationTracker;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    iget-object v1, v1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroidx/room/InvalidationTracker;->o(Landroidx/room/InvalidationTracker$Observer;)V

    .line 139
    throw p1
.end method
