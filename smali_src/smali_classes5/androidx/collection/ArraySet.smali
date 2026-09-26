.class public final Landroidx/collection/ArraySet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/collection/ArraySet$ElementIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field private static sBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final sBaseCacheLock:Ljava/lang/Object;

.field private static sBaseCacheSize:I

.field private static sTwiceBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final sTwiceBaseCacheLock:Ljava/lang/Object;

.field private static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field private mHashes:[I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/collection/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    sput-object v0, Landroidx/collection/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/collection/ArraySet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object p1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 4
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;->c(I)V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Landroidx/collection/ArraySet;->mSize:I

    return-void
.end method

.method public constructor <init>(Landroidx/collection/ArraySet;)V
    .locals 0
    .param p1    # Landroidx/collection/ArraySet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Landroidx/collection/ArraySet;-><init>()V

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->a(Landroidx/collection/ArraySet;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Landroidx/collection/ArraySet;-><init>()V

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 3
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Landroidx/collection/ArraySet;-><init>()V

    if-eqz p1, :cond_0

    .line 11
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 12
    invoke-virtual {p0, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 8

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    if-ne p1, v0, :cond_2

    .line 8
    .line 9
    sget-object v0, Landroidx/collection/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    .line 12
    :try_start_0
    sget-object v4, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    :try_start_1
    iput-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 17
    .line 18
    aget-object v5, v4, v3

    .line 19
    .line 20
    check-cast v5, [Ljava/lang/Object;

    .line 21
    .line 22
    sput-object v5, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object v5, v4, v2

    .line 25
    .line 26
    check-cast v5, [I

    .line 27
    .line 28
    iput-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    aput-object v1, v4, v2

    .line 33
    .line 34
    aput-object v1, v4, v3

    .line 35
    .line 36
    sget v5, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 37
    sub-int/2addr v5, v2

    .line 38
    .line 39
    sput v5, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :catch_0
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 46
    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    const-string v7, "ArraySet Found corrupt ArraySet cache: [0]="

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    aget-object v7, v4, v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v7, " [1]="

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    aget-object v2, v4, v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    sput-object v1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 80
    .line 81
    sput v3, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 82
    :cond_1
    monitor-exit v0

    .line 83
    goto :goto_2

    .line 84
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw p1

    .line 86
    :cond_2
    const/4 v0, 0x4

    .line 87
    .line 88
    if-ne p1, v0, :cond_5

    .line 89
    .line 90
    sget-object v0, Landroidx/collection/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    .line 91
    monitor-enter v0

    .line 92
    .line 93
    :try_start_3
    sget-object v4, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    .line 95
    if-eqz v4, :cond_4

    .line 96
    .line 97
    :try_start_4
    iput-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 98
    .line 99
    aget-object v5, v4, v3

    .line 100
    .line 101
    check-cast v5, [Ljava/lang/Object;

    .line 102
    .line 103
    sput-object v5, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 104
    .line 105
    aget-object v5, v4, v2

    .line 106
    .line 107
    check-cast v5, [I

    .line 108
    .line 109
    iput-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 110
    .line 111
    if-eqz v5, :cond_3

    .line 112
    .line 113
    aput-object v1, v4, v2

    .line 114
    .line 115
    aput-object v1, v4, v3

    .line 116
    .line 117
    sget v5, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 118
    sub-int/2addr v5, v2

    .line 119
    .line 120
    sput v5, Landroidx/collection/ArraySet;->sBaseCacheSize:I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 121
    :try_start_5
    monitor-exit v0

    .line 122
    return-void

    .line 123
    :catchall_1
    move-exception p1

    .line 124
    goto :goto_1

    .line 125
    .line 126
    :catch_1
    :cond_3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 127
    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    const-string v7, "ArraySet Found corrupt ArraySet cache: [0]="

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    aget-object v7, v4, v3

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v7, " [1]="

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    aget-object v2, v4, v2

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    sput-object v1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 161
    .line 162
    sput v3, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 163
    :cond_4
    monitor-exit v0

    .line 164
    goto :goto_2

    .line 165
    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    throw p1

    .line 167
    .line 168
    :cond_5
    :goto_2
    new-array v0, p1, [I

    .line 169
    .line 170
    iput-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 171
    .line 172
    new-array p1, p1, [Ljava/lang/Object;

    .line 173
    .line 174
    iput-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 175
    return-void
.end method

.method private d(I)I
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 3
    .line 4
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->a([III)I

    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p1

    .line 10
    .line 11
    :catch_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 15
    throw p1
.end method

.method private static f([I[Ljava/lang/Object;I)V
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
    sget-object v0, Landroidx/collection/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 15
    .line 16
    :try_start_0
    sget v1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 17
    .line 18
    if-ge v1, v5, :cond_1

    .line 19
    .line 20
    sget-object v1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 21
    .line 22
    aput-object v1, p1, v4

    .line 23
    .line 24
    aput-object p0, p1, v6

    .line 25
    sub-int/2addr p2, v6

    .line 26
    .line 27
    :goto_0
    if-lt p2, v3, :cond_0

    .line 28
    .line 29
    aput-object v2, p1, p2

    .line 30
    .line 31
    add-int/lit8 p2, p2, -0x1

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    sput-object p1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 37
    .line 38
    sget p0, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 39
    add-int/2addr p0, v6

    .line 40
    .line 41
    sput p0, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 42
    :cond_1
    monitor-exit v0

    .line 43
    goto :goto_4

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0

    .line 46
    :cond_2
    array-length v0, p0

    .line 47
    const/4 v1, 0x4

    .line 48
    .line 49
    if-ne v0, v1, :cond_5

    .line 50
    .line 51
    sget-object v0, Landroidx/collection/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    .line 52
    monitor-enter v0

    .line 53
    .line 54
    :try_start_1
    sget v1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 55
    .line 56
    if-ge v1, v5, :cond_4

    .line 57
    .line 58
    sget-object v1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v1, p1, v4

    .line 61
    .line 62
    aput-object p0, p1, v6

    .line 63
    sub-int/2addr p2, v6

    .line 64
    .line 65
    :goto_2
    if-lt p2, v3, :cond_3

    .line 66
    .line 67
    aput-object v2, p1, p2

    .line 68
    .line 69
    add-int/lit8 p2, p2, -0x1

    .line 70
    goto :goto_2

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    goto :goto_3

    .line 73
    .line 74
    :cond_3
    sput-object p1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 75
    .line 76
    sget p0, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 77
    add-int/2addr p0, v6

    .line 78
    .line 79
    sput p0, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 80
    :cond_4
    monitor-exit v0

    .line 81
    goto :goto_4

    .line 82
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    throw p0

    .line 84
    :cond_5
    :goto_4
    return-void
.end method

.method private g(Ljava/lang/Object;I)I
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0, p2}, Landroidx/collection/ArraySet;->d(I)I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-gez v1, :cond_1

    .line 13
    return v1

    .line 14
    .line 15
    :cond_1
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    return v1

    .line 25
    .line 26
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    :goto_0
    if-ge v2, v0, :cond_4

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 31
    .line 32
    aget v3, v3, v2

    .line 33
    .line 34
    if-ne v3, p2, :cond_4

    .line 35
    .line 36
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 37
    .line 38
    aget-object v3, v3, v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-eqz v3, :cond_3

    .line 45
    return v2

    .line 46
    .line 47
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 51
    .line 52
    :goto_1
    if-ltz v1, :cond_6

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 55
    .line 56
    aget v0, v0, v1

    .line 57
    .line 58
    if-ne v0, p2, :cond_6

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 61
    .line 62
    aget-object v0, v0, v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    return v1

    .line 70
    .line 71
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_6
    not-int p1, v2

    .line 74
    return p1
.end method

.method private j()I
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1}, Landroidx/collection/ArraySet;->d(I)I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-gez v1, :cond_1

    .line 14
    return v1

    .line 15
    .line 16
    :cond_1
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    return v1

    .line 22
    .line 23
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 24
    .line 25
    :goto_0
    if-ge v2, v0, :cond_4

    .line 26
    .line 27
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 28
    .line 29
    aget v3, v3, v2

    .line 30
    .line 31
    if-nez v3, :cond_4

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 34
    .line 35
    aget-object v3, v3, v2

    .line 36
    .line 37
    if-nez v3, :cond_3

    .line 38
    return v2

    .line 39
    .line 40
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 44
    .line 45
    :goto_1
    if-ltz v1, :cond_6

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 48
    .line 49
    aget v0, v0, v1

    .line 50
    .line 51
    if-nez v0, :cond_6

    .line 52
    .line 53
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 54
    .line 55
    aget-object v0, v0, v1

    .line 56
    .line 57
    if-nez v0, :cond_5

    .line 58
    return v1

    .line 59
    .line 60
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_6
    not-int v0, v2

    .line 63
    return v0
.end method


# virtual methods
.method public a(Landroidx/collection/ArraySet;)V
    .locals 4
    .param p1    # Landroidx/collection/ArraySet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p1, Landroidx/collection/ArraySet;->mSize:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 5
    add-int/2addr v1, v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->e(I)V

    .line 9
    .line 10
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    if-lez v0, :cond_2

    .line 16
    .line 17
    iget-object v1, p1, Landroidx/collection/ArraySet;->mHashes:[I

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    iput v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 42
    throw p1

    .line 43
    .line 44
    :cond_1
    :goto_0
    if-ge v2, v0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroidx/collection/ArraySet;->p(I)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    :goto_1
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/collection/ArraySet;->j()I

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
    invoke-direct {p0, p1, v2}, Landroidx/collection/ArraySet;->g(Ljava/lang/Object;I)I

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
    return v1

    .line 26
    :cond_1
    not-int v2, v2

    .line 27
    .line 28
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 29
    array-length v5, v4

    .line 30
    .line 31
    if-lt v0, v5, :cond_6

    .line 32
    .line 33
    const/16 v5, 0x8

    .line 34
    .line 35
    if-lt v0, v5, :cond_2

    .line 36
    .line 37
    shr-int/lit8 v5, v0, 0x1

    .line 38
    add-int/2addr v5, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v6, 0x4

    .line 41
    .line 42
    if-lt v0, v6, :cond_3

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    move v5, v6

    .line 45
    .line 46
    :goto_1
    iget-object v6, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v5}, Landroidx/collection/ArraySet;->c(I)V

    .line 50
    .line 51
    iget v5, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 52
    .line 53
    if-ne v0, v5, :cond_5

    .line 54
    .line 55
    iget-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 56
    array-length v7, v5

    .line 57
    .line 58
    if-lez v7, :cond_4

    .line 59
    array-length v7, v4

    .line 60
    .line 61
    .line 62
    invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    iget-object v5, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 65
    array-length v7, v6

    .line 66
    .line 67
    .line 68
    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-static {v4, v6, v0}, Landroidx/collection/ArraySet;->f([I[Ljava/lang/Object;I)V

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_5
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 75
    .line 76
    .line 77
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 78
    throw p1

    .line 79
    .line 80
    :cond_6
    :goto_2
    if-ge v2, v0, :cond_7

    .line 81
    .line 82
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 83
    .line 84
    add-int/lit8 v4, v2, 0x1

    .line 85
    .line 86
    sub-int v5, v0, v2

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    .line 91
    iget-object v1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    .line 96
    :cond_7
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 97
    .line 98
    if-ne v0, v1, :cond_8

    .line 99
    .line 100
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 101
    array-length v4, v0

    .line 102
    .line 103
    if-ge v2, v4, :cond_8

    .line 104
    .line 105
    aput v3, v0, v2

    .line 106
    .line 107
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 108
    .line 109
    aput-object p1, v0, v2

    .line 110
    const/4 p1, 0x1

    .line 111
    add-int/2addr v1, p1

    .line 112
    .line 113
    iput v1, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 114
    return p1

    .line 115
    .line 116
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 117
    .line 118
    .line 119
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 120
    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr v0, v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->e(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    or-int/2addr v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 9
    .line 10
    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    .line 11
    .line 12
    iput-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 13
    .line 14
    sget-object v3, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    .line 15
    .line 16
    iput-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    iput v3, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Landroidx/collection/ArraySet;->f([I[Ljava/lang/Object;I)V

    .line 23
    .line 24
    :cond_0
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 25
    .line 26
    if-nez v0, :cond_1

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

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

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

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public e(I)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    if-ge v2, p1, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;->c(I)V

    .line 13
    .line 14
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 15
    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 19
    const/4 v4, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v4, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 25
    .line 26
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v4, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    :cond_0
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2, p1}, Landroidx/collection/ArraySet;->f([I[Ljava/lang/Object;I)V

    .line 35
    .line 36
    :cond_1
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 37
    .line 38
    if-ne p1, v0, :cond_2

    .line 39
    return-void

    .line 40
    .line 41
    :cond_2
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 45
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    instance-of v1, p1, Ljava/util/Set;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    check-cast p1, Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->size()I

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 19
    move-result v3

    .line 20
    .line 21
    if-eq v1, v3, :cond_1

    .line 22
    return v2

    .line 23
    :cond_1
    move v1, v2

    .line 24
    .line 25
    :goto_0
    :try_start_0
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 26
    .line 27
    if-ge v1, v3, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->p(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 35
    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    if-nez v3, :cond_2

    .line 38
    return v2

    .line 39
    .line 40
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    return v0

    .line 43
    :catch_0
    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 3
    .line 4
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget v4, v0, v2

    .line 11
    add-int/2addr v3, v4

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return v3
.end method

.method public indexOf(Ljava/lang/Object;)I
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
    invoke-direct {p0}, Landroidx/collection/ArraySet;->j()I

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
    invoke-direct {p0, p1, v0}, Landroidx/collection/ArraySet;->g(Ljava/lang/Object;I)I

    .line 15
    move-result p1

    .line 16
    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/collection/ArraySet$ElementIterator;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/collection/ArraySet$ElementIterator;-><init>(Landroidx/collection/ArraySet;)V

    .line 6
    return-object v0
.end method

.method public m(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 5
    .line 6
    aget-object v2, v1, p1

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    if-gt v0, v3, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 16
    .line 17
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 18
    array-length v5, v4

    .line 19
    .line 20
    const/16 v6, 0x8

    .line 21
    .line 22
    if-le v5, v6, :cond_3

    .line 23
    array-length v5, v4

    .line 24
    .line 25
    div-int/lit8 v5, v5, 0x3

    .line 26
    .line 27
    if-ge v0, v5, :cond_3

    .line 28
    .line 29
    if-le v0, v6, :cond_1

    .line 30
    .line 31
    shr-int/lit8 v5, v0, 0x1

    .line 32
    .line 33
    add-int v6, v0, v5

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-direct {p0, v6}, Landroidx/collection/ArraySet;->c(I)V

    .line 37
    .line 38
    if-lez p1, :cond_2

    .line 39
    .line 40
    iget-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 41
    const/4 v6, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static {v4, v6, v5, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    iget-object v5, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v6, v5, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    .line 51
    :cond_2
    if-ge p1, v3, :cond_5

    .line 52
    .line 53
    add-int/lit8 v5, p1, 0x1

    .line 54
    .line 55
    iget-object v6, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 56
    .line 57
    sub-int v7, v3, p1

    .line 58
    .line 59
    .line 60
    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    .line 62
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v5, v4, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_3
    if-ge p1, v3, :cond_4

    .line 69
    .line 70
    add-int/lit8 v1, p1, 0x1

    .line 71
    .line 72
    sub-int v5, v3, p1

    .line 73
    .line 74
    .line 75
    invoke-static {v4, v1, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    .line 77
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-static {v4, v1, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    .line 82
    :cond_4
    iget-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 83
    const/4 v1, 0x0

    .line 84
    .line 85
    aput-object v1, p1, v3

    .line 86
    .line 87
    :cond_5
    :goto_0
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 88
    .line 89
    if-ne v0, p1, :cond_6

    .line 90
    .line 91
    iput v3, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 92
    :goto_1
    return-object v2

    .line 93
    .line 94
    :cond_6
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 95
    .line 96
    .line 97
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 98
    throw p1
.end method

.method public p(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->m(I)Ljava/lang/Object;

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    or-int/2addr v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 10
    .line 11
    aget-object v3, v3, v0

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 15
    move-result v3

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->m(I)Ljava/lang/Object;

    .line 21
    move v2, v1

    .line 22
    .line 23
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return v2
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 1
    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 3
    array-length v0, p1

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    array-length v0, p1

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 7
    aput-object v0, p1, v1

    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "{}"

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 14
    .line 15
    mul-int/lit8 v1, v1, 0xe

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
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 27
    .line 28
    if-ge v1, v2, :cond_3

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
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->p(I)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    if-eq v2, p0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_2
    const-string v2, "(this Set)"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_3
    const/16 v1, 0x7d

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method
