.class public final Lokio/NioSystemFileSystem;
.super Lokio/JvmSystemFileSystem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNioSystemFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NioSystemFileSystem.kt\nokio/NioSystemFileSystem\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"
.end annotation

.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lokio/JvmSystemFileSystem;-><init>()V

    .line 4
    return-void
.end method

.method private final zeroToNull(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lokio/a;->a(Ljava/nio/file/attribute/FileTime;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return-object p1
.end method


# virtual methods
.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .locals 3
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
    const-string v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    .line 18
    move-result-object p2

    .line 19
    const/4 v0, 0x2

    .line 20
    .line 21
    new-array v0, v0, [Ljava/nio/file/CopyOption;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lokio/k;->a()Ljava/nio/file/StandardCopyOption;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lokio/l;->a(Ljava/lang/Object;)Ljava/nio/file/CopyOption;

    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lokio/m;->a()Ljava/nio/file/StandardCopyOption;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lokio/l;->a(Ljava/lang/Object;)Ljava/nio/file/CopyOption;

    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x1

    .line 42
    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2, v0}, Lokio/n;->a(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    return-void

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :catch_1
    new-instance p1, Ljava/io/IOException;

    .line 52
    .line 53
    const-string p2, "atomic move not supported"

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1

    .line 58
    .line 59
    :goto_0
    new-instance p2, Ljava/io/FileNotFoundException;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lokio/o;->a(Ljava/nio/file/NoSuchFileException;)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p2
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
    const-string v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    .line 18
    move-result-object p2

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2, v0}, Lokio/p;->a(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 25
    return-void
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .locals 19
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "path"

    .line 5
    .line 6
    move-object/from16 v2, p1

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-static {}, Lokio/q;->a()Ljava/lang/Class;

    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x1

    .line 20
    .line 21
    new-array v5, v4, [Ljava/nio/file/LinkOption;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lokio/b;->a()Ljava/nio/file/LinkOption;

    .line 25
    move-result-object v6

    .line 26
    const/4 v7, 0x0

    .line 27
    .line 28
    aput-object v6, v5, v7

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v3, v5}, Lokio/c;->a(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 32
    move-result-object v3
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/file/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    invoke-static {v3}, Lokio/d;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Z

    .line 36
    move-result v5

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lokio/e;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {v2}, Lokio/f;->a(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    :goto_0
    new-instance v5, Lokio/FileMetadata;

    .line 50
    .line 51
    .line 52
    invoke-static {v3}, Lokio/g;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Z

    .line 53
    move-result v9

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Lokio/h;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Z

    .line 57
    move-result v10

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    sget-object v6, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 62
    .line 63
    .line 64
    invoke-static {v6, v1, v7, v4, v2}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/nio/file/Path;ZILjava/lang/Object;)Lokio/Path;

    .line 65
    move-result-object v1

    .line 66
    move-object v11, v1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move-object v11, v2

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-static {v3}, Lokio/i;->a(Ljava/nio/file/attribute/BasicFileAttributes;)J

    .line 72
    move-result-wide v6

    .line 73
    .line 74
    .line 75
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    move-result-object v12

    .line 77
    .line 78
    .line 79
    invoke-static {v3}, Lokio/j;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v1}, Lokio/NioSystemFileSystem;->zeroToNull(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    .line 86
    move-result-object v1

    .line 87
    move-object v13, v1

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    move-object v13, v2

    .line 90
    .line 91
    .line 92
    :goto_2
    invoke-static {v3}, Lokio/r;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, v1}, Lokio/NioSystemFileSystem;->zeroToNull(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    .line 99
    move-result-object v1

    .line 100
    move-object v14, v1

    .line 101
    goto :goto_3

    .line 102
    :cond_3
    move-object v14, v2

    .line 103
    .line 104
    .line 105
    :goto_3
    invoke-static {v3}, Lokio/s;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v1}, Lokio/NioSystemFileSystem;->zeroToNull(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    .line 112
    move-result-object v2

    .line 113
    :cond_4
    move-object v15, v2

    .line 114
    .line 115
    const/16 v16, 0x0

    .line 116
    .line 117
    const/16 v17, 0x80

    .line 118
    .line 119
    const/16 v18, 0x0

    .line 120
    move-object v8, v5

    .line 121
    .line 122
    .line 123
    invoke-direct/range {v8 .. v18}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/k;)V

    .line 124
    return-object v5

    .line 125
    :catch_0
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "NioSystemFileSystem"

    return-object v0
.end method
