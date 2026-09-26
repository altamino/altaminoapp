.class public abstract Lkotlinx/coroutines/internal/f0;
.super Lkotlinx/coroutines/internal/e;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/r2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lkotlinx/coroutines/internal/f0<",
        "TS;>;>",
        "Lkotlinx/coroutines/internal/e<",
        "TS;>;",
        "Lkotlinx/coroutines/r2;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n1#1,269:1\n252#2,4:270\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n*L\n225#1:270,4\n*E\n"
.end annotation


# static fields
.field private static final cleanedAndPointers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile cleanedAndPointers:I

.field public final id:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/internal/f0;

    const-string v1, "cleanedAndPointers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/f0;->cleanedAndPointers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(JLkotlinx/coroutines/internal/f0;I)V
    .locals 0
    .param p3    # Lkotlinx/coroutines/internal/f0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTS;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Lkotlinx/coroutines/internal/e;-><init>(Lkotlinx/coroutines/internal/e;)V

    .line 4
    .line 5
    iput-wide p1, p0, Lkotlinx/coroutines/internal/f0;->id:J

    .line 6
    .line 7
    shl-int/lit8 p1, p4, 0x10

    .line 8
    .line 9
    iput p1, p0, Lkotlinx/coroutines/internal/f0;->cleanedAndPointers:I

    .line 10
    return-void
.end method


# virtual methods
.method public h()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/f0;->cleanedAndPointers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f0;->n()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->i()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/f0;->cleanedAndPointers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    const/high16 v1, -0x10000

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f0;->n()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->i()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public abstract n()I
.end method

.method public abstract o(ILjava/lang/Throwable;Lkotlin/coroutines/g;)V
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final p()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/f0;->cleanedAndPointers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f0;->n()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->k()V

    .line 16
    :cond_0
    return-void
.end method

.method public final q()Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/f0;->cleanedAndPointers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f0;->n()I

    .line 10
    move-result v2

    .line 11
    .line 12
    if-ne v1, v2, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->i()Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_2
    :goto_0
    const/high16 v2, 0x10000

    .line 24
    add-int/2addr v2, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 32
    :goto_1
    return v0
.end method
