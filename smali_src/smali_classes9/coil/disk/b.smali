.class public final Lcoil/disk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/disk/b$d;,
        Lcoil/disk/b$b;,
        Lcoil/disk/b$c;,
        Lcoil/disk/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\ncoil/disk/DiskLruCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FileSystem.kt\nokio/FileSystem\n+ 4 Okio.kt\nokio/Okio__OkioKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,869:1\n1#2:870\n66#3:871\n67#3:877\n79#3:898\n160#3:899\n80#3:900\n81#3:906\n52#4,5:872\n57#4,13:878\n52#4,5:901\n57#4,13:907\n357#5,7:891\n37#6:920\n36#6,3:921\n37#6:924\n36#6,3:925\n*S KotlinDebug\n*F\n+ 1 DiskLruCache.kt\ncoil/disk/DiskLruCache\n*L\n207#1:871\n207#1:877\n320#1:898\n320#1:899\n320#1:900\n320#1:906\n207#1:872,5\n207#1:878,13\n320#1:901,5\n320#1:907,13\n270#1:891,7\n585#1:920\n585#1:921,3\n641#1:924\n641#1:925,3\n*E\n"
.end annotation


# static fields
.field private static final CLEAN:Ljava/lang/String; = "CLEAN"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcoil/disk/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final JOURNAL_FILE:Ljava/lang/String; = "journal"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LEGAL_KEY_PATTERN:Lkotlin/text/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final READ:Ljava/lang/String; = "READ"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VERSION:Ljava/lang/String; = "1"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final appVersion:I

.field private final cleanupScope:Lkotlinx/coroutines/o0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private closed:Z

.field private final directory:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileSystem:Lcoil/disk/b$e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hasJournalErrors:Z

.field private initialized:Z

.field private final journalFile:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final journalFileBackup:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final journalFileTmp:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private journalWriter:Lokio/BufferedSink;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcoil/disk/b$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxSize:J

.field private mostRecentRebuildFailed:Z

.field private mostRecentTrimFailed:Z

.field private operationsSinceRewrite:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcoil/disk/b$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcoil/disk/b$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lcoil/disk/b;->Companion:Lcoil/disk/b$a;

    .line 9
    .line 10
    new-instance v0, Lkotlin/text/g;

    .line 11
    .line 12
    const-string v1, "[a-z0-9_-]{1,120}"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lkotlin/text/g;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    sput-object v0, Lcoil/disk/b;->LEGAL_KEY_PATTERN:Lkotlin/text/g;

    .line 18
    return-void
.end method

.method public constructor <init>(Lokio/FileSystem;Lokio/Path;Lkotlinx/coroutines/k0;JII)V
    .locals 2
    .param p1    # Lokio/FileSystem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Lcoil/disk/b;->directory:Lokio/Path;

    .line 6
    .line 7
    iput-wide p4, p0, Lcoil/disk/b;->maxSize:J

    .line 8
    .line 9
    iput p6, p0, Lcoil/disk/b;->appVersion:I

    .line 10
    .line 11
    iput p7, p0, Lcoil/disk/b;->valueCount:I

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long p4, p4, v0

    .line 16
    .line 17
    if-lez p4, :cond_1

    .line 18
    .line 19
    if-lez p7, :cond_0

    .line 20
    .line 21
    const-string p4, "journal"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p4}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    .line 25
    move-result-object p4

    .line 26
    .line 27
    iput-object p4, p0, Lcoil/disk/b;->journalFile:Lokio/Path;

    .line 28
    .line 29
    const-string p4, "journal.tmp"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p4}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    .line 33
    move-result-object p4

    .line 34
    .line 35
    iput-object p4, p0, Lcoil/disk/b;->journalFileTmp:Lokio/Path;

    .line 36
    .line 37
    const-string p4, "journal.bkp"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p4}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    iput-object p2, p0, Lcoil/disk/b;->journalFileBackup:Lokio/Path;

    .line 44
    .line 45
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 46
    const/4 p4, 0x0

    .line 47
    .line 48
    const/high16 p5, 0x3f400000    # 0.75f

    .line 49
    const/4 p6, 0x1

    .line 50
    .line 51
    .line 52
    invoke-direct {p2, p4, p5, p6}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 53
    .line 54
    iput-object p2, p0, Lcoil/disk/b;->lruEntries:Ljava/util/LinkedHashMap;

    .line 55
    const/4 p2, 0x0

    .line 56
    .line 57
    .line 58
    invoke-static {p2, p6, p2}, Lkotlinx/coroutines/y2;->b(Lkotlinx/coroutines/b2;ILjava/lang/Object;)Lkotlinx/coroutines/a0;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p6}, Lkotlinx/coroutines/k0;->limitedParallelism(I)Lkotlinx/coroutines/k0;

    .line 63
    move-result-object p3

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, p3}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    iput-object p2, p0, Lcoil/disk/b;->cleanupScope:Lkotlinx/coroutines/o0;

    .line 74
    .line 75
    new-instance p2, Lcoil/disk/b$e;

    .line 76
    .line 77
    .line 78
    invoke-direct {p2, p1}, Lcoil/disk/b$e;-><init>(Lokio/FileSystem;)V

    .line 79
    .line 80
    iput-object p2, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 81
    return-void

    .line 82
    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    .line 86
    const-string/jumbo p2, "valueCount <= 0"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p1

    .line 95
    .line 96
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    const-string p2, "maxSize <= 0"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p1
.end method

.method private final E0(Lcoil/disk/b$c;)Z
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcoil/disk/b$c;->f()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    const/16 v2, 0x20

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcoil/disk/b;->journalWriter:Lokio/BufferedSink;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v3, "DIRTY"

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcoil/disk/b$c;->d()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1}, Lcoil/disk/b$c;->f()I

    .line 39
    move-result v0

    .line 40
    const/4 v3, 0x1

    .line 41
    .line 42
    if-gtz v0, :cond_5

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcoil/disk/b$c;->b()Lcoil/disk/b$b;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    iget v0, p0, Lcoil/disk/b;->valueCount:I

    .line 52
    const/4 v4, 0x0

    .line 53
    .line 54
    :goto_0
    if-ge v4, v0, :cond_2

    .line 55
    .line 56
    iget-object v5, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcoil/disk/b$c;->a()Ljava/util/ArrayList;

    .line 60
    move-result-object v6

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    check-cast v6, Lokio/Path;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v6}, Lokio/FileSystem;->delete(Lokio/Path;)V

    .line 70
    .line 71
    iget-wide v5, p0, Lcoil/disk/b;->size:J

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcoil/disk/b$c;->e()[J

    .line 75
    move-result-object v7

    .line 76
    .line 77
    aget-wide v8, v7, v4

    .line 78
    sub-long/2addr v5, v8

    .line 79
    .line 80
    iput-wide v5, p0, Lcoil/disk/b;->size:J

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcoil/disk/b$c;->e()[J

    .line 84
    move-result-object v5

    .line 85
    .line 86
    const-wide/16 v6, 0x0

    .line 87
    .line 88
    aput-wide v6, v5, v4

    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_2
    iget v0, p0, Lcoil/disk/b;->operationsSinceRewrite:I

    .line 94
    add-int/2addr v0, v3

    .line 95
    .line 96
    iput v0, p0, Lcoil/disk/b;->operationsSinceRewrite:I

    .line 97
    .line 98
    iget-object v0, p0, Lcoil/disk/b;->journalWriter:Lokio/BufferedSink;

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    const-string v4, "REMOVE"

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcoil/disk/b$c;->d()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 116
    .line 117
    .line 118
    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 119
    .line 120
    :cond_3
    iget-object v0, p0, Lcoil/disk/b;->lruEntries:Ljava/util/LinkedHashMap;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcoil/disk/b$c;->d()Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    invoke-direct {p0}, Lcoil/disk/b;->U()Z

    .line 131
    move-result p1

    .line 132
    .line 133
    if-eqz p1, :cond_4

    .line 134
    .line 135
    .line 136
    invoke-direct {p0}, Lcoil/disk/b;->b0()V

    .line 137
    :cond_4
    return v3

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_1
    invoke-virtual {p1, v3}, Lcoil/disk/b$c;->m(Z)V

    .line 141
    return v3
.end method

.method private final F0()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/disk/b;->lruEntries:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcoil/disk/b$c;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcoil/disk/b$c;->h()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcoil/disk/b;->E0(Lcoil/disk/b$c;)Z

    .line 32
    const/4 v0, 0x1

    .line 33
    return v0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method private final G0()V
    .locals 4

    .line 1
    .line 2
    :cond_0
    iget-wide v0, p0, Lcoil/disk/b;->size:J

    .line 3
    .line 4
    iget-wide v2, p0, Lcoil/disk/b;->maxSize:J

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcoil/disk/b;->F0()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-boolean v0, p0, Lcoil/disk/b;->mostRecentTrimFailed:Z

    .line 19
    return-void
.end method

.method private final H0(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcoil/disk/b;->LEGAL_KEY_PATTERN:Lkotlin/text/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lkotlin/text/g;->b(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v1, "keys must match regex [a-z0-9_-]{1,120}: \""

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const/16 p1, 0x22

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method

.method private final declared-synchronized I0()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcoil/disk/b;->journalWriter:Lokio/BufferedSink;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :cond_0
    :goto_0
    iget-object v0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 15
    .line 16
    iget-object v1, p0, Lcoil/disk/b;->journalFileTmp:Lokio/Path;

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    :try_start_1
    const-string v3, "libcore.io.DiskLruCache"

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    const/16 v4, 0xa

    .line 35
    .line 36
    .line 37
    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 38
    .line 39
    const-string v3, "1"

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 47
    .line 48
    iget v3, p0, Lcoil/disk/b;->appVersion:I

    .line 49
    int-to-long v5, v3

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v5, v6}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 57
    .line 58
    iget v3, p0, Lcoil/disk/b;->valueCount:I

    .line 59
    int-to-long v5, v3

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v5, v6}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    .line 66
    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 70
    .line 71
    iget-object v3, p0, Lcoil/disk/b;->lruEntries:Ljava/util/LinkedHashMap;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    .line 78
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v5

    .line 84
    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    .line 88
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    check-cast v5, Lcoil/disk/b$c;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Lcoil/disk/b$c;->b()Lcoil/disk/b$b;

    .line 95
    move-result-object v6

    .line 96
    .line 97
    const/16 v7, 0x20

    .line 98
    .line 99
    if-eqz v6, :cond_1

    .line 100
    .line 101
    const-string v6, "DIRTY"

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, v7}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Lcoil/disk/b$c;->d()Ljava/lang/String;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 115
    .line 116
    .line 117
    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 118
    goto :goto_1

    .line 119
    :catchall_1
    move-exception v3

    .line 120
    goto :goto_2

    .line 121
    .line 122
    :cond_1
    const-string v6, "CLEAN"

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 126
    .line 127
    .line 128
    invoke-interface {v0, v7}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5}, Lcoil/disk/b$c;->d()Ljava/lang/String;

    .line 132
    move-result-object v6

    .line 133
    .line 134
    .line 135
    invoke-interface {v0, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v0}, Lcoil/disk/b$c;->o(Lokio/BufferedSink;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 142
    goto :goto_1

    .line 143
    .line 144
    :cond_2
    sget-object v3, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    goto :goto_3

    .line 146
    :goto_2
    move-object v8, v3

    .line 147
    move-object v3, v1

    .line 148
    move-object v1, v8

    .line 149
    .line 150
    :goto_3
    if-eqz v0, :cond_4

    .line 151
    .line 152
    .line 153
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 154
    goto :goto_4

    .line 155
    :catchall_2
    move-exception v0

    .line 156
    .line 157
    if-nez v1, :cond_3

    .line 158
    move-object v1, v0

    .line 159
    goto :goto_4

    .line 160
    .line 161
    .line 162
    :cond_3
    :try_start_3
    invoke-static {v1, v0}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    :cond_4
    :goto_4
    if-nez v1, :cond_6

    .line 165
    .line 166
    .line 167
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 168
    .line 169
    iget-object v0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 170
    .line 171
    iget-object v1, p0, Lcoil/disk/b;->journalFile:Lokio/Path;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    .line 175
    move-result v0

    .line 176
    .line 177
    if-eqz v0, :cond_5

    .line 178
    .line 179
    iget-object v0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 180
    .line 181
    iget-object v1, p0, Lcoil/disk/b;->journalFile:Lokio/Path;

    .line 182
    .line 183
    iget-object v3, p0, Lcoil/disk/b;->journalFileBackup:Lokio/Path;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1, v3}, Lokio/ForwardingFileSystem;->atomicMove(Lokio/Path;Lokio/Path;)V

    .line 187
    .line 188
    iget-object v0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 189
    .line 190
    iget-object v1, p0, Lcoil/disk/b;->journalFileTmp:Lokio/Path;

    .line 191
    .line 192
    iget-object v3, p0, Lcoil/disk/b;->journalFile:Lokio/Path;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1, v3}, Lokio/ForwardingFileSystem;->atomicMove(Lokio/Path;Lokio/Path;)V

    .line 196
    .line 197
    iget-object v0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 198
    .line 199
    iget-object v1, p0, Lcoil/disk/b;->journalFileBackup:Lokio/Path;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lokio/FileSystem;->delete(Lokio/Path;)V

    .line 203
    goto :goto_5

    .line 204
    .line 205
    :cond_5
    iget-object v0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 206
    .line 207
    iget-object v1, p0, Lcoil/disk/b;->journalFileTmp:Lokio/Path;

    .line 208
    .line 209
    iget-object v3, p0, Lcoil/disk/b;->journalFile:Lokio/Path;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1, v3}, Lokio/ForwardingFileSystem;->atomicMove(Lokio/Path;Lokio/Path;)V

    .line 213
    .line 214
    .line 215
    :goto_5
    invoke-direct {p0}, Lcoil/disk/b;->g0()Lokio/BufferedSink;

    .line 216
    move-result-object v0

    .line 217
    .line 218
    iput-object v0, p0, Lcoil/disk/b;->journalWriter:Lokio/BufferedSink;

    .line 219
    .line 220
    iput v2, p0, Lcoil/disk/b;->operationsSinceRewrite:I

    .line 221
    .line 222
    iput-boolean v2, p0, Lcoil/disk/b;->hasJournalErrors:Z

    .line 223
    .line 224
    iput-boolean v2, p0, Lcoil/disk/b;->mostRecentRebuildFailed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    monitor-exit p0

    .line 226
    return-void

    .line 227
    :cond_6
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    :goto_6
    monitor-exit p0

    .line 229
    throw v0
.end method

.method private final U()Z
    .locals 2

    .line 1
    iget v0, p0, Lcoil/disk/b;->operationsSinceRewrite:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final synthetic a(Lcoil/disk/b;Lcoil/disk/b$b;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcoil/disk/b;->q(Lcoil/disk/b$b;Z)V

    .line 4
    return-void
.end method

.method public static final synthetic b(Lcoil/disk/b;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcoil/disk/b;->closed:Z

    .line 3
    return p0
.end method

.method private final b0()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/disk/b;->cleanupScope:Lkotlinx/coroutines/o0;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    new-instance v3, Lcoil/disk/b$f;

    .line 7
    const/4 v4, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v3, p0, v4}, Lcoil/disk/b$f;-><init>(Lcoil/disk/b;Lkotlin/coroutines/d;)V

    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 16
    return-void
.end method

.method public static final synthetic d(Lcoil/disk/b;)Lokio/Path;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcoil/disk/b;->directory:Lokio/Path;

    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcoil/disk/b;)Lcoil/disk/b$e;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcoil/disk/b;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcoil/disk/b;->initialized:Z

    .line 3
    return p0
.end method

.method public static final synthetic g(Lcoil/disk/b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcoil/disk/b;->valueCount:I

    .line 3
    return p0
.end method

.method private final g0()Lokio/BufferedSink;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 3
    .line 4
    iget-object v1, p0, Lcoil/disk/b;->journalFile:Lokio/Path;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lokio/FileSystem;->appendingSink(Lokio/Path;)Lokio/Sink;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Lcoil/disk/c;

    .line 11
    .line 12
    new-instance v2, Lcoil/disk/b$g;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcoil/disk/b$g;-><init>(Lcoil/disk/b;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v0, v2}, Lcoil/disk/c;-><init>(Lokio/Sink;Le8/l;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static final synthetic h(Lcoil/disk/b;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcoil/disk/b;->U()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic i(Lcoil/disk/b;Lcoil/disk/b$c;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcoil/disk/b;->E0(Lcoil/disk/b$c;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic j(Lcoil/disk/b;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcoil/disk/b;->hasJournalErrors:Z

    .line 3
    return-void
.end method

.method public static final synthetic k(Lcoil/disk/b;Lokio/BufferedSink;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcoil/disk/b;->journalWriter:Lokio/BufferedSink;

    .line 3
    return-void
.end method

.method private final k0()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/disk/b;->lruEntries:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 17
    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    check-cast v3, Lcoil/disk/b$c;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcoil/disk/b$c;->b()Lcoil/disk/b$b;

    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x0

    .line 30
    .line 31
    if-nez v4, :cond_1

    .line 32
    .line 33
    iget v4, p0, Lcoil/disk/b;->valueCount:I

    .line 34
    .line 35
    :goto_1
    if-ge v5, v4, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcoil/disk/b$c;->e()[J

    .line 39
    move-result-object v6

    .line 40
    .line 41
    aget-wide v7, v6, v5

    .line 42
    add-long/2addr v1, v7

    .line 43
    .line 44
    add-int/lit8 v5, v5, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v4, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4}, Lcoil/disk/b$c;->i(Lcoil/disk/b$b;)V

    .line 50
    .line 51
    iget v4, p0, Lcoil/disk/b;->valueCount:I

    .line 52
    .line 53
    :goto_2
    if-ge v5, v4, :cond_2

    .line 54
    .line 55
    iget-object v6, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lcoil/disk/b$c;->a()Ljava/util/ArrayList;

    .line 59
    move-result-object v7

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v7

    .line 64
    .line 65
    check-cast v7, Lokio/Path;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v7}, Lokio/FileSystem;->delete(Lokio/Path;)V

    .line 69
    .line 70
    iget-object v6, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lcoil/disk/b$c;->c()Ljava/util/ArrayList;

    .line 74
    move-result-object v7

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v7

    .line 79
    .line 80
    check-cast v7, Lokio/Path;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v7}, Lokio/FileSystem;->delete(Lokio/Path;)V

    .line 84
    .line 85
    add-int/lit8 v5, v5, 0x1

    .line 86
    goto :goto_2

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_3
    iput-wide v1, p0, Lcoil/disk/b;->size:J

    .line 93
    return-void
.end method

.method public static final synthetic l(Lcoil/disk/b;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcoil/disk/b;->mostRecentRebuildFailed:Z

    .line 3
    return-void
.end method

.method public static final synthetic m(Lcoil/disk/b;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcoil/disk/b;->mostRecentTrimFailed:Z

    .line 3
    return-void
.end method

.method public static final synthetic n(Lcoil/disk/b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcoil/disk/b;->G0()V

    .line 4
    return-void
.end method

.method public static final synthetic o(Lcoil/disk/b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcoil/disk/b;->I0()V

    .line 4
    return-void
.end method

.method private final p()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcoil/disk/b;->closed:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "cache is closed"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method

.method private final declared-synchronized q(Lcoil/disk/b$b;Z)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcoil/disk/b$b;->g()Lcoil/disk/b$c;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcoil/disk/b$c;->b()Lcoil/disk/b$b;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_b

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-eqz p2, :cond_4

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcoil/disk/b$c;->h()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-nez v2, :cond_4

    .line 25
    .line 26
    iget v2, p0, Lcoil/disk/b;->valueCount:I

    .line 27
    move v3, v1

    .line 28
    .line 29
    :goto_0
    if-ge v3, v2, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcoil/disk/b$b;->h()[Z

    .line 33
    move-result-object v4

    .line 34
    .line 35
    aget-boolean v4, v4, v3

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    iget-object v4, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcoil/disk/b$c;->c()Ljava/util/ArrayList;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    check-cast v5, Lokio/Path;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v5}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    .line 53
    move-result v4

    .line 54
    .line 55
    if-nez v4, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcoil/disk/b$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_1
    :try_start_1
    iget p1, p0, Lcoil/disk/b;->valueCount:I

    .line 69
    .line 70
    :goto_1
    if-ge v1, p1, :cond_5

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcoil/disk/b$c;->c()Ljava/util/ArrayList;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    check-cast v2, Lokio/Path;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcoil/disk/b$c;->a()Ljava/util/ArrayList;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    check-cast v3, Lokio/Path;

    .line 91
    .line 92
    iget-object v4, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v2}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    .line 96
    move-result v4

    .line 97
    .line 98
    if-eqz v4, :cond_2

    .line 99
    .line 100
    iget-object v4, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v2, v3}, Lokio/ForwardingFileSystem;->atomicMove(Lokio/Path;Lokio/Path;)V

    .line 104
    goto :goto_2

    .line 105
    .line 106
    :cond_2
    iget-object v2, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcoil/disk/b$c;->a()Ljava/util/ArrayList;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    move-result-object v4

    .line 115
    .line 116
    check-cast v4, Lokio/Path;

    .line 117
    .line 118
    .line 119
    invoke-static {v2, v4}, Lcoil/util/e;->a(Lokio/FileSystem;Lokio/Path;)V

    .line 120
    .line 121
    .line 122
    :goto_2
    invoke-virtual {v0}, Lcoil/disk/b$c;->e()[J

    .line 123
    move-result-object v2

    .line 124
    .line 125
    aget-wide v4, v2, v1

    .line 126
    .line 127
    iget-object v2, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v3}, Lokio/FileSystem;->metadata(Lokio/Path;)Lokio/FileMetadata;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Lokio/FileMetadata;->getSize()Ljava/lang/Long;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    if-eqz v2, :cond_3

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 141
    move-result-wide v2

    .line 142
    goto :goto_3

    .line 143
    .line 144
    :cond_3
    const-wide/16 v2, 0x0

    .line 145
    .line 146
    .line 147
    :goto_3
    invoke-virtual {v0}, Lcoil/disk/b$c;->e()[J

    .line 148
    move-result-object v6

    .line 149
    .line 150
    aput-wide v2, v6, v1

    .line 151
    .line 152
    iget-wide v6, p0, Lcoil/disk/b;->size:J

    .line 153
    sub-long/2addr v6, v4

    .line 154
    add-long/2addr v6, v2

    .line 155
    .line 156
    iput-wide v6, p0, Lcoil/disk/b;->size:J

    .line 157
    .line 158
    add-int/lit8 v1, v1, 0x1

    .line 159
    goto :goto_1

    .line 160
    .line 161
    :cond_4
    iget p1, p0, Lcoil/disk/b;->valueCount:I

    .line 162
    .line 163
    :goto_4
    if-ge v1, p1, :cond_5

    .line 164
    .line 165
    iget-object v2, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcoil/disk/b$c;->c()Ljava/util/ArrayList;

    .line 169
    move-result-object v3

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    move-result-object v3

    .line 174
    .line 175
    check-cast v3, Lokio/Path;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v3}, Lokio/FileSystem;->delete(Lokio/Path;)V

    .line 179
    .line 180
    add-int/lit8 v1, v1, 0x1

    .line 181
    goto :goto_4

    .line 182
    :cond_5
    const/4 p1, 0x0

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p1}, Lcoil/disk/b$c;->i(Lcoil/disk/b$b;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lcoil/disk/b$c;->h()Z

    .line 189
    move-result p1

    .line 190
    .line 191
    if-eqz p1, :cond_6

    .line 192
    .line 193
    .line 194
    invoke-direct {p0, v0}, Lcoil/disk/b;->E0(Lcoil/disk/b$c;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    monitor-exit p0

    .line 196
    return-void

    .line 197
    .line 198
    :cond_6
    :try_start_2
    iget p1, p0, Lcoil/disk/b;->operationsSinceRewrite:I

    .line 199
    const/4 v1, 0x1

    .line 200
    add-int/2addr p1, v1

    .line 201
    .line 202
    iput p1, p0, Lcoil/disk/b;->operationsSinceRewrite:I

    .line 203
    .line 204
    iget-object p1, p0, Lcoil/disk/b;->journalWriter:Lokio/BufferedSink;

    .line 205
    .line 206
    .line 207
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 208
    .line 209
    const/16 v2, 0xa

    .line 210
    .line 211
    const/16 v3, 0x20

    .line 212
    .line 213
    if-nez p2, :cond_8

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lcoil/disk/b$c;->g()Z

    .line 217
    move-result p2

    .line 218
    .line 219
    if-eqz p2, :cond_7

    .line 220
    goto :goto_5

    .line 221
    .line 222
    :cond_7
    iget-object p2, p0, Lcoil/disk/b;->lruEntries:Ljava/util/LinkedHashMap;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Lcoil/disk/b$c;->d()Ljava/lang/String;

    .line 226
    move-result-object v1

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    const-string p2, "REMOVE"

    .line 232
    .line 233
    .line 234
    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 235
    .line 236
    .line 237
    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lcoil/disk/b$c;->d()Ljava/lang/String;

    .line 241
    move-result-object p2

    .line 242
    .line 243
    .line 244
    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 245
    .line 246
    .line 247
    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 248
    goto :goto_6

    .line 249
    .line 250
    .line 251
    :cond_8
    :goto_5
    invoke-virtual {v0, v1}, Lcoil/disk/b$c;->l(Z)V

    .line 252
    .line 253
    const-string p2, "CLEAN"

    .line 254
    .line 255
    .line 256
    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 257
    .line 258
    .line 259
    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Lcoil/disk/b$c;->d()Ljava/lang/String;

    .line 263
    move-result-object p2

    .line 264
    .line 265
    .line 266
    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, p1}, Lcoil/disk/b$c;->o(Lokio/BufferedSink;)V

    .line 270
    .line 271
    .line 272
    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 273
    .line 274
    .line 275
    :goto_6
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    .line 276
    .line 277
    iget-wide p1, p0, Lcoil/disk/b;->size:J

    .line 278
    .line 279
    iget-wide v0, p0, Lcoil/disk/b;->maxSize:J

    .line 280
    .line 281
    cmp-long p1, p1, v0

    .line 282
    .line 283
    if-gtz p1, :cond_9

    .line 284
    .line 285
    .line 286
    invoke-direct {p0}, Lcoil/disk/b;->U()Z

    .line 287
    move-result p1

    .line 288
    .line 289
    if-eqz p1, :cond_a

    .line 290
    .line 291
    .line 292
    :cond_9
    invoke-direct {p0}, Lcoil/disk/b;->b0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    :cond_a
    monitor-exit p0

    .line 294
    return-void

    .line 295
    .line 296
    :cond_b
    :try_start_3
    const-string p1, "Check failed."

    .line 297
    .line 298
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 302
    move-result-object p1

    .line 303
    .line 304
    .line 305
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 306
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    :goto_7
    monitor-exit p0

    .line 308
    throw p1
.end method

.method private final r()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/disk/b;->close()V

    .line 4
    .line 5
    iget-object v0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 6
    .line 7
    iget-object v1, p0, Lcoil/disk/b;->directory:Lokio/Path;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcoil/util/e;->b(Lokio/FileSystem;Lokio/Path;)V

    .line 11
    return-void
.end method

.method private final t0()V
    .locals 12

    .line 1
    .line 2
    const-string v0, ", "

    .line 3
    .line 4
    iget-object v1, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 5
    .line 6
    iget-object v2, p0, Lcoil/disk/b;->journalFile:Lokio/Path;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 27
    move-result-object v5

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 31
    move-result-object v6

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 35
    move-result-object v7

    .line 36
    .line 37
    const-string v8, "libcore.io.DiskLruCache"

    .line 38
    .line 39
    .line 40
    invoke-static {v8, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v8

    .line 42
    .line 43
    if-eqz v8, :cond_1

    .line 44
    .line 45
    const-string v8, "1"

    .line 46
    .line 47
    .line 48
    invoke-static {v8, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result v8

    .line 50
    .line 51
    if-eqz v8, :cond_1

    .line 52
    .line 53
    iget v8, p0, Lcoil/disk/b;->appVersion:I

    .line 54
    .line 55
    .line 56
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    move-result-object v8

    .line 58
    .line 59
    .line 60
    invoke-static {v8, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v8

    .line 62
    .line 63
    if-eqz v8, :cond_1

    .line 64
    .line 65
    iget v8, p0, Lcoil/disk/b;->valueCount:I

    .line 66
    .line 67
    .line 68
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 69
    move-result-object v8

    .line 70
    .line 71
    .line 72
    invoke-static {v8, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    move-result v8

    .line 74
    .line 75
    if-eqz v8, :cond_1

    .line 76
    .line 77
    .line 78
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 79
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    if-gtz v8, :cond_1

    .line 82
    const/4 v0, 0x0

    .line 83
    .line 84
    .line 85
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v3}, Lcoil/disk/b;->y0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcoil/disk/b;->lruEntries:Ljava/util/LinkedHashMap;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    .line 100
    move-result v3

    .line 101
    sub-int/2addr v0, v3

    .line 102
    .line 103
    iput v0, p0, Lcoil/disk/b;->operationsSinceRewrite:I

    .line 104
    .line 105
    .line 106
    invoke-interface {v1}, Lokio/BufferedSource;->exhausted()Z

    .line 107
    move-result v0

    .line 108
    .line 109
    if-nez v0, :cond_0

    .line 110
    .line 111
    .line 112
    invoke-direct {p0}, Lcoil/disk/b;->I0()V

    .line 113
    goto :goto_1

    .line 114
    .line 115
    .line 116
    :cond_0
    invoke-direct {p0}, Lcoil/disk/b;->g0()Lokio/BufferedSink;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    iput-object v0, p0, Lcoil/disk/b;->journalWriter:Lokio/BufferedSink;

    .line 120
    .line 121
    :goto_1
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 122
    goto :goto_3

    .line 123
    .line 124
    :cond_1
    new-instance v8, Ljava/io/IOException;

    .line 125
    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string/jumbo v10, "unexpected journal header: ["

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const/16 v0, 0x5d

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    .line 174
    invoke-direct {v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 175
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    :goto_2
    move-object v11, v2

    .line 177
    move-object v2, v0

    .line 178
    move-object v0, v11

    .line 179
    .line 180
    :goto_3
    if-eqz v1, :cond_3

    .line 181
    .line 182
    .line 183
    :try_start_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    goto :goto_4

    .line 185
    :catchall_1
    move-exception v1

    .line 186
    .line 187
    if-nez v2, :cond_2

    .line 188
    move-object v2, v1

    .line 189
    goto :goto_4

    .line 190
    .line 191
    .line 192
    :cond_2
    invoke-static {v2, v1}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    :cond_3
    :goto_4
    if-nez v2, :cond_4

    .line 195
    .line 196
    .line 197
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 198
    return-void

    .line 199
    :cond_4
    throw v2
.end method

.method private final y0(Ljava/lang/String;)V
    .locals 12

    .line 1
    .line 2
    const/16 v1, 0x20

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x6

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, p1

    .line 8
    .line 9
    .line 10
    invoke-static/range {v0 .. v5}, Lkotlin/text/k;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 11
    move-result v7

    .line 12
    .line 13
    .line 14
    const-string/jumbo v8, "unexpected journal line: "

    .line 15
    const/4 v9, -0x1

    .line 16
    .line 17
    if-eq v7, v9, :cond_6

    .line 18
    .line 19
    add-int/lit8 v10, v7, 0x1

    .line 20
    .line 21
    const/16 v1, 0x20

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x4

    .line 24
    const/4 v5, 0x0

    .line 25
    move-object v0, p1

    .line 26
    move v2, v10

    .line 27
    .line 28
    .line 29
    invoke-static/range {v0 .. v5}, Lkotlin/text/k;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    const-string/jumbo v1, "this as java.lang.String).substring(startIndex)"

    .line 34
    const/4 v2, 0x2

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    .line 38
    if-ne v0, v9, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    .line 45
    invoke-static {v5, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const/4 v10, 0x6

    .line 47
    .line 48
    if-ne v7, v10, :cond_1

    .line 49
    .line 50
    const-string v10, "REMOVE"

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v10, v4, v2, v3}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 54
    move-result v10

    .line 55
    .line 56
    if-eqz v10, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcoil/disk/b;->lruEntries:Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v5}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    .line 68
    .line 69
    const-string/jumbo v10, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 70
    .line 71
    .line 72
    invoke-static {v5, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    :cond_1
    iget-object v10, p0, Lcoil/disk/b;->lruEntries:Ljava/util/LinkedHashMap;

    .line 75
    .line 76
    .line 77
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v11

    .line 79
    .line 80
    if-nez v11, :cond_2

    .line 81
    .line 82
    new-instance v11, Lcoil/disk/b$c;

    .line 83
    .line 84
    .line 85
    invoke-direct {v11, p0, v5}, Lcoil/disk/b$c;-><init>(Lcoil/disk/b;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v10, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    :cond_2
    check-cast v11, Lcoil/disk/b$c;

    .line 91
    const/4 v5, 0x5

    .line 92
    .line 93
    if-eq v0, v9, :cond_3

    .line 94
    .line 95
    if-ne v7, v5, :cond_3

    .line 96
    .line 97
    const-string v10, "CLEAN"

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v10, v4, v2, v3}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 101
    move-result v10

    .line 102
    .line 103
    if-eqz v10, :cond_3

    .line 104
    const/4 v2, 0x1

    .line 105
    add-int/2addr v0, v2

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 109
    move-result-object v5

    .line 110
    .line 111
    .line 112
    invoke-static {v5, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    new-array v6, v2, [C

    .line 115
    .line 116
    const/16 v0, 0x20

    .line 117
    .line 118
    aput-char v0, v6, v4

    .line 119
    const/4 v7, 0x0

    .line 120
    const/4 v8, 0x0

    .line 121
    const/4 v9, 0x6

    .line 122
    const/4 v10, 0x0

    .line 123
    .line 124
    .line 125
    invoke-static/range {v5 .. v10}, Lkotlin/text/k;->B0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {v11, v2}, Lcoil/disk/b$c;->l(Z)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v11, v3}, Lcoil/disk/b$c;->i(Lcoil/disk/b$b;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v11, v0}, Lcoil/disk/b$c;->j(Ljava/util/List;)V

    .line 136
    goto :goto_0

    .line 137
    .line 138
    :cond_3
    if-ne v0, v9, :cond_4

    .line 139
    .line 140
    if-ne v7, v5, :cond_4

    .line 141
    .line 142
    const-string v1, "DIRTY"

    .line 143
    .line 144
    .line 145
    invoke-static {p1, v1, v4, v2, v3}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 146
    move-result v1

    .line 147
    .line 148
    if-eqz v1, :cond_4

    .line 149
    .line 150
    new-instance v0, Lcoil/disk/b$b;

    .line 151
    .line 152
    .line 153
    invoke-direct {v0, p0, v11}, Lcoil/disk/b$b;-><init>(Lcoil/disk/b;Lcoil/disk/b$c;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v11, v0}, Lcoil/disk/b$c;->i(Lcoil/disk/b$b;)V

    .line 157
    goto :goto_0

    .line 158
    .line 159
    :cond_4
    if-ne v0, v9, :cond_5

    .line 160
    const/4 v0, 0x4

    .line 161
    .line 162
    if-ne v7, v0, :cond_5

    .line 163
    .line 164
    const-string v0, "READ"

    .line 165
    .line 166
    .line 167
    invoke-static {p1, v0, v4, v2, v3}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 168
    move-result v0

    .line 169
    .line 170
    if-eqz v0, :cond_5

    .line 171
    :goto_0
    return-void

    .line 172
    .line 173
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 174
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 189
    .line 190
    .line 191
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 192
    throw v0

    .line 193
    .line 194
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 195
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v1

    .line 210
    .line 211
    .line 212
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 213
    throw v0
.end method


# virtual methods
.method public final declared-synchronized L(Ljava/lang/String;)Lcoil/disk/b$b;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcoil/disk/b;->p()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcoil/disk/b;->H0(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcoil/disk/b;->Q()V

    .line 11
    .line 12
    iget-object v0, p0, Lcoil/disk/b;->lruEntries:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcoil/disk/b$c;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcoil/disk/b$c;->b()Lcoil/disk/b$b;

    .line 25
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    move-object v2, v1

    .line 30
    .line 31
    :goto_0
    if-eqz v2, :cond_1

    .line 32
    monitor-exit p0

    .line 33
    return-object v1

    .line 34
    .line 35
    :cond_1
    if-eqz v0, :cond_2

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v0}, Lcoil/disk/b$c;->f()I

    .line 39
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    monitor-exit p0

    .line 43
    return-object v1

    .line 44
    .line 45
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Lcoil/disk/b;->mostRecentTrimFailed:Z

    .line 46
    .line 47
    if-nez v2, :cond_6

    .line 48
    .line 49
    iget-boolean v2, p0, Lcoil/disk/b;->mostRecentRebuildFailed:Z

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_3
    iget-object v2, p0, Lcoil/disk/b;->journalWriter:Lokio/BufferedSink;

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 58
    .line 59
    const-string v3, "DIRTY"

    .line 60
    .line 61
    .line 62
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 63
    .line 64
    const/16 v3, 0x20

    .line 65
    .line 66
    .line 67
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 68
    .line 69
    .line 70
    invoke-interface {v2, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 71
    .line 72
    const/16 v3, 0xa

    .line 73
    .line 74
    .line 75
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 76
    .line 77
    .line 78
    invoke-interface {v2}, Lokio/BufferedSink;->flush()V

    .line 79
    .line 80
    iget-boolean v2, p0, Lcoil/disk/b;->hasJournalErrors:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    monitor-exit p0

    .line 84
    return-object v1

    .line 85
    .line 86
    :cond_4
    if-nez v0, :cond_5

    .line 87
    .line 88
    :try_start_3
    new-instance v0, Lcoil/disk/b$c;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, p0, p1}, Lcoil/disk/b$c;-><init>(Lcoil/disk/b;Ljava/lang/String;)V

    .line 92
    .line 93
    iget-object v1, p0, Lcoil/disk/b;->lruEntries:Ljava/util/LinkedHashMap;

    .line 94
    .line 95
    .line 96
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    :cond_5
    new-instance p1, Lcoil/disk/b$b;

    .line 99
    .line 100
    .line 101
    invoke-direct {p1, p0, v0}, Lcoil/disk/b$b;-><init>(Lcoil/disk/b;Lcoil/disk/b$c;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Lcoil/disk/b$c;->i(Lcoil/disk/b$b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    monitor-exit p0

    .line 106
    return-object p1

    .line 107
    .line 108
    .line 109
    :cond_6
    :goto_1
    :try_start_4
    invoke-direct {p0}, Lcoil/disk/b;->b0()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    monitor-exit p0

    .line 111
    return-object v1

    .line 112
    :goto_2
    monitor-exit p0

    .line 113
    throw p1
.end method

.method public final declared-synchronized O(Ljava/lang/String;)Lcoil/disk/b$d;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcoil/disk/b;->p()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcoil/disk/b;->H0(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcoil/disk/b;->Q()V

    .line 11
    .line 12
    iget-object v0, p0, Lcoil/disk/b;->lruEntries:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcoil/disk/b$c;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcoil/disk/b$c;->n()Lcoil/disk/b$d;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    iget v1, p0, Lcoil/disk/b;->operationsSinceRewrite:I

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    iput v1, p0, Lcoil/disk/b;->operationsSinceRewrite:I

    .line 34
    .line 35
    iget-object v1, p0, Lcoil/disk/b;->journalWriter:Lokio/BufferedSink;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 39
    .line 40
    const-string v2, "READ"

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 44
    .line 45
    const/16 v2, 0x20

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 52
    .line 53
    const/16 p1, 0xa

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcoil/disk/b;->U()Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcoil/disk/b;->b0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    :goto_0
    monitor-exit p0

    .line 70
    return-object v0

    .line 71
    :cond_2
    :goto_1
    monitor-exit p0

    .line 72
    const/4 p1, 0x0

    .line 73
    return-object p1

    .line 74
    :goto_2
    monitor-exit p0

    .line 75
    throw p1
.end method

.method public final declared-synchronized Q()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcoil/disk/b;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 10
    .line 11
    iget-object v1, p0, Lcoil/disk/b;->journalFileTmp:Lokio/Path;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lokio/FileSystem;->delete(Lokio/Path;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 17
    .line 18
    iget-object v1, p0, Lcoil/disk/b;->journalFileBackup:Lokio/Path;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 27
    .line 28
    iget-object v1, p0, Lcoil/disk/b;->journalFile:Lokio/Path;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 37
    .line 38
    iget-object v1, p0, Lcoil/disk/b;->journalFileBackup:Lokio/Path;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lokio/FileSystem;->delete(Lokio/Path;)V

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 47
    .line 48
    iget-object v1, p0, Lcoil/disk/b;->journalFileBackup:Lokio/Path;

    .line 49
    .line 50
    iget-object v2, p0, Lcoil/disk/b;->journalFile:Lokio/Path;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Lokio/ForwardingFileSystem;->atomicMove(Lokio/Path;Lokio/Path;)V

    .line 54
    .line 55
    :cond_2
    :goto_0
    iget-object v0, p0, Lcoil/disk/b;->fileSystem:Lcoil/disk/b$e;

    .line 56
    .line 57
    iget-object v1, p0, Lcoil/disk/b;->journalFile:Lokio/Path;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    .line 61
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    const/4 v1, 0x1

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    .line 67
    :try_start_2
    invoke-direct {p0}, Lcoil/disk/b;->t0()V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcoil/disk/b;->k0()V

    .line 71
    .line 72
    iput-boolean v1, p0, Lcoil/disk/b;->initialized:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :catch_0
    const/4 v0, 0x0

    .line 76
    .line 77
    .line 78
    :try_start_3
    invoke-direct {p0}, Lcoil/disk/b;->r()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    .line 80
    :try_start_4
    iput-boolean v0, p0, Lcoil/disk/b;->closed:Z

    .line 81
    goto :goto_1

    .line 82
    :catchall_1
    move-exception v1

    .line 83
    .line 84
    iput-boolean v0, p0, Lcoil/disk/b;->closed:Z

    .line 85
    throw v1

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcoil/disk/b;->I0()V

    .line 89
    .line 90
    iput-boolean v1, p0, Lcoil/disk/b;->initialized:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :goto_2
    monitor-exit p0

    .line 94
    throw v0
.end method

.method public declared-synchronized close()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcoil/disk/b;->initialized:Z

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-boolean v0, p0, Lcoil/disk/b;->closed:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcoil/disk/b;->lruEntries:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    new-array v3, v2, [Lcoil/disk/b$c;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    check-cast v0, [Lcoil/disk/b$c;

    .line 33
    array-length v3, v0

    .line 34
    .line 35
    :goto_0
    if-ge v2, v3, :cond_2

    .line 36
    .line 37
    aget-object v4, v0, v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Lcoil/disk/b$c;->b()Lcoil/disk/b$b;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Lcoil/disk/b$b;->e()V

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto :goto_3

    .line 50
    .line 51
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-direct {p0}, Lcoil/disk/b;->G0()V

    .line 56
    .line 57
    iget-object v0, p0, Lcoil/disk/b;->cleanupScope:Lkotlinx/coroutines/o0;

    .line 58
    const/4 v2, 0x0

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/p0;->e(Lkotlinx/coroutines/o0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 62
    .line 63
    iget-object v0, p0, Lcoil/disk/b;->journalWriter:Lokio/BufferedSink;

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 70
    .line 71
    iput-object v2, p0, Lcoil/disk/b;->journalWriter:Lokio/BufferedSink;

    .line 72
    .line 73
    iput-boolean v1, p0, Lcoil/disk/b;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 76
    .line 77
    :cond_3
    :goto_2
    :try_start_1
    iput-boolean v1, p0, Lcoil/disk/b;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :goto_3
    monitor-exit p0

    .line 81
    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcoil/disk/b;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcoil/disk/b;->p()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcoil/disk/b;->G0()V

    .line 14
    .line 15
    iget-object v0, p0, Lcoil/disk/b;->journalWriter:Lokio/BufferedSink;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0

    .line 26
    throw v0
.end method
