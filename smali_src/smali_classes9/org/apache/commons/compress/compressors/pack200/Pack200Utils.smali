.class public Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static normalize(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p0, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;->normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    return-void
.end method

.method public static normalize(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;->normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    return-void
.end method

.method public static normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "pack.segment.limit"

    const-string v1, "-1"

    .line 5
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "commons-compress"

    const-string v1, "pack200normalize"

    .line 6
    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 7
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 9
    :try_start_2
    invoke-static {}, Ljava/util/jar/Pack200;->newPacker()Ljava/util/jar/Pack200$Packer;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/jar/Pack200$Packer;->properties()Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    invoke-interface {p0, v2, v1}, Ljava/util/jar/Pack200$Packer;->pack(Ljava/util/jar/JarFile;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 12
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 13
    invoke-static {}, Ljava/util/jar/Pack200;->newUnpacker()Ljava/util/jar/Pack200$Unpacker;

    move-result-object p0

    .line 14
    new-instance p2, Ljava/util/jar/JarOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v1}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :try_start_5
    invoke-interface {p0, v0, p2}, Ljava/util/jar/Pack200$Unpacker;->unpack(Ljava/io/File;Ljava/util/jar/JarOutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 16
    :try_start_6
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    .line 19
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 20
    :try_start_8
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception p2

    :try_start_9
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_4
    move-exception p0

    goto :goto_2

    :catchall_5
    move-exception p0

    .line 21
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception p1

    .line 22
    :try_start_b
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_1

    :catchall_7
    move-exception p2

    :try_start_c
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 23
    :goto_2
    :try_start_d
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_8
    move-exception p1

    .line 24
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_3

    :catchall_9
    move-exception p2

    :try_start_f
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 25
    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 27
    :cond_2
    throw p0
.end method

.method public static normalize(Ljava/io/File;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p0, p0, p1}, Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;->normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    return-void
.end method
