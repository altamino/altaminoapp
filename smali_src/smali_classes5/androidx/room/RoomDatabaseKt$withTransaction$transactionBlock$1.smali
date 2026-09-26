.class final Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomDatabaseKt;->d(Landroidx/room/RoomDatabase;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
        "-TR;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.room.RoomDatabaseKt$withTransaction$transactionBlock$1"
    f = "RoomDatabaseExt.kt"
    l = {
        0x38
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $block:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Lkotlin/coroutines/d<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_withTransaction:Landroidx/room/RoomDatabase;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/room/RoomDatabase;Le8/l;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "Le8/l<",
            "-",
            "Lkotlin/coroutines/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->$this_withTransaction:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->$block:Le8/l;

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

    new-instance v0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;

    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->$this_withTransaction:Landroidx/room/RoomDatabase;

    iget-object v2, p0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->$block:Le8/l;

    invoke-direct {v0, v1, v2, p2}, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;-><init>(Landroidx/room/RoomDatabase;Le8/l;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    iget v1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->label:I

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
    iget-object v0, p0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->L$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroidx/room/TransactionElement;

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lkotlinx/coroutines/o0;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    sget-object v1, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 50
    .line 51
    check-cast p1, Landroidx/room/TransactionElement;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/room/TransactionElement;->c()V

    .line 55
    .line 56
    :try_start_1
    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->$this_withTransaction:Landroidx/room/RoomDatabase;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 60
    .line 61
    :try_start_2
    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->$block:Le8/l;

    .line 62
    .line 63
    iput-object p1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    iput v2, p0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->label:I

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 70
    .line 71
    if-ne v1, v0, :cond_2

    .line 72
    return-object v0

    .line 73
    :cond_2
    move-object v0, p1

    .line 74
    move-object p1, v1

    .line 75
    .line 76
    :goto_0
    :try_start_3
    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->$this_withTransaction:Landroidx/room/RoomDatabase;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->D()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    .line 81
    :try_start_4
    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->$this_withTransaction:Landroidx/room/RoomDatabase;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->i()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Landroidx/room/TransactionElement;->p()V

    .line 88
    return-object p1

    .line 89
    :catchall_1
    move-exception p1

    .line 90
    goto :goto_2

    .line 91
    :catchall_2
    move-exception v0

    .line 92
    move-object v3, v0

    .line 93
    move-object v0, p1

    .line 94
    move-object p1, v3

    .line 95
    .line 96
    :goto_1
    :try_start_5
    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$transactionBlock$1;->$this_withTransaction:Landroidx/room/RoomDatabase;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->i()V

    .line 100
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 101
    :catchall_3
    move-exception v0

    .line 102
    move-object v3, v0

    .line 103
    move-object v0, p1

    .line 104
    move-object p1, v3

    .line 105
    .line 106
    .line 107
    :goto_2
    invoke-virtual {v0}, Landroidx/room/TransactionElement;->p()V

    .line 108
    throw p1
.end method
