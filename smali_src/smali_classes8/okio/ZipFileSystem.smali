.class public final Lokio/ZipFileSystem;
.super Lokio/FileSystem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/ZipFileSystem$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZipFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFileSystem.kt\nokio/ZipFileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,174:1\n52#2,18:175\n52#2,18:193\n*S KotlinDebug\n*F\n+ 1 ZipFileSystem.kt\nokio/ZipFileSystem\n*L\n102#1:175,18\n131#1:193,18\n*E\n"
.end annotation


# static fields
.field private static final Companion:Lokio/ZipFileSystem$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ROOT:Lokio/Path;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final comment:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lokio/Path;",
            "Lokio/internal/ZipEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileSystem:Lokio/FileSystem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final zipPath:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lokio/ZipFileSystem$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lokio/ZipFileSystem$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lokio/ZipFileSystem;->Companion:Lokio/ZipFileSystem$Companion;

    .line 9
    .line 10
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    const-string v4, "/"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v4, v2, v3, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sput-object v0, Lokio/ZipFileSystem;->ROOT:Lokio/Path;

    .line 21
    return-void
.end method

.method public constructor <init>(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/FileSystem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Lokio/FileSystem;",
            "Ljava/util/Map<",
            "Lokio/Path;",
            "Lokio/internal/ZipEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "zipPath"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "fileSystem"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "entries"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lokio/FileSystem;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Lokio/ZipFileSystem;->zipPath:Lokio/Path;

    .line 21
    .line 22
    iput-object p2, p0, Lokio/ZipFileSystem;->fileSystem:Lokio/FileSystem;

    .line 23
    .line 24
    iput-object p3, p0, Lokio/ZipFileSystem;->entries:Ljava/util/Map;

    .line 25
    .line 26
    iput-object p4, p0, Lokio/ZipFileSystem;->comment:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static final synthetic access$getROOT$cp()Lokio/Path;
    .locals 1

    sget-object v0, Lokio/ZipFileSystem;->ROOT:Lokio/Path;

    return-object v0
.end method

.method private final canonicalizeInternal(Lokio/Path;)Lokio/Path;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lokio/ZipFileSystem;->ROOT:Lokio/Path;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, v1}, Lokio/Path;->resolve(Lokio/Path;Z)Lokio/Path;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method private final list(Lokio/Path;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Z)",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lokio/ZipFileSystem;->canonicalizeInternal(Lokio/Path;)Lokio/Path;

    move-result-object v0

    iget-object v1, p0, Lokio/ZipFileSystem;->entries:Ljava/util/Map;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/internal/ZipEntry;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not a directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_1
    invoke-virtual {v0}, Lokio/internal/ZipEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/t;->U0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public appendingSink(Lokio/Path;Z)Lokio/Sink;
    .locals 0
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "file"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Ljava/io/IOException;

    .line 8
    .line 9
    const-string p2, "zip file systems are read-only"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .locals 1
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "source"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "target"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance p1, Ljava/io/IOException;

    .line 13
    .line 14
    const-string p2, "zip file systems are read-only"

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method

.method public canonicalize(Lokio/Path;)Lokio/Path;
    .locals 2
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "path"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lokio/ZipFileSystem;->canonicalizeInternal(Lokio/Path;)Lokio/Path;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lokio/ZipFileSystem;->entries:Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 28
    throw v0
.end method

.method public createDirectory(Lokio/Path;Z)V
    .locals 0
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "dir"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Ljava/io/IOException;

    .line 8
    .line 9
    const-string p2, "zip file systems are read-only"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public createSymlink(Lokio/Path;Lokio/Path;)V
    .locals 1
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "source"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "target"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance p1, Ljava/io/IOException;

    .line 13
    .line 14
    const-string p2, "zip file systems are read-only"

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method

.method public delete(Lokio/Path;Z)V
    .locals 0
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "path"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Ljava/io/IOException;

    .line 8
    .line 9
    const-string p2, "zip file systems are read-only"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public list(Lokio/Path;)Ljava/util/List;
    .locals 1
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lokio/ZipFileSystem;->list(Lokio/Path;Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    return-object p1
.end method

.method public listOrNull(Lokio/Path;)Ljava/util/List;
    .locals 1
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "dir"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, v0}, Lokio/ZipFileSystem;->list(Lokio/Path;Z)Ljava/util/List;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .locals 14
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "path"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lokio/ZipFileSystem;->canonicalizeInternal(Lokio/Path;)Lokio/Path;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget-object v0, p0, Lokio/ZipFileSystem;->entries:Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lokio/internal/ZipEntry;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    return-object v0

    .line 22
    .line 23
    :cond_0
    new-instance v12, Lokio/FileMetadata;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lokio/internal/ZipEntry;->isDirectory()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    xor-int/lit8 v2, v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lokio/internal/ZipEntry;->isDirectory()Z

    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lokio/internal/ZipEntry;->isDirectory()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    move-object v5, v0

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1}, Lokio/internal/ZipEntry;->getSize()J

    .line 46
    move-result-wide v5

    .line 47
    .line 48
    .line 49
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    move-result-object v1

    .line 51
    move-object v5, v1

    .line 52
    :goto_0
    const/4 v6, 0x0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lokio/internal/ZipEntry;->getLastModifiedAtMillis()Ljava/lang/Long;

    .line 56
    move-result-object v7

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    .line 60
    const/16 v10, 0x80

    .line 61
    const/4 v11, 0x0

    .line 62
    move-object v1, v12

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v1 .. v11}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/k;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lokio/internal/ZipEntry;->getOffset()J

    .line 69
    move-result-wide v1

    .line 70
    .line 71
    const-wide/16 v3, -0x1

    .line 72
    .line 73
    cmp-long v1, v1, v3

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    return-object v12

    .line 77
    .line 78
    :cond_2
    iget-object v1, p0, Lokio/ZipFileSystem;->fileSystem:Lokio/FileSystem;

    .line 79
    .line 80
    iget-object v2, p0, Lokio/ZipFileSystem;->zipPath:Lokio/Path;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    :try_start_0
    invoke-virtual {p1}, Lokio/internal/ZipEntry;->getOffset()J

    .line 88
    move-result-wide v2

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2, v3}, Lokio/FileHandle;->source(J)Lokio/Source;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 96
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    move-object v13, v0

    .line 100
    move-object v0, p1

    .line 101
    move-object p1, v13

    .line 102
    .line 103
    :goto_1
    if-eqz v1, :cond_4

    .line 104
    .line 105
    .line 106
    :try_start_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    goto :goto_2

    .line 108
    :catchall_1
    move-exception v1

    .line 109
    .line 110
    if-nez v0, :cond_3

    .line 111
    move-object v0, v1

    .line 112
    goto :goto_2

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-static {v0, v1}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-static {p1, v12}, Lokio/internal/ZipKt;->readLocalHeader(Lokio/BufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;

    .line 124
    move-result-object p1

    .line 125
    return-object p1

    .line 126
    :cond_5
    throw v0
.end method

.method public openReadOnly(Lokio/Path;)Lokio/FileHandle;
    .locals 1
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "file"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 8
    .line 9
    const-string v0, "not implemented yet!"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;
    .locals 0
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "file"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Ljava/io/IOException;

    .line 8
    .line 9
    const-string p2, "zip entries are not writable"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public sink(Lokio/Path;Z)Lokio/Sink;
    .locals 0
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "file"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Ljava/io/IOException;

    .line 8
    .line 9
    const-string p2, "zip file systems are read-only"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public source(Lokio/Path;)Lokio/Source;
    .locals 7
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "file"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lokio/ZipFileSystem;->canonicalizeInternal(Lokio/Path;)Lokio/Path;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lokio/ZipFileSystem;->entries:Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lokio/internal/ZipEntry;

    .line 18
    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    iget-object p1, p0, Lokio/ZipFileSystem;->fileSystem:Lokio/FileSystem;

    .line 22
    .line 23
    iget-object v1, p0, Lokio/ZipFileSystem;->zipPath:Lokio/Path;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v0}, Lokio/internal/ZipEntry;->getOffset()J

    .line 32
    move-result-wide v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v2, v3}, Lokio/FileHandle;->source(J)Lokio/Source;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 40
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v2

    .line 43
    move-object v6, v2

    .line 44
    move-object v2, v1

    .line 45
    move-object v1, v6

    .line 46
    .line 47
    :goto_0
    if-eqz p1, :cond_1

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    .line 54
    if-nez v1, :cond_0

    .line 55
    move-object v1, p1

    .line 56
    goto :goto_1

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-static {v1, p1}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    :cond_1
    :goto_1
    if-nez v1, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Lokio/internal/ZipKt;->skipLocalHeader(Lokio/BufferedSource;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lokio/internal/ZipEntry;->getCompressionMethod()I

    .line 71
    move-result p1

    .line 72
    const/4 v1, 0x1

    .line 73
    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    new-instance p1, Lokio/internal/FixedLengthSource;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lokio/internal/ZipEntry;->getSize()J

    .line 80
    move-result-wide v3

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, v2, v3, v4, v1}, Lokio/internal/FixedLengthSource;-><init>(Lokio/Source;JZ)V

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_2
    new-instance p1, Lokio/InflaterSource;

    .line 87
    .line 88
    new-instance v3, Lokio/internal/FixedLengthSource;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lokio/internal/ZipEntry;->getCompressedSize()J

    .line 92
    move-result-wide v4

    .line 93
    .line 94
    .line 95
    invoke-direct {v3, v2, v4, v5, v1}, Lokio/internal/FixedLengthSource;-><init>(Lokio/Source;JZ)V

    .line 96
    .line 97
    new-instance v2, Ljava/util/zip/Inflater;

    .line 98
    .line 99
    .line 100
    invoke-direct {v2, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p1, v3, v2}, Lokio/InflaterSource;-><init>(Lokio/Source;Ljava/util/zip/Inflater;)V

    .line 104
    .line 105
    new-instance v1, Lokio/internal/FixedLengthSource;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lokio/internal/ZipEntry;->getSize()J

    .line 109
    move-result-wide v2

    .line 110
    const/4 v0, 0x0

    .line 111
    .line 112
    .line 113
    invoke-direct {v1, p1, v2, v3, v0}, Lokio/internal/FixedLengthSource;-><init>(Lokio/Source;JZ)V

    .line 114
    move-object p1, v1

    .line 115
    :goto_2
    return-object p1

    .line 116
    :cond_3
    throw v1

    .line 117
    .line 118
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    const-string v2, "no such file: "

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 139
    throw v0
.end method
