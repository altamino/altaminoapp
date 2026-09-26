.class public abstract Lio/ktor/client/engine/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/client/engine/b;


# static fields
.field private static final synthetic closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic closed:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coroutineContext$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final engineName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/ktor/client/engine/c;

    const-string v1, "closed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/client/engine/c;->closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "engineName"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lio/ktor/client/engine/c;->engineName:Ljava/lang/String;

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput p1, p0, Lio/ktor/client/engine/c;->closed:I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lio/ktor/client/engine/d;->a()Lkotlinx/coroutines/k0;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iput-object p1, p0, Lio/ktor/client/engine/c;->dispatcher:Lkotlinx/coroutines/k0;

    .line 20
    .line 21
    new-instance p1, Lio/ktor/client/engine/c$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p0}, Lio/ktor/client/engine/c$a;-><init>(Lio/ktor/client/engine/c;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Lio/ktor/client/engine/c;->coroutineContext$delegate:Lw7/m;

    .line 31
    return-void
.end method

.method public static final synthetic a(Lio/ktor/client/engine/c;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/ktor/client/engine/c;->engineName:Ljava/lang/String;

    .line 3
    return-object p0
.end method


# virtual methods
.method public G()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/ktor/client/engine/e<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lio/ktor/client/engine/b$a;->g(Lio/ktor/client/engine/b;)Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public T(Lio/ktor/client/a;)V
    .locals 0
    .param p1    # Lio/ktor/client/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lio/ktor/client/engine/b$a;->h(Lio/ktor/client/engine/b;Lio/ktor/client/a;)V

    .line 4
    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lio/ktor/client/engine/c;->closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lio/ktor/client/engine/c;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sget-object v1, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    instance-of v1, v0, Lkotlinx/coroutines/a0;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    check-cast v0, Lkotlinx/coroutines/a0;

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    .line 31
    :goto_0
    if-nez v0, :cond_2

    .line 32
    return-void

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-interface {v0}, Lkotlinx/coroutines/a0;->complete()Z

    .line 36
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/engine/c;->coroutineContext$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lkotlin/coroutines/g;

    .line 9
    return-object v0
.end method

.method public h()Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/engine/c;->dispatcher:Lkotlinx/coroutines/k0;

    return-object v0
.end method
