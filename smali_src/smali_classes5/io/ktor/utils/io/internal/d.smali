.class public final Lio/ktor/utils/io/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final synthetic _closeWaitJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _closeWaitJob:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic closed:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final delegateClose:Z

.field private final delegatedTo:Lio/ktor/utils/io/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_closeWaitJob"

    const-class v2, Lio/ktor/utils/io/internal/d;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/internal/d;->_closeWaitJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/a;Z)V
    .locals 1
    .param p1    # Lio/ktor/utils/io/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "delegatedTo"

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
    iput-object p1, p0, Lio/ktor/utils/io/internal/d;->delegatedTo:Lio/ktor/utils/io/a;

    .line 11
    .line 12
    iput-boolean p2, p0, Lio/ktor/utils/io/internal/d;->delegateClose:Z

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    iput-object p1, p0, Lio/ktor/utils/io/internal/d;->_closeWaitJob:Ljava/lang/Object;

    .line 16
    const/4 p1, 0x0

    .line 17
    .line 18
    iput p1, p0, Lio/ktor/utils/io/internal/d;->closed:I

    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput v0, p0, Lio/ktor/utils/io/internal/d;->closed:I

    .line 4
    .line 5
    sget-object v1, Lio/ktor/utils/io/internal/d;->_closeWaitJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Lkotlinx/coroutines/b2;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, v0, v2}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 18
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/ktor/utils/io/internal/d;->delegateClose:Z

    return v0
.end method

.method public final c()Lio/ktor/utils/io/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/d;->delegatedTo:Lio/ktor/utils/io/a;

    return-object v0
.end method
