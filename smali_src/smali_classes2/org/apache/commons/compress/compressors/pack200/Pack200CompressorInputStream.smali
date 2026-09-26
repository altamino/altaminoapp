.class public Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "SourceFile"


# static fields
.field private static final CAFE_DOOD:[B

.field private static final SIG_LENGTH:I


# instance fields
.field private final originalInput:Ljava/io/InputStream;

.field private final streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->CAFE_DOOD:[B

    array-length v0, v0

    sput v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->SIG_LENGTH:I

    return-void

    :array_0
    .array-data 1
        -0x36t
        -0x2t
        -0x30t
        0xdt
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->IN_MEMORY:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/Map;)V
    .locals 1
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

    .line 7
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->IN_MEMORY:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;",
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

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->IN_MEMORY:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            "Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;",
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

    .line 9
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->originalInput:Ljava/io/InputStream;

    .line 10
    invoke-virtual {p3}, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->newStreamBridge()Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    .line 11
    new-instance v0, Ljava/util/jar/JarOutputStream;

    invoke-direct {v0, p3}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 12
    :try_start_0
    invoke-static {}, Ljava/util/jar/Pack200;->newUnpacker()Ljava/util/jar/Pack200$Unpacker;

    move-result-object p3

    if-eqz p4, :cond_0

    .line 13
    invoke-interface {p3}, Ljava/util/jar/Pack200$Unpacker;->properties()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 14
    new-instance p2, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream$1;

    invoke-direct {p2, p0, p1}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream$1;-><init>(Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;Ljava/io/InputStream;)V

    invoke-interface {p3, p2, v0}, Ljava/util/jar/Pack200$Unpacker;->unpack(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-interface {p3, p2, v0}, Ljava/util/jar/Pack200$Unpacker;->unpack(Ljava/io/File;Ljava/util/jar/JarOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :goto_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    .line 17
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 18
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
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

    .line 3
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->IN_MEMORY:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;",
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

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    return-void
.end method

.method public static matches([BI)Z
    .locals 3

    .line 1
    .line 2
    sget v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->SIG_LENGTH:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    move p1, v1

    .line 8
    .line 9
    :goto_0
    sget v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->SIG_LENGTH:I

    .line 10
    .line 11
    if-ge p1, v0, :cond_2

    .line 12
    .line 13
    aget-byte v0, p0, p1

    .line 14
    .line 15
    sget-object v2, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->CAFE_DOOD:[B

    .line 16
    .line 17
    aget-byte v2, v2, p1

    .line 18
    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    return v1

    .line 21
    .line 22
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 p0, 0x1

    .line 25
    return p0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->originalInput:Ljava/io/InputStream;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 13
    :cond_0
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    .line 16
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->originalInput:Ljava/io/InputStream;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 22
    :cond_1
    throw v0
.end method

.method public mark(I)V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return v0

    .line 12
    :catch_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    .line 1
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    .line 2
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 10
    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->streamBridge:Lorg/apache/commons/compress/compressors/pack200/StreamBridge;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInput()Ljava/io/InputStream;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 10
    move-result-wide p1

    .line 11
    return-wide p1
.end method
