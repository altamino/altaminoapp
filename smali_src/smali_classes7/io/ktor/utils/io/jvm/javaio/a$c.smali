.class public final Lio/ktor/utils/io/jvm/javaio/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/a;-><init>(Lkotlinx/coroutines/b2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/d<",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlocking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,316:1\n175#2,4:317\n*S KotlinDebug\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1\n*L\n148#1:317,4\n*E\n"
.end annotation


# instance fields
.field private final context:Lkotlin/coroutines/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lio/ktor/utils/io/jvm/javaio/a;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/jvm/javaio/a;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/a$c;->this$0:Lio/ktor/utils/io/jvm/javaio/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lio/ktor/utils/io/jvm/javaio/a;->g()Lkotlinx/coroutines/b2;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/i;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/i;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lio/ktor/utils/io/jvm/javaio/a;->g()Lkotlinx/coroutines/b2;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    sget-object p1, Lio/ktor/utils/io/jvm/javaio/i;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/i;

    .line 25
    .line 26
    :goto_0
    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/a$c;->context:Lkotlin/coroutines/g;

    .line 27
    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/a$c;->context:Lkotlin/coroutines/g;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lw7/v;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/a$c;->this$0:Lio/ktor/utils/io/jvm/javaio/a;

    .line 11
    .line 12
    :cond_1
    iget-object v2, v1, Lio/ktor/utils/io/jvm/javaio/a;->state:Ljava/lang/Object;

    .line 13
    .line 14
    instance-of v3, v2, Ljava/lang/Thread;

    .line 15
    .line 16
    if-eqz v3, :cond_2

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_2
    instance-of v4, v2, Lkotlin/coroutines/d;

    .line 20
    .line 21
    if-eqz v4, :cond_3

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_3
    invoke-static {v2, p0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v4

    .line 27
    .line 28
    if-eqz v4, :cond_7

    .line 29
    .line 30
    :goto_0
    sget-object v4, Lio/ktor/utils/io/jvm/javaio/a;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 31
    .line 32
    .line 33
    invoke-static {v4, v1, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v4

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    if-eqz v3, :cond_4

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/f;->a()Lio/ktor/utils/io/jvm/javaio/e;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v2}, Lio/ktor/utils/io/jvm/javaio/e;->b(Ljava/lang/Object;)V

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_4
    instance-of v0, v2, Lkotlin/coroutines/d;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lw7/v;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    check-cast v2, Lkotlin/coroutines/d;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-interface {v2, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_5
    :goto_1
    invoke-static {p1}, Lw7/v;->g(Ljava/lang/Object;)Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lw7/v;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    instance-of p1, p1, Ljava/util/concurrent/CancellationException;

    .line 82
    .line 83
    if-nez p1, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/a$c;->this$0:Lio/ktor/utils/io/jvm/javaio/a;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lio/ktor/utils/io/jvm/javaio/a;->g()Lkotlinx/coroutines/b2;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    if-eqz p1, :cond_6

    .line 92
    const/4 v0, 0x1

    .line 93
    const/4 v1, 0x0

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 97
    .line 98
    :cond_6
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/a$c;->this$0:Lio/ktor/utils/io/jvm/javaio/a;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lio/ktor/utils/io/jvm/javaio/a;->a(Lio/ktor/utils/io/jvm/javaio/a;)Lkotlinx/coroutines/g1;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    .line 107
    invoke-interface {p1}, Lkotlinx/coroutines/g1;->t()V

    .line 108
    :cond_7
    return-void
.end method
