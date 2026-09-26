.class public final Lkotlin/collections/k;
.super Lkotlin/collections/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/f<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayDeque.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,569:1\n467#1,51:572\n467#1,51:623\n37#2,2:570\n26#3:674\n*S KotlinDebug\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n*L\n462#1:572,51\n464#1:623,51\n47#1:570,2\n559#1:674\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/collections/k$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultMinCapacity:I = 0xa

.field private static final emptyElementData:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private elementData:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private head:I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/collections/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/k$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lkotlin/collections/k;->Companion:Lkotlin/collections/k$a;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lkotlin/collections/k;->emptyElementData:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lkotlin/collections/f;-><init>()V

    sget-object v0, Lkotlin/collections/k;->emptyElementData:[Ljava/lang/Object;

    iput-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lkotlin/collections/f;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/collections/k;->emptyElementData:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    :goto_0
    iput-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lkotlin/collections/f;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 7
    array-length v0, p1

    iput v0, p0, Lkotlin/collections/k;->size:I

    .line 8
    array-length p1, p1

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/collections/k;->emptyElementData:[Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final j(ILjava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 7
    array-length v1, v1

    .line 8
    .line 9
    :goto_0
    if-ge p1, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    aput-object v3, v2, p1

    .line 24
    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget p1, p0, Lkotlin/collections/k;->head:I

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    :goto_1
    if-ge v1, p1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    aput-object v3, v2, v1

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 52
    move-result p1

    .line 53
    .line 54
    .line 55
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 56
    move-result p2

    .line 57
    add-int/2addr p1, p2

    .line 58
    .line 59
    iput p1, p0, Lkotlin/collections/k;->size:I

    .line 60
    return-void
.end method

.method private final m(I)V
    .locals 4

    .line 1
    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 5
    .line 6
    iget v1, p0, Lkotlin/collections/k;->head:I

    .line 7
    array-length v2, v0

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 14
    array-length v1, v0

    .line 15
    .line 16
    iget v2, p0, Lkotlin/collections/k;->head:I

    .line 17
    sub-int/2addr v1, v2

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1, v1, v3, v2}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 21
    .line 22
    iput v3, p0, Lkotlin/collections/k;->head:I

    .line 23
    .line 24
    iput-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 25
    return-void
.end method

.method private final p(I)I
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/collections/l;->R([Ljava/lang/Object;)I

    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 12
    :goto_0
    return p1
.end method

.method private final q(I)V
    .locals 2

    .line 1
    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 5
    array-length v1, v0

    .line 6
    .line 7
    if-gt p1, v1, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    sget-object v1, Lkotlin/collections/k;->emptyElementData:[Ljava/lang/Object;

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v0, 0xa

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lj8/m;->e(II)I

    .line 18
    move-result p1

    .line 19
    .line 20
    new-array p1, p1, [Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 23
    return-void

    .line 24
    .line 25
    :cond_1
    sget-object v1, Lkotlin/collections/c;->Companion:Lkotlin/collections/c$a;

    .line 26
    array-length v0, v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0, p1}, Lkotlin/collections/c$a;->e(II)I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lkotlin/collections/k;->m(I)V

    .line 34
    return-void

    .line 35
    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "Deque is too big."

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method

.method private final s(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/collections/l;->R([Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 13
    :goto_0
    return p1
.end method

.method private final u(I)I
    .locals 1

    .line 1
    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 5
    array-length v0, v0

    .line 6
    add-int/2addr p1, v0

    .line 7
    :cond_0
    return p1
.end method

.method private final v(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    if-lt p1, v1, :cond_0

    .line 6
    array-length v0, v0

    .line 7
    sub-int/2addr p1, v0

    .line 8
    :cond_0
    return p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lkotlin/collections/c;->Companion:Lkotlin/collections/c$a;

    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/c$a;->c(II)V

    .line 3
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Lkotlin/collections/k;->g(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lkotlin/collections/k;->f(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/k;->q(I)V

    iget v0, p0, Lkotlin/collections/k;->head:I

    add-int/2addr v0, p1

    .line 7
    invoke-direct {p0, v0}, Lkotlin/collections/k;->v(I)I

    move-result v0

    .line 8
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v2

    add-int/2addr v2, v1

    shr-int/2addr v2, v1

    const/4 v3, 0x0

    if-ge p1, v2, :cond_3

    .line 9
    invoke-direct {p0, v0}, Lkotlin/collections/k;->p(I)I

    move-result p1

    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 10
    invoke-direct {p0, v0}, Lkotlin/collections/k;->p(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/k;->head:I

    if-lt p1, v2, :cond_2

    iget-object v3, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 11
    aget-object v4, v3, v2

    aput-object v4, v3, v0

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, p1, 0x1

    .line 12
    invoke-static {v3, v3, v2, v4, v5}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    .line 13
    array-length v6, v4

    invoke-static {v4, v4, v5, v2, v6}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 14
    array-length v4, v2

    sub-int/2addr v4, v1

    aget-object v5, v2, v3

    aput-object v5, v2, v4

    add-int/lit8 v4, p1, 0x1

    .line 15
    invoke-static {v2, v2, v3, v1, v4}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_0
    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 16
    aput-object p2, v2, p1

    iput v0, p0, Lkotlin/collections/k;->head:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lkotlin/collections/k;->head:I

    .line 17
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v2

    add-int/2addr p1, v2

    invoke-direct {p0, p1}, Lkotlin/collections/k;->v(I)I

    move-result p1

    if-ge v0, p1, :cond_4

    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    .line 18
    invoke-static {v2, v2, v3, v0, p1}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 19
    invoke-static {v2, v2, v1, v3, p1}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 20
    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    aput-object v2, p1, v3

    add-int/lit8 v2, v0, 0x1

    .line 21
    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-static {p1, p1, v2, v0, v3}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_1
    iget-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 22
    aput-object p2, p1, v0

    .line 23
    :goto_2
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lkotlin/collections/k;->size:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/collections/k;->g(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 8
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lkotlin/collections/c;->Companion:Lkotlin/collections/c$a;

    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/c$a;->c(II)V

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 7
    invoke-virtual {p0, p2}, Lkotlin/collections/k;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lkotlin/collections/k;->q(I)V

    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 9
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lkotlin/collections/k;->v(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/k;->head:I

    add-int/2addr v2, p1

    .line 10
    invoke-direct {p0, v2}, Lkotlin/collections/k;->v(I)I

    move-result v2

    .line 11
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    .line 12
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    shr-int/2addr v4, v5

    if-ge p1, v4, :cond_6

    iget p1, p0, Lkotlin/collections/k;->head:I

    sub-int v0, p1, v3

    if-lt v2, p1, :cond_4

    if-ltz v0, :cond_2

    iget-object v1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 13
    invoke-static {v1, v1, v0, p1, v2}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 14
    array-length v6, v4

    add-int/2addr v0, v6

    sub-int v6, v2, p1

    .line 15
    array-length v7, v4

    sub-int/2addr v7, v0

    if-lt v7, v6, :cond_3

    .line 16
    invoke-static {v4, v4, v0, p1, v2}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_3
    add-int v6, p1, v7

    .line 17
    invoke-static {v4, v4, v0, p1, v6}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    iget v4, p0, Lkotlin/collections/k;->head:I

    add-int/2addr v4, v7

    .line 18
    invoke-static {p1, p1, v1, v4, v2}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 19
    array-length v6, v4

    invoke-static {v4, v4, v0, p1, v6}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    if-lt v3, v2, :cond_5

    iget-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 20
    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v2}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 21
    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v3}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 22
    invoke-static {p1, p1, v1, v3, v2}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_0
    iput v0, p0, Lkotlin/collections/k;->head:I

    sub-int/2addr v2, v3

    .line 23
    invoke-direct {p0, v2}, Lkotlin/collections/k;->u(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lkotlin/collections/k;->j(ILjava/util/Collection;)V

    goto :goto_2

    :cond_6
    add-int p1, v2, v3

    if-ge v2, v0, :cond_9

    add-int/2addr v3, v0

    iget-object v4, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 24
    array-length v6, v4

    if-gt v3, v6, :cond_7

    .line 25
    invoke-static {v4, v4, p1, v2, v0}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 26
    :cond_7
    array-length v6, v4

    if-lt p1, v6, :cond_8

    .line 27
    array-length v1, v4

    sub-int/2addr p1, v1

    invoke-static {v4, v4, p1, v2, v0}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 28
    :cond_8
    array-length v6, v4

    sub-int/2addr v3, v6

    sub-int v3, v0, v3

    .line 29
    invoke-static {v4, v4, v1, v3, v0}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 30
    invoke-static {v0, v0, p1, v2, v3}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 31
    invoke-static {v4, v4, v3, v1, v0}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 32
    array-length v4, v0

    if-lt p1, v4, :cond_a

    .line 33
    array-length v1, v0

    sub-int/2addr p1, v1

    array-length v1, v0

    invoke-static {v0, v0, p1, v2, v1}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 34
    :cond_a
    array-length v4, v0

    sub-int/2addr v4, v3

    array-length v6, v0

    invoke-static {v0, v0, v1, v4, v6}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 35
    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v0, p1, v2, v1}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 36
    :goto_1
    invoke-direct {p0, v2, p2}, Lkotlin/collections/k;->j(ILjava/util/Collection;)V

    :goto_2
    return v5
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/k;->q(I)V

    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 3
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/k;->v(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lkotlin/collections/k;->j(ILjava/util/Collection;)V

    const/4 p1, 0x1

    return p1
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/k;->size:I

    return v0
.end method

.method public clear()V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr v0, v1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lkotlin/collections/k;->v(I)I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget v1, p0, Lkotlin/collections/k;->head:I

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    iget-object v4, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-static {v4, v3, v1, v0}, Lkotlin/collections/l;->r([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    xor-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 34
    .line 35
    iget v4, p0, Lkotlin/collections/k;->head:I

    .line 36
    array-length v5, v1

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v3, v4, v5}, Lkotlin/collections/l;->r([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 40
    .line 41
    iget-object v1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v3, v2, v0}, Lkotlin/collections/l;->r([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 45
    .line 46
    :cond_1
    :goto_0
    iput v2, p0, Lkotlin/collections/k;->head:I

    .line 47
    .line 48
    iput v2, p0, Lkotlin/collections/k;->size:I

    .line 49
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlin/collections/k;->indexOf(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public e(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlin/collections/c;->Companion:Lkotlin/collections/c$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/c$a;->b(II)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lkotlin/collections/k;->y()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    .line 22
    :cond_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lkotlin/collections/k;->w()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_1
    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 30
    add-int/2addr v0, p1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0}, Lkotlin/collections/k;->v(I)I

    .line 34
    move-result v0

    .line 35
    .line 36
    iget-object v1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 37
    .line 38
    aget-object v1, v1, v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x1

    .line 44
    shr-int/2addr v2, v3

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    .line 48
    if-ge p1, v2, :cond_3

    .line 49
    .line 50
    iget p1, p0, Lkotlin/collections/k;->head:I

    .line 51
    .line 52
    if-lt v0, p1, :cond_2

    .line 53
    .line 54
    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 55
    .line 56
    add-int/lit8 v5, p1, 0x1

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v2, v5, p1, v0}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_2
    iget-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p1, v3, v5, v0}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 66
    .line 67
    iget-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 68
    array-length v0, p1

    .line 69
    sub-int/2addr v0, v3

    .line 70
    .line 71
    aget-object v0, p1, v0

    .line 72
    .line 73
    aput-object v0, p1, v5

    .line 74
    .line 75
    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 76
    .line 77
    add-int/lit8 v2, v0, 0x1

    .line 78
    array-length v5, p1

    .line 79
    sub-int/2addr v5, v3

    .line 80
    .line 81
    .line 82
    invoke-static {p1, p1, v2, v0, v5}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 83
    .line 84
    :goto_0
    iget-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 85
    .line 86
    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 87
    .line 88
    aput-object v4, p1, v0

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v0}, Lkotlin/collections/k;->s(I)I

    .line 92
    move-result p1

    .line 93
    .line 94
    iput p1, p0, Lkotlin/collections/k;->head:I

    .line 95
    goto :goto_2

    .line 96
    .line 97
    :cond_3
    iget p1, p0, Lkotlin/collections/k;->head:I

    .line 98
    .line 99
    .line 100
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 101
    move-result v2

    .line 102
    add-int/2addr p1, v2

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, p1}, Lkotlin/collections/k;->v(I)I

    .line 106
    move-result p1

    .line 107
    .line 108
    if-gt v0, p1, :cond_4

    .line 109
    .line 110
    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 111
    .line 112
    add-int/lit8 v5, v0, 0x1

    .line 113
    .line 114
    add-int/lit8 v6, p1, 0x1

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v2, v0, v5, v6}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 118
    goto :goto_1

    .line 119
    .line 120
    :cond_4
    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 121
    .line 122
    add-int/lit8 v6, v0, 0x1

    .line 123
    array-length v7, v2

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v2, v0, v6, v7}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 127
    .line 128
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 129
    array-length v2, v0

    .line 130
    sub-int/2addr v2, v3

    .line 131
    .line 132
    aget-object v6, v0, v5

    .line 133
    .line 134
    aput-object v6, v0, v2

    .line 135
    .line 136
    add-int/lit8 v2, p1, 0x1

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v0, v5, v3, v2}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 140
    .line 141
    :goto_1
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 142
    .line 143
    aput-object v4, v0, p1

    .line 144
    .line 145
    .line 146
    :goto_2
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 147
    move-result p1

    .line 148
    sub-int/2addr p1, v3

    .line 149
    .line 150
    iput p1, p0, Lkotlin/collections/k;->size:I

    .line 151
    return-object v1
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lkotlin/collections/k;->q(I)V

    .line 10
    .line 11
    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lkotlin/collections/k;->p(I)I

    .line 15
    move-result v0

    .line 16
    .line 17
    iput v0, p0, Lkotlin/collections/k;->head:I

    .line 18
    .line 19
    iget-object v1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 20
    .line 21
    aput-object p1, v1, v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 25
    move-result p1

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    iput p1, p0, Lkotlin/collections/k;->size:I

    .line 30
    return-void
.end method

.method public final first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/k;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 9
    .line 10
    iget v1, p0, Lkotlin/collections/k;->head:I

    .line 11
    .line 12
    aget-object v0, v0, v1

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 16
    .line 17
    const-string v1, "ArrayDeque is empty."

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lkotlin/collections/k;->q(I)V

    .line 10
    .line 11
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 12
    .line 13
    iget v1, p0, Lkotlin/collections/k;->head:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v1, v2

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1}, Lkotlin/collections/k;->v(I)I

    .line 22
    move-result v1

    .line 23
    .line 24
    aput-object p1, v0, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 28
    move-result p1

    .line 29
    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    iput p1, p0, Lkotlin/collections/k;->size:I

    .line 33
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlin/collections/c;->Companion:Lkotlin/collections/c$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/c$a;->b(II)V

    .line 10
    .line 11
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 12
    .line 13
    iget v1, p0, Lkotlin/collections/k;->head:I

    .line 14
    add-int/2addr v1, p1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lkotlin/collections/k;->v(I)I

    .line 18
    move-result p1

    .line 19
    .line 20
    aget-object p1, v0, p1

    .line 21
    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr v0, v1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lkotlin/collections/k;->v(I)I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget v1, p0, Lkotlin/collections/k;->head:I

    .line 14
    .line 15
    if-ge v1, v0, :cond_1

    .line 16
    .line 17
    :goto_0
    if-ge v1, v0, :cond_5

    .line 18
    .line 19
    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 20
    .line 21
    aget-object v2, v2, v1

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget p1, p0, Lkotlin/collections/k;->head:I

    .line 30
    :goto_1
    sub-int/2addr v1, p1

    .line 31
    return v1

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    if-lt v1, v0, :cond_5

    .line 37
    .line 38
    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 39
    array-length v2, v2

    .line 40
    .line 41
    :goto_2
    if-ge v1, v2, :cond_3

    .line 42
    .line 43
    iget-object v3, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 44
    .line 45
    aget-object v3, v3, v1

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result v3

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    iget p1, p0, Lkotlin/collections/k;->head:I

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    const/4 v1, 0x0

    .line 59
    .line 60
    :goto_3
    if-ge v1, v0, :cond_5

    .line 61
    .line 62
    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 63
    .line 64
    aget-object v2, v2, v1

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    iget-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 73
    array-length p1, p1

    .line 74
    add-int/2addr v1, p1

    .line 75
    .line 76
    iget p1, p0, Lkotlin/collections/k;->head:I

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    const/4 p1, -0x1

    .line 82
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/k;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 9
    .line 10
    iget v1, p0, Lkotlin/collections/k;->head:I

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 14
    move-result v2

    .line 15
    add-int/2addr v1, v2

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lkotlin/collections/k;->v(I)I

    .line 19
    move-result v1

    .line 20
    .line 21
    aget-object v0, v0, v1

    .line 22
    return-object v0

    .line 23
    .line 24
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 25
    .line 26
    const-string v1, "ArrayDeque is empty."

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr v0, v1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lkotlin/collections/k;->v(I)I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget v1, p0, Lkotlin/collections/k;->head:I

    .line 14
    const/4 v2, -0x1

    .line 15
    .line 16
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    if-gt v1, v0, :cond_5

    .line 21
    .line 22
    :goto_0
    iget-object v3, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object v3, v3, v0

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    iget p1, p0, Lkotlin/collections/k;->head:I

    .line 33
    :goto_1
    sub-int/2addr v0, p1

    .line 34
    return v0

    .line 35
    .line 36
    :cond_0
    if-eq v0, v1, :cond_5

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    if-le v1, v0, :cond_5

    .line 42
    .line 43
    add-int/lit8 v0, v0, -0x1

    .line 44
    .line 45
    :goto_2
    if-ge v2, v0, :cond_3

    .line 46
    .line 47
    iget-object v1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 48
    .line 49
    aget-object v1, v1, v0

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 58
    array-length p1, p1

    .line 59
    add-int/2addr v0, p1

    .line 60
    .line 61
    iget p1, p0, Lkotlin/collections/k;->head:I

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_3
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/collections/l;->R([Ljava/lang/Object;)I

    .line 71
    move-result v0

    .line 72
    .line 73
    iget v1, p0, Lkotlin/collections/k;->head:I

    .line 74
    .line 75
    if-gt v1, v0, :cond_5

    .line 76
    .line 77
    :goto_3
    iget-object v3, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 78
    .line 79
    aget-object v3, v3, v0

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    move-result v3

    .line 84
    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    iget p1, p0, Lkotlin/collections/k;->head:I

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_4
    if-eq v0, v1, :cond_5

    .line 91
    .line 92
    add-int/lit8 v0, v0, -0x1

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    return v2
.end method

.method public final r()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/k;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 11
    .line 12
    iget v1, p0, Lkotlin/collections/k;->head:I

    .line 13
    .line 14
    aget-object v0, v0, v1

    .line 15
    :goto_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlin/collections/k;->indexOf(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/collections/f;->remove(I)Ljava/lang/Object;

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 11
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "elements"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlin/collections/k;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_8

    .line 13
    .line 14
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 15
    array-length v0, v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_0
    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 25
    move-result v2

    .line 26
    add-int/2addr v0, v2

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Lkotlin/collections/k;->v(I)I

    .line 30
    move-result v0

    .line 31
    .line 32
    iget v2, p0, Lkotlin/collections/k;->head:I

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-ge v2, v0, :cond_3

    .line 37
    move v5, v2

    .line 38
    .line 39
    :goto_0
    if-ge v2, v0, :cond_2

    .line 40
    .line 41
    iget-object v6, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 42
    .line 43
    aget-object v6, v6, v2

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 47
    move-result v7

    .line 48
    xor-int/2addr v7, v4

    .line 49
    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    iget-object v7, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 53
    .line 54
    add-int/lit8 v8, v5, 0x1

    .line 55
    .line 56
    aput-object v6, v7, v5

    .line 57
    move v5, v8

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move v1, v4

    .line 60
    .line 61
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_2
    iget-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v3, v5, v0}, Lkotlin/collections/l;->r([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 68
    goto :goto_6

    .line 69
    .line 70
    :cond_3
    iget-object v5, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 71
    array-length v5, v5

    .line 72
    move v7, v1

    .line 73
    move v6, v2

    .line 74
    .line 75
    :goto_2
    if-ge v2, v5, :cond_5

    .line 76
    .line 77
    iget-object v8, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 78
    .line 79
    aget-object v9, v8, v2

    .line 80
    .line 81
    aput-object v3, v8, v2

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 85
    move-result v8

    .line 86
    xor-int/2addr v8, v4

    .line 87
    .line 88
    if-eqz v8, :cond_4

    .line 89
    .line 90
    iget-object v8, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 91
    .line 92
    add-int/lit8 v10, v6, 0x1

    .line 93
    .line 94
    aput-object v9, v8, v6

    .line 95
    move v6, v10

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    move v7, v4

    .line 98
    .line 99
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 100
    goto :goto_2

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-direct {p0, v6}, Lkotlin/collections/k;->v(I)I

    .line 104
    move-result v2

    .line 105
    move v5, v2

    .line 106
    .line 107
    :goto_4
    if-ge v1, v0, :cond_7

    .line 108
    .line 109
    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 110
    .line 111
    aget-object v6, v2, v1

    .line 112
    .line 113
    aput-object v3, v2, v1

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 117
    move-result v2

    .line 118
    xor-int/2addr v2, v4

    .line 119
    .line 120
    if-eqz v2, :cond_6

    .line 121
    .line 122
    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 123
    .line 124
    aput-object v6, v2, v5

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, v5}, Lkotlin/collections/k;->s(I)I

    .line 128
    move-result v5

    .line 129
    goto :goto_5

    .line 130
    :cond_6
    move v7, v4

    .line 131
    .line 132
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 133
    goto :goto_4

    .line 134
    :cond_7
    move v1, v7

    .line 135
    .line 136
    :goto_6
    if-eqz v1, :cond_8

    .line 137
    .line 138
    iget p1, p0, Lkotlin/collections/k;->head:I

    .line 139
    sub-int/2addr v5, p1

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, v5}, Lkotlin/collections/k;->u(I)I

    .line 143
    move-result p1

    .line 144
    .line 145
    iput p1, p0, Lkotlin/collections/k;->size:I

    .line 146
    :cond_8
    :goto_7
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 11
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "elements"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlin/collections/k;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_8

    .line 13
    .line 14
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 15
    array-length v0, v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_0
    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 25
    move-result v2

    .line 26
    add-int/2addr v0, v2

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Lkotlin/collections/k;->v(I)I

    .line 30
    move-result v0

    .line 31
    .line 32
    iget v2, p0, Lkotlin/collections/k;->head:I

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-ge v2, v0, :cond_3

    .line 37
    move v5, v2

    .line 38
    .line 39
    :goto_0
    if-ge v2, v0, :cond_2

    .line 40
    .line 41
    iget-object v6, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 42
    .line 43
    aget-object v6, v6, v2

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 47
    move-result v7

    .line 48
    .line 49
    if-eqz v7, :cond_1

    .line 50
    .line 51
    iget-object v7, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 52
    .line 53
    add-int/lit8 v8, v5, 0x1

    .line 54
    .line 55
    aput-object v6, v7, v5

    .line 56
    move v5, v8

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v1, v4

    .line 59
    .line 60
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    iget-object p1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v3, v5, v0}, Lkotlin/collections/l;->r([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 67
    goto :goto_6

    .line 68
    .line 69
    :cond_3
    iget-object v5, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 70
    array-length v5, v5

    .line 71
    move v7, v1

    .line 72
    move v6, v2

    .line 73
    .line 74
    :goto_2
    if-ge v2, v5, :cond_5

    .line 75
    .line 76
    iget-object v8, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 77
    .line 78
    aget-object v9, v8, v2

    .line 79
    .line 80
    aput-object v3, v8, v2

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 84
    move-result v8

    .line 85
    .line 86
    if-eqz v8, :cond_4

    .line 87
    .line 88
    iget-object v8, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 89
    .line 90
    add-int/lit8 v10, v6, 0x1

    .line 91
    .line 92
    aput-object v9, v8, v6

    .line 93
    move v6, v10

    .line 94
    goto :goto_3

    .line 95
    :cond_4
    move v7, v4

    .line 96
    .line 97
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_2

    .line 99
    .line 100
    .line 101
    :cond_5
    invoke-direct {p0, v6}, Lkotlin/collections/k;->v(I)I

    .line 102
    move-result v2

    .line 103
    move v5, v2

    .line 104
    .line 105
    :goto_4
    if-ge v1, v0, :cond_7

    .line 106
    .line 107
    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 108
    .line 109
    aget-object v6, v2, v1

    .line 110
    .line 111
    aput-object v3, v2, v1

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 115
    move-result v2

    .line 116
    .line 117
    if-eqz v2, :cond_6

    .line 118
    .line 119
    iget-object v2, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 120
    .line 121
    aput-object v6, v2, v5

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, v5}, Lkotlin/collections/k;->s(I)I

    .line 125
    move-result v5

    .line 126
    goto :goto_5

    .line 127
    :cond_6
    move v7, v4

    .line 128
    .line 129
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 130
    goto :goto_4

    .line 131
    :cond_7
    move v1, v7

    .line 132
    .line 133
    :goto_6
    if-eqz v1, :cond_8

    .line 134
    .line 135
    iget p1, p0, Lkotlin/collections/k;->head:I

    .line 136
    sub-int/2addr v5, p1

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v5}, Lkotlin/collections/k;->u(I)I

    .line 140
    move-result p1

    .line 141
    .line 142
    iput p1, p0, Lkotlin/collections/k;->size:I

    .line 143
    :cond_8
    :goto_7
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlin/collections/c;->Companion:Lkotlin/collections/c$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/c$a;->b(II)V

    .line 10
    .line 11
    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 12
    add-int/2addr v0, p1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lkotlin/collections/k;->v(I)I

    .line 16
    move-result p1

    .line 17
    .line 18
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object v1, v0, p1

    .line 21
    .line 22
    aput-object p2, v0, p1

    .line 23
    return-object v1
.end method

.method public final t()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/k;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 11
    .line 12
    iget v1, p0, Lkotlin/collections/k;->head:I

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 16
    move-result v2

    .line 17
    add-int/2addr v1, v2

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v1}, Lkotlin/collections/k;->v(I)I

    .line 21
    move-result v1

    .line 22
    .line 23
    aget-object v0, v0, v1

    .line 24
    :goto_0
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 8
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlin/collections/k;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/collections/m;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 2
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/k;->v(I)I

    move-result v4

    iget v3, p0, Lkotlin/collections/k;->head:I

    if-ge v3, v4, :cond_1

    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p1

    .line 3
    invoke-static/range {v0 .. v6}, Lkotlin/collections/l;->m([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/k;->head:I

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 6
    array-length v1, v0

    iget v2, p0, Lkotlin/collections/k;->head:I

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, v3, v4}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    move-result v0

    invoke-static {v0, p1}, Lkotlin/collections/t;->f(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final w()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/k;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 9
    .line 10
    iget v1, p0, Lkotlin/collections/k;->head:I

    .line 11
    .line 12
    aget-object v2, v0, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    aput-object v3, v0, v1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lkotlin/collections/k;->s(I)I

    .line 19
    move-result v0

    .line 20
    .line 21
    iput v0, p0, Lkotlin/collections/k;->head:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 25
    move-result v0

    .line 26
    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    iput v0, p0, Lkotlin/collections/k;->size:I

    .line 30
    return-object v2

    .line 31
    .line 32
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 33
    .line 34
    const-string v1, "ArrayDeque is empty."

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 38
    throw v0
.end method

.method public final x()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/k;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/k;->w()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final y()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/k;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lkotlin/collections/k;->head:I

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lkotlin/collections/k;->v(I)I

    .line 17
    move-result v0

    .line 18
    .line 19
    iget-object v1, p0, Lkotlin/collections/k;->elementData:[Ljava/lang/Object;

    .line 20
    .line 21
    aget-object v2, v1, v0

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    aput-object v3, v1, v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lkotlin/collections/f;->size()I

    .line 28
    move-result v0

    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    iput v0, p0, Lkotlin/collections/k;->size:I

    .line 33
    return-object v2

    .line 34
    .line 35
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 36
    .line 37
    const-string v1, "ArrayDeque is empty."

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method

.method public final z()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/k;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/k;->y()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    :goto_0
    return-object v0
.end method
