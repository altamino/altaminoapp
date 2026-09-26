.class public Landroidx/collection/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final CONCURRENT_MODIFICATION_EXCEPTIONS:Z = true

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 3
    sget-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object p1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 6
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/SimpleArrayMap;->a(I)V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    return-void
.end method

.method public constructor <init>(Landroidx/collection/SimpleArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->m(Landroidx/collection/SimpleArrayMap;)V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 5

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    const-class v0, Landroidx/collection/SimpleArrayMap;

    .line 10
    monitor-enter v0

    .line 11
    .line 12
    :try_start_0
    sget-object v4, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    iput-object v4, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 17
    .line 18
    aget-object p1, v4, v2

    .line 19
    .line 20
    check-cast p1, [Ljava/lang/Object;

    .line 21
    .line 22
    sput-object p1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object p1, v4, v3

    .line 25
    .line 26
    check-cast p1, [I

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 29
    .line 30
    aput-object v1, v4, v3

    .line 31
    .line 32
    aput-object v1, v4, v2

    .line 33
    .line 34
    sget p1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 35
    sub-int/2addr p1, v3

    .line 36
    .line 37
    sput p1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    monitor-exit v0

    .line 43
    goto :goto_2

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p1

    .line 46
    :cond_1
    const/4 v0, 0x4

    .line 47
    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    const-class v0, Landroidx/collection/SimpleArrayMap;

    .line 51
    monitor-enter v0

    .line 52
    .line 53
    :try_start_1
    sget-object v4, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    iput-object v4, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 58
    .line 59
    aget-object p1, v4, v2

    .line 60
    .line 61
    check-cast p1, [Ljava/lang/Object;

    .line 62
    .line 63
    sput-object p1, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 64
    .line 65
    aget-object p1, v4, v3

    .line 66
    .line 67
    check-cast p1, [I

    .line 68
    .line 69
    iput-object p1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 70
    .line 71
    aput-object v1, v4, v3

    .line 72
    .line 73
    aput-object v1, v4, v2

    .line 74
    .line 75
    sget p1, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    .line 76
    sub-int/2addr p1, v3

    .line 77
    .line 78
    sput p1, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    monitor-exit v0

    .line 84
    goto :goto_2

    .line 85
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    throw p1

    .line 87
    .line 88
    :cond_3
    :goto_2
    new-array v0, p1, [I

    .line 89
    .line 90
    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 91
    shl-int/2addr p1, v3

    .line 92
    .line 93
    new-array p1, p1, [Ljava/lang/Object;

    .line 94
    .line 95
    iput-object p1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 96
    return-void
.end method

.method private static e([III)I
    .locals 0

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/collection/ContainerHelpers;->a([III)I

    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    .line 7
    :catch_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 11
    throw p0
.end method

.method private static g([I[Ljava/lang/Object;I)V
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    .line 8
    const/16 v5, 0xa

    .line 9
    const/4 v6, 0x1

    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    const-class v0, Landroidx/collection/SimpleArrayMap;

    .line 14
    monitor-enter v0

    .line 15
    .line 16
    :try_start_0
    sget v1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 17
    .line 18
    if-ge v1, v5, :cond_1

    .line 19
    .line 20
    sget-object v1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 21
    .line 22
    aput-object v1, p1, v4

    .line 23
    .line 24
    aput-object p0, p1, v6

    .line 25
    .line 26
    shl-int/lit8 p0, p2, 0x1

    .line 27
    sub-int/2addr p0, v6

    .line 28
    .line 29
    :goto_0
    if-lt p0, v3, :cond_0

    .line 30
    .line 31
    aput-object v2, p1, p0

    .line 32
    .line 33
    add-int/lit8 p0, p0, -0x1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_0
    sput-object p1, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 39
    .line 40
    sget p0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 41
    add-int/2addr p0, v6

    .line 42
    .line 43
    sput p0, Landroidx/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 44
    :cond_1
    monitor-exit v0

    .line 45
    goto :goto_4

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0

    .line 48
    :cond_2
    array-length v0, p0

    .line 49
    const/4 v1, 0x4

    .line 50
    .line 51
    if-ne v0, v1, :cond_5

    .line 52
    .line 53
    const-class v0, Landroidx/collection/SimpleArrayMap;

    .line 54
    monitor-enter v0

    .line 55
    .line 56
    :try_start_1
    sget v1, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    .line 57
    .line 58
    if-ge v1, v5, :cond_4

    .line 59
    .line 60
    sget-object v1, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 61
    .line 62
    aput-object v1, p1, v4

    .line 63
    .line 64
    aput-object p0, p1, v6

    .line 65
    .line 66
    shl-int/lit8 p0, p2, 0x1

    .line 67
    sub-int/2addr p0, v6

    .line 68
    .line 69
    :goto_2
    if-lt p0, v3, :cond_3

    .line 70
    .line 71
    aput-object v2, p1, p0

    .line 72
    .line 73
    add-int/lit8 p0, p0, -0x1

    .line 74
    goto :goto_2

    .line 75
    :catchall_1
    move-exception p0

    .line 76
    goto :goto_3

    .line 77
    .line 78
    :cond_3
    sput-object p1, Landroidx/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 79
    .line 80
    sget p0, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    .line 81
    add-int/2addr p0, v6

    .line 82
    .line 83
    sput p0, Landroidx/collection/SimpleArrayMap;->mBaseCacheSize:I

    .line 84
    :cond_4
    monitor-exit v0

    .line 85
    goto :goto_4

    .line 86
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    throw p0

    .line 88
    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 9
    .line 10
    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    .line 11
    .line 12
    iput-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 13
    .line 14
    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    .line 15
    .line 16
    iput-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    iput v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Landroidx/collection/SimpleArrayMap;->g([I[Ljava/lang/Object;I)V

    .line 23
    .line 24
    :cond_0
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 25
    .line 26
    if-gtz v0, :cond_1

    .line 27
    return-void

    .line 28
    .line 29
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 33
    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->i(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->k(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    :try_start_0
    instance-of v2, p1, Landroidx/collection/SimpleArrayMap;

    .line 8
    .line 9
    if-eqz v2, :cond_6

    .line 10
    .line 11
    check-cast p1, Landroidx/collection/SimpleArrayMap;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 19
    move-result v3

    .line 20
    .line 21
    if-eq v2, v3, :cond_1

    .line 22
    return v1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    .line 25
    :goto_0
    iget v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 26
    .line 27
    if-ge v2, v3, :cond_5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->l(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->p(I)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v5

    .line 40
    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    if-nez v5, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 47
    move-result v3

    .line 48
    .line 49
    if-nez v3, :cond_4

    .line 50
    :cond_2
    return v1

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v3

    .line 55
    .line 56
    if-nez v3, :cond_4

    .line 57
    return v1

    .line 58
    .line 59
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_5
    return v0

    .line 62
    .line 63
    :cond_6
    instance-of v2, p1, Ljava/util/Map;

    .line 64
    .line 65
    if-eqz v2, :cond_c

    .line 66
    .line 67
    check-cast p1, Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 71
    move-result v2

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 75
    move-result v3

    .line 76
    .line 77
    if-eq v2, v3, :cond_7

    .line 78
    return v1

    .line 79
    :cond_7
    move v2, v1

    .line 80
    .line 81
    :goto_1
    iget v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 82
    .line 83
    if-ge v2, v3, :cond_b

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->l(I)Ljava/lang/Object;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->p(I)Ljava/lang/Object;

    .line 91
    move-result-object v4

    .line 92
    .line 93
    .line 94
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    .line 97
    if-nez v4, :cond_9

    .line 98
    .line 99
    if-nez v5, :cond_8

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 103
    move-result v3

    .line 104
    .line 105
    if-nez v3, :cond_a

    .line 106
    :cond_8
    return v1

    .line 107
    .line 108
    .line 109
    :cond_9
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    if-nez v3, :cond_a

    .line 113
    return v1

    .line 114
    .line 115
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 116
    goto :goto_1

    .line 117
    :cond_b
    return v0

    .line 118
    :catch_0
    :cond_c
    return v1
.end method

.method public f(I)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    if-ge v2, p1, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroidx/collection/SimpleArrayMap;->a(I)V

    .line 13
    .line 14
    iget p1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 15
    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 25
    .line 26
    shl-int/lit8 v4, v0, 0x1

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {v1, v2, v0}, Landroidx/collection/SimpleArrayMap;->g([I[Ljava/lang/Object;I)V

    .line 33
    .line 34
    :cond_1
    iget p1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 35
    .line 36
    if-ne p1, v0, :cond_2

    .line 37
    return-void

    .line 38
    .line 39
    :cond_2
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 43
    throw p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->i(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 9
    .line 10
    shl-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    aget-object p2, p2, p1

    .line 15
    :cond_0
    return-object p2
.end method

.method h(Ljava/lang/Object;I)I
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0, p2}, Landroidx/collection/SimpleArrayMap;->e([III)I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-gez v1, :cond_1

    .line 15
    return v1

    .line 16
    .line 17
    :cond_1
    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 18
    .line 19
    shl-int/lit8 v3, v1, 0x1

    .line 20
    .line 21
    aget-object v2, v2, v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    return v1

    .line 29
    .line 30
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 31
    .line 32
    :goto_0
    if-ge v2, v0, :cond_4

    .line 33
    .line 34
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 35
    .line 36
    aget v3, v3, v2

    .line 37
    .line 38
    if-ne v3, p2, :cond_4

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 41
    .line 42
    shl-int/lit8 v4, v2, 0x1

    .line 43
    .line 44
    aget-object v3, v3, v4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    return v2

    .line 52
    .line 53
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 57
    .line 58
    :goto_1
    if-ltz v1, :cond_6

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 61
    .line 62
    aget v0, v0, v1

    .line 63
    .line 64
    if-ne v0, p2, :cond_6

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 67
    .line 68
    shl-int/lit8 v3, v1, 0x1

    .line 69
    .line 70
    aget-object v0, v0, v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    return v1

    .line 78
    .line 79
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_6
    not-int p1, v2

    .line 82
    return p1
.end method

.method public hashCode()I
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 5
    .line 6
    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    move v5, v3

    .line 10
    move v6, v5

    .line 11
    .line 12
    :goto_0
    if-ge v5, v2, :cond_1

    .line 13
    .line 14
    aget-object v7, v1, v4

    .line 15
    .line 16
    aget v8, v0, v5

    .line 17
    .line 18
    if-nez v7, :cond_0

    .line 19
    move v7, v3

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    .line 24
    move-result v7

    .line 25
    :goto_1
    xor-int/2addr v7, v8

    .line 26
    add-int/2addr v6, v7

    .line 27
    .line 28
    add-int/lit8 v5, v5, 0x1

    .line 29
    .line 30
    add-int/lit8 v4, v4, 0x2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v6
.end method

.method public i(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->j()I

    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->h(Ljava/lang/Object;I)I

    .line 15
    move-result p1

    .line 16
    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method j()I
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v0, v2}, Landroidx/collection/SimpleArrayMap;->e([III)I

    .line 13
    move-result v1

    .line 14
    .line 15
    if-gez v1, :cond_1

    .line 16
    return v1

    .line 17
    .line 18
    :cond_1
    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 19
    .line 20
    shl-int/lit8 v3, v1, 0x1

    .line 21
    .line 22
    aget-object v2, v2, v3

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    return v1

    .line 26
    .line 27
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 28
    .line 29
    :goto_0
    if-ge v2, v0, :cond_4

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 32
    .line 33
    aget v3, v3, v2

    .line 34
    .line 35
    if-nez v3, :cond_4

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 38
    .line 39
    shl-int/lit8 v4, v2, 0x1

    .line 40
    .line 41
    aget-object v3, v3, v4

    .line 42
    .line 43
    if-nez v3, :cond_3

    .line 44
    return v2

    .line 45
    .line 46
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 50
    .line 51
    :goto_1
    if-ltz v1, :cond_6

    .line 52
    .line 53
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 54
    .line 55
    aget v0, v0, v1

    .line 56
    .line 57
    if-nez v0, :cond_6

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 60
    .line 61
    shl-int/lit8 v3, v1, 0x1

    .line 62
    .line 63
    aget-object v0, v0, v3

    .line 64
    .line 65
    if-nez v0, :cond_5

    .line 66
    return v1

    .line 67
    .line 68
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_6
    not-int v0, v2

    .line 71
    return v0
.end method

.method k(Ljava/lang/Object;)I
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x2

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    move p1, v2

    .line 11
    .line 12
    :goto_0
    if-ge p1, v0, :cond_3

    .line 13
    .line 14
    aget-object v3, v1, p1

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    shr-int/2addr p1, v2

    .line 18
    return p1

    .line 19
    .line 20
    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v3, v2

    .line 23
    .line 24
    :goto_1
    if-ge v3, v0, :cond_3

    .line 25
    .line 26
    aget-object v4, v1, v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v4

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    shr-int/lit8 p1, v3, 0x1

    .line 35
    return p1

    .line 36
    .line 37
    :cond_2
    add-int/lit8 v3, v3, 0x2

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const/4 p1, -0x1

    .line 40
    return p1
.end method

.method public l(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 3
    .line 4
    shl-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    aget-object p1, v0, p1

    .line 7
    return-object p1
.end method

.method public m(Landroidx/collection/SimpleArrayMap;)V
    .locals 4
    .param p1    # Landroidx/collection/SimpleArrayMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p1, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 5
    add-int/2addr v1, v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->f(I)V

    .line 9
    .line 10
    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p1, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 27
    .line 28
    shl-int/lit8 v3, v0, 0x1

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    iput v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroidx/collection/SimpleArrayMap;->l(I)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroidx/collection/SimpleArrayMap;->p(I)Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    return-void
.end method

.method public n(I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 3
    .line 4
    shl-int/lit8 v1, p1, 0x1

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    aget-object v2, v0, v2

    .line 9
    .line 10
    iget v3, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 11
    const/4 v4, 0x1

    .line 12
    .line 13
    if-gt v3, v4, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v5, v3, -0x1

    .line 20
    .line 21
    iget-object v6, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 22
    array-length v7, v6

    .line 23
    .line 24
    const/16 v8, 0x8

    .line 25
    .line 26
    if-le v7, v8, :cond_4

    .line 27
    array-length v7, v6

    .line 28
    .line 29
    div-int/lit8 v7, v7, 0x3

    .line 30
    .line 31
    if-ge v3, v7, :cond_4

    .line 32
    .line 33
    if-le v3, v8, :cond_1

    .line 34
    .line 35
    shr-int/lit8 v7, v3, 0x1

    .line 36
    .line 37
    add-int v8, v3, v7

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-direct {p0, v8}, Landroidx/collection/SimpleArrayMap;->a(I)V

    .line 41
    .line 42
    iget v7, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 43
    .line 44
    if-ne v3, v7, :cond_3

    .line 45
    .line 46
    if-lez p1, :cond_2

    .line 47
    .line 48
    iget-object v7, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 49
    const/4 v8, 0x0

    .line 50
    .line 51
    .line 52
    invoke-static {v6, v8, v7, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    iget-object v7, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v8, v7, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    .line 59
    :cond_2
    if-ge p1, v5, :cond_6

    .line 60
    .line 61
    add-int/lit8 v7, p1, 0x1

    .line 62
    .line 63
    iget-object v8, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 64
    .line 65
    sub-int v9, v5, p1

    .line 66
    .line 67
    .line 68
    invoke-static {v6, v7, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    shl-int/lit8 p1, v7, 0x1

    .line 71
    .line 72
    iget-object v6, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 73
    .line 74
    shl-int/lit8 v4, v9, 0x1

    .line 75
    .line 76
    .line 77
    invoke-static {v0, p1, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 84
    throw p1

    .line 85
    .line 86
    :cond_4
    if-ge p1, v5, :cond_5

    .line 87
    .line 88
    add-int/lit8 v0, p1, 0x1

    .line 89
    .line 90
    sub-int v7, v5, p1

    .line 91
    .line 92
    .line 93
    invoke-static {v6, v0, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    .line 95
    iget-object p1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 96
    shl-int/2addr v0, v4

    .line 97
    .line 98
    shl-int/lit8 v6, v7, 0x1

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v0, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    .line 103
    :cond_5
    iget-object p1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 104
    .line 105
    shl-int/lit8 v0, v5, 0x1

    .line 106
    const/4 v1, 0x0

    .line 107
    .line 108
    aput-object v1, p1, v0

    .line 109
    add-int/2addr v0, v4

    .line 110
    .line 111
    aput-object v1, p1, v0

    .line 112
    .line 113
    :cond_6
    :goto_0
    iget p1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 114
    .line 115
    if-ne v3, p1, :cond_7

    .line 116
    .line 117
    iput v5, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 118
    :goto_1
    return-object v2

    .line 119
    .line 120
    :cond_7
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 121
    .line 122
    .line 123
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 124
    throw p1
.end method

.method public o(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 1
    .line 2
    shl-int/lit8 p1, p1, 0x1

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 7
    .line 8
    aget-object v1, v0, p1

    .line 9
    .line 10
    aput-object p2, v0, p1

    .line 11
    return-object v1
.end method

.method public p(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 3
    .line 4
    shl-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->j()I

    .line 9
    move-result v2

    .line 10
    move v3, v1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v2}, Landroidx/collection/SimpleArrayMap;->h(Ljava/lang/Object;I)I

    .line 19
    move-result v3

    .line 20
    move v8, v3

    .line 21
    move v3, v2

    .line 22
    move v2, v8

    .line 23
    .line 24
    :goto_0
    if-ltz v2, :cond_1

    .line 25
    .line 26
    shl-int/lit8 p1, v2, 0x1

    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 31
    .line 32
    aget-object v1, v0, p1

    .line 33
    .line 34
    aput-object p2, v0, p1

    .line 35
    return-object v1

    .line 36
    :cond_1
    not-int v2, v2

    .line 37
    .line 38
    iget-object v4, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 39
    array-length v5, v4

    .line 40
    .line 41
    if-lt v0, v5, :cond_6

    .line 42
    .line 43
    const/16 v5, 0x8

    .line 44
    .line 45
    if-lt v0, v5, :cond_2

    .line 46
    .line 47
    shr-int/lit8 v5, v0, 0x1

    .line 48
    add-int/2addr v5, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 v6, 0x4

    .line 51
    .line 52
    if-lt v0, v6, :cond_3

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move v5, v6

    .line 55
    .line 56
    :goto_1
    iget-object v6, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v5}, Landroidx/collection/SimpleArrayMap;->a(I)V

    .line 60
    .line 61
    iget v5, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 62
    .line 63
    if-ne v0, v5, :cond_5

    .line 64
    .line 65
    iget-object v5, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 66
    array-length v7, v5

    .line 67
    .line 68
    if-lez v7, :cond_4

    .line 69
    array-length v7, v4

    .line 70
    .line 71
    .line 72
    invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    .line 74
    iget-object v5, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 75
    array-length v7, v6

    .line 76
    .line 77
    .line 78
    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-static {v4, v6, v0}, Landroidx/collection/SimpleArrayMap;->g([I[Ljava/lang/Object;I)V

    .line 82
    goto :goto_2

    .line 83
    .line 84
    :cond_5
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 85
    .line 86
    .line 87
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 88
    throw p1

    .line 89
    .line 90
    :cond_6
    :goto_2
    if-ge v2, v0, :cond_7

    .line 91
    .line 92
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 93
    .line 94
    add-int/lit8 v4, v2, 0x1

    .line 95
    .line 96
    sub-int v5, v0, v2

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    .line 101
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 102
    .line 103
    shl-int/lit8 v5, v2, 0x1

    .line 104
    .line 105
    shl-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    iget v6, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 108
    sub-int/2addr v6, v2

    .line 109
    .line 110
    shl-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    .line 115
    :cond_7
    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 116
    .line 117
    if-ne v0, v1, :cond_8

    .line 118
    .line 119
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    .line 120
    array-length v4, v0

    .line 121
    .line 122
    if-ge v2, v4, :cond_8

    .line 123
    .line 124
    aput v3, v0, v2

    .line 125
    .line 126
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 127
    .line 128
    shl-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    aput-object p1, v0, v2

    .line 131
    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    aput-object p2, v0, v2

    .line 135
    .line 136
    add-int/lit8 v1, v1, 0x1

    .line 137
    .line 138
    iput v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 139
    const/4 p1, 0x0

    .line 140
    return-object p1

    .line 141
    .line 142
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 143
    .line 144
    .line 145
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 146
    throw p1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->i(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->n(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->i(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->p(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->n(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->i(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SimpleArrayMap;->o(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->i(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->p(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/collection/SimpleArrayMap;->o(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string/jumbo v0, "{}"

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 14
    .line 15
    mul-int/lit8 v1, v1, 0x1c

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    .line 20
    const/16 v1, 0x7b

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    :goto_0
    iget v2, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 27
    .line 28
    if-ge v1, v2, :cond_4

    .line 29
    .line 30
    if-lez v1, :cond_1

    .line 31
    .line 32
    const-string v2, ", "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->l(I)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    const-string v3, "(this Map)"

    .line 42
    .line 43
    if-eq v2, p0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    :goto_1
    const/16 v2, 0x3d

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->p(I)Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    if-eq v2, p0, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    goto :goto_2

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_4
    const/16 v1, 0x7d

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    return-object v0
.end method
