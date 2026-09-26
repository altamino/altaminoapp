.class final Landroidx/datastore/preferences/protobuf/BooleanArrayList;
.super Landroidx/datastore/preferences/protobuf/AbstractProtobufList;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Internal$BooleanList;
.implements Ljava/util/RandomAccess;
.implements Landroidx/datastore/preferences/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/AbstractProtobufList<",
        "Ljava/lang/Boolean;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/Internal$BooleanList;",
        "Ljava/util/RandomAccess;",
        "Landroidx/datastore/preferences/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Landroidx/datastore/preferences/protobuf/BooleanArrayList;


# instance fields
.field private array:[Z

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    new-array v2, v1, [Z

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v2, v1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;-><init>([ZI)V

    .line 9
    .line 10
    sput-object v0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->EMPTY_LIST:Landroidx/datastore/preferences/protobuf/BooleanArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->makeImmutable()V

    .line 14
    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;-><init>([ZI)V

    return-void
.end method

.method private constructor <init>([ZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    iput p2, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    return-void
.end method

.method private f(IZ)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->c()V

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 8
    .line 9
    if-gt p1, v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 12
    array-length v2, v1

    .line 13
    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    .line 16
    add-int/lit8 v2, p1, 0x1

    .line 17
    sub-int/2addr v0, p1

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 24
    .line 25
    div-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    new-array v0, v0, [Z

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 36
    .line 37
    add-int/lit8 v2, p1, 0x1

    .line 38
    .line 39
    iget v3, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 40
    sub-int/2addr v3, p1

    .line 41
    .line 42
    .line 43
    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 46
    .line 47
    :goto_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 48
    .line 49
    aput-boolean p2, v0, p1

    .line 50
    .line 51
    iget p1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 52
    .line 53
    add-int/lit8 p1, p1, 0x1

    .line 54
    .line 55
    iput p1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 56
    .line 57
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 58
    .line 59
    add-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 62
    return-void

    .line 63
    .line 64
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->m(I)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p2
.end method

.method private g(I)V
    .locals 1

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 5
    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->m(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method private m(I)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Index:"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p1, ", Size:"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget p1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->d(ILjava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->e(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->c()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Internal;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/BooleanArrayList;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    .line 17
    :cond_0
    check-cast p1, Landroidx/datastore/preferences/protobuf/BooleanArrayList;

    .line 18
    .line 19
    iget v0, p1, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    return v1

    .line 24
    .line 25
    :cond_1
    iget v2, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 26
    .line 27
    .line 28
    const v3, 0x7fffffff

    .line 29
    sub-int/2addr v3, v2

    .line 30
    .line 31
    if-lt v3, v0, :cond_3

    .line 32
    add-int/2addr v2, v0

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 35
    array-length v3, v0

    .line 36
    .line 37
    if-le v2, v3, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 44
    .line 45
    :cond_2
    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 46
    .line 47
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 48
    .line 49
    iget v4, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 50
    .line 51
    iget p1, p1, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    iput v2, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 57
    .line 58
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 59
    const/4 v0, 0x1

    .line 60
    add-int/2addr p1, v0

    .line 61
    .line 62
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 63
    return v0

    .line 64
    .line 65
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    .line 66
    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 69
    throw p1
.end method

.method public addBoolean(Z)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->c()V

    .line 4
    .line 5
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 8
    array-length v2, v1

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    mul-int/lit8 v2, v0, 0x3

    .line 13
    .line 14
    div-int/lit8 v2, v2, 0x2

    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    new-array v2, v2, [Z

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    iput-object v2, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 27
    .line 28
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 29
    .line 30
    add-int/lit8 v2, v1, 0x1

    .line 31
    .line 32
    iput v2, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 33
    .line 34
    aput-boolean p1, v0, v1

    .line 35
    return-void
.end method

.method public d(ILjava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->f(IZ)V

    .line 8
    return-void
.end method

.method public e(Ljava/lang/Boolean;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Landroidx/datastore/preferences/protobuf/BooleanArrayList;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    :cond_1
    check-cast p1, Landroidx/datastore/preferences/protobuf/BooleanArrayList;

    .line 16
    .line 17
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 18
    .line 19
    iget v2, p1, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    if-eq v1, v2, :cond_2

    .line 23
    return v3

    .line 24
    .line 25
    :cond_2
    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 26
    move v1, v3

    .line 27
    .line 28
    :goto_0
    iget v2, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 29
    .line 30
    if-ge v1, v2, :cond_4

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 33
    .line 34
    aget-boolean v2, v2, v1

    .line 35
    .line 36
    aget-boolean v4, p1, v1

    .line 37
    .line 38
    if-eq v2, v4, :cond_3

    .line 39
    return v3

    .line 40
    .line 41
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_4
    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->j(I)Ljava/lang/Boolean;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->g(I)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 6
    .line 7
    aget-boolean p1, v0, p1

    .line 8
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    :goto_0
    iget v2, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 5
    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 11
    .line 12
    aget-boolean v2, v2, v1

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Internal;->c(Z)I

    .line 16
    move-result v2

    .line 17
    add-int/2addr v0, v2

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return v0
.end method

.method public j(I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->getBoolean(I)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->p(I)Landroidx/datastore/preferences/protobuf/Internal$BooleanList;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public p(I)Landroidx/datastore/preferences/protobuf/Internal$BooleanList;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 3
    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;-><init>([ZI)V

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 24
    throw p1
.end method

.method public q(I)Ljava/lang/Boolean;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->c()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->g(I)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 9
    .line 10
    aget-boolean v1, v0, p1

    .line 11
    .line 12
    iget v2, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 13
    .line 14
    add-int/lit8 v3, v2, -0x1

    .line 15
    .line 16
    if-ge p1, v3, :cond_0

    .line 17
    .line 18
    add-int/lit8 v3, p1, 0x1

    .line 19
    sub-int/2addr v2, p1

    .line 20
    .line 21
    add-int/lit8 v2, v2, -0x1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    :cond_0
    iget p1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 27
    .line 28
    add-int/lit8 p1, p1, -0x1

    .line 29
    .line 30
    iput p1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 31
    .line 32
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public r(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->setBoolean(IZ)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->q(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .line 2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->c()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 3
    aget-boolean v2, v2, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 4
    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected removeRange(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->c()V

    .line 4
    .line 5
    if-lt p2, p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 8
    .line 9
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 10
    sub-int/2addr v1, p2

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 16
    sub-int/2addr p2, p1

    .line 17
    sub-int/2addr v0, p2

    .line 18
    .line 19
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    .line 20
    .line 21
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 26
    return-void

    .line 27
    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    const-string p2, "toIndex < fromIndex"

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p2, Ljava/lang/Boolean;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->r(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public setBoolean(IZ)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->c()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->g(I)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->array:[Z

    .line 9
    .line 10
    aget-boolean v1, v0, p1

    .line 11
    .line 12
    aput-boolean p2, v0, p1

    .line 13
    return v1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size:I

    return v0
.end method
