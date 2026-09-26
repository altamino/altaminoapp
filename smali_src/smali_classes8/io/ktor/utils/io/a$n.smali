.class final Lio/ktor/utils/io/a$n;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/a;-><init>(ZLt7/g;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteBufferChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel$writeSuspension$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel\n*L\n1#1,2411:1\n1#2:2412\n1#2:2416\n2341#3,3:2413\n2345#3,6:2417\n*S KotlinDebug\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel$writeSuspension$1\n*L\n2280#1:2416\n2280#1:2413,3\n2280#1:2417,6\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/utils/io/a;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/a;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/utils/io/a$n;->this$0:Lio/ktor/utils/io/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "ucont"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lio/ktor/utils/io/a$n;->this$0:Lio/ktor/utils/io/a;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lio/ktor/utils/io/a;->r(Lio/ktor/utils/io/a;)I

    .line 11
    move-result v0

    .line 12
    .line 13
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/ktor/utils/io/a$n;->this$0:Lio/ktor/utils/io/a;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lio/ktor/utils/io/a;->p(Lio/ktor/utils/io/a;)Lio/ktor/utils/io/internal/c;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/c;->c()Ljava/lang/Throwable;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {v1}, Lio/ktor/utils/io/b;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 30
    .line 31
    new-instance p1, Lw7/i;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 35
    throw p1

    .line 36
    .line 37
    :cond_2
    :goto_1
    iget-object v1, p0, Lio/ktor/utils/io/a$n;->this$0:Lio/ktor/utils/io/a;

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0}, Lio/ktor/utils/io/a;->F(Lio/ktor/utils/io/a;I)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    sget-object v1, Lw7/v;->Companion:Lw7/v$a;

    .line 46
    .line 47
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :cond_3
    iget-object v1, p0, Lio/ktor/utils/io/a$n;->this$0:Lio/ktor/utils/io/a;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    iget-object v3, p0, Lio/ktor/utils/io/a$n;->this$0:Lio/ktor/utils/io/a;

    .line 64
    .line 65
    .line 66
    :cond_4
    invoke-static {v1}, Lio/ktor/utils/io/a;->q(Lio/ktor/utils/io/a;)Lkotlin/coroutines/d;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    if-nez v4, :cond_8

    .line 70
    .line 71
    .line 72
    invoke-static {v3, v0}, Lio/ktor/utils/io/a;->F(Lio/ktor/utils/io/a;I)Z

    .line 73
    move-result v4

    .line 74
    .line 75
    if-nez v4, :cond_5

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_5
    sget-object v4, Lio/ktor/utils/io/a;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 79
    const/4 v5, 0x0

    .line 80
    .line 81
    .line 82
    invoke-static {v4, v1, v5, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    move-result v6

    .line 84
    .line 85
    if-eqz v6, :cond_4

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v0}, Lio/ktor/utils/io/a;->F(Lio/ktor/utils/io/a;I)Z

    .line 89
    move-result v3

    .line 90
    .line 91
    if-nez v3, :cond_6

    .line 92
    .line 93
    .line 94
    invoke-static {v4, v1, v2, v5}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    move-result v1

    .line 96
    .line 97
    if-nez v1, :cond_0

    .line 98
    .line 99
    :cond_6
    :goto_2
    iget-object p1, p0, Lio/ktor/utils/io/a$n;->this$0:Lio/ktor/utils/io/a;

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v0}, Lio/ktor/utils/io/a;->b(Lio/ktor/utils/io/a;I)V

    .line 103
    .line 104
    iget-object p1, p0, Lio/ktor/utils/io/a$n;->this$0:Lio/ktor/utils/io/a;

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lio/ktor/utils/io/a;->A(Lio/ktor/utils/io/a;)Z

    .line 108
    move-result p1

    .line 109
    .line 110
    if-eqz p1, :cond_7

    .line 111
    .line 112
    iget-object p1, p0, Lio/ktor/utils/io/a$n;->this$0:Lio/ktor/utils/io/a;

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Lio/ktor/utils/io/a;->y(Lio/ktor/utils/io/a;)V

    .line 116
    .line 117
    .line 118
    :cond_7
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    .line 122
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    const-string v0, "Operation is already in progress"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlin/coroutines/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/a$n;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
