.class public Ls7/a;
.super Lr7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls7/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChunkBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChunkBuffer.kt\nio/ktor/utils/io/core/internal/ChunkBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,180:1\n1#2:181\n360#3,4:182\n360#3,4:186\n382#3,4:190\n*S KotlinDebug\n*F\n+ 1 ChunkBuffer.kt\nio/ktor/utils/io/core/internal/ChunkBuffer\n*L\n89#1:182,4\n99#1:186,4\n116#1:190,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Ls7/a$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Empty:Ls7/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EmptyPool:Lt7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt7/g<",
            "Ls7/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NoPool:Lt7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt7/g<",
            "Ls7/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NoPoolManuallyManaged:Lt7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt7/g<",
            "Ls7/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final synthetic nextRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic nextRef:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private origin:Ls7/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final parentPool:Lt7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt7/g<",
            "Ls7/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile synthetic refCount:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ls7/a$d;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ls7/a$d;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Ls7/a;->Companion:Ls7/a$d;

    .line 9
    .line 10
    new-instance v0, Ls7/a$a;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ls7/a$a;-><init>()V

    .line 14
    .line 15
    sput-object v0, Ls7/a;->EmptyPool:Lt7/g;

    .line 16
    .line 17
    new-instance v2, Ls7/a;

    .line 18
    .line 19
    sget-object v3, Lp7/c;->Companion:Lp7/c$a;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lp7/c$a;->a()Ljava/nio/ByteBuffer;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3, v1, v0, v1}, Ls7/a;-><init>(Ljava/nio/ByteBuffer;Ls7/a;Lt7/g;Lkotlin/jvm/internal/k;)V

    .line 27
    .line 28
    sput-object v2, Ls7/a;->Empty:Ls7/a;

    .line 29
    .line 30
    new-instance v0, Ls7/a$b;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ls7/a$b;-><init>()V

    .line 34
    .line 35
    sput-object v0, Ls7/a;->NoPool:Lt7/g;

    .line 36
    .line 37
    new-instance v0, Ls7/a$c;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Ls7/a$c;-><init>()V

    .line 41
    .line 42
    sput-object v0, Ls7/a;->NoPoolManuallyManaged:Lt7/g;

    .line 43
    .line 44
    const-class v0, Ljava/lang/Object;

    .line 45
    .line 46
    const-string v1, "nextRef"

    .line 47
    .line 48
    const-class v2, Ls7/a;

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    sput-object v0, Ls7/a;->nextRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 55
    .line 56
    const-string v0, "refCount"

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    sput-object v0, Ls7/a;->refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Ls7/a;Lt7/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ls7/a;",
            "Lt7/g<",
            "Ls7/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "memory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lr7/a;-><init>(Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/k;)V

    iput-object p3, p0, Ls7/a;->parentPool:Lt7/g;

    if-eq p2, p0, :cond_0

    iput-object v0, p0, Ls7/a;->nextRef:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Ls7/a;->refCount:I

    iput-object p2, p0, Ls7/a;->origin:Ls7/a;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A chunk couldn\'t be a view of itself."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Ls7/a;Lt7/g;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ls7/a;-><init>(Ljava/nio/ByteBuffer;Ls7/a;Lt7/g;)V

    return-void
.end method

.method public static final synthetic t()Ls7/a;
    .locals 1

    .line 1
    sget-object v0, Ls7/a;->Empty:Ls7/a;

    return-object v0
.end method

.method public static final synthetic u()Lt7/g;
    .locals 1

    .line 1
    sget-object v0, Ls7/a;->EmptyPool:Lt7/g;

    return-object v0
.end method

.method private final v(Ls7/a;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Ls7/a;->nextRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "This chunk has already a next chunk."

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method


# virtual methods
.method public A(Lt7/g;)V
    .locals 1
    .param p1    # Lt7/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt7/g<",
            "Ls7/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "pool"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ls7/a;->B()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Ls7/a;->origin:Ls7/a;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ls7/a;->D()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ls7/a;->A(Lt7/g;)V

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Ls7/a;->parentPool:Lt7/g;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object p1, v0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-interface {p1, p0}, Lt7/g;->S(Ljava/lang/Object;)V

    .line 32
    :cond_2
    :goto_1
    return-void
.end method

.method public final B()Z
    .locals 3

    .line 1
    .line 2
    :cond_0
    iget v0, p0, Ls7/a;->refCount:I

    .line 3
    .line 4
    if-lez v0, :cond_2

    .line 5
    .line 6
    add-int/lit8 v1, v0, -0x1

    .line 7
    .line 8
    sget-object v2, Ls7/a;->refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    .line 21
    .line 22
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "Unable to release: it is already released."

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw v0
.end method

.method public final C(Ls7/a;)V
    .locals 0
    .param p1    # Ls7/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ls7/a;->w()Ls7/a;

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0, p1}, Ls7/a;->v(Ls7/a;)V

    .line 10
    :goto_0
    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Ls7/a;->refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ls7/a;->w()Ls7/a;

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p0, Ls7/a;->origin:Ls7/a;

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v1, "Unable to unlink: buffer is in use."

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0
.end method

.method public final E()V
    .locals 3

    .line 1
    .line 2
    :cond_0
    iget v0, p0, Ls7/a;->refCount:I

    .line 3
    .line 4
    if-ltz v0, :cond_2

    .line 5
    .line 6
    if-gtz v0, :cond_1

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    sget-object v2, Ls7/a;->refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "This instance is already in use but somehow appeared in the pool."

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw v0

    .line 25
    .line 26
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v1, "This instance is already disposed and couldn\'t be borrowed."

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0
.end method

.method public final q()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Ls7/a;->origin:Ls7/a;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lr7/a;->q()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Ls7/a;->nextRef:Ljava/lang/Object;

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "Unable to reset buffer with origin"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method

.method public final w()Ls7/a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Ls7/a;->nextRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Ls7/a;

    .line 10
    return-object v0
.end method

.method public final x()Ls7/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ls7/a;->nextRef:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ls7/a;

    .line 5
    return-object v0
.end method

.method public final y()Ls7/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ls7/a;->origin:Ls7/a;

    return-object v0
.end method

.method public final z()I
    .locals 1

    .line 1
    iget v0, p0, Ls7/a;->refCount:I

    return v0
.end method
