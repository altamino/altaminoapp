.class public final Lokhttp3/internal/cache2/Relay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache2/Relay$RelaySource;,
        Lokhttp3/internal/cache2/Relay$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/cache2/Relay$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FILE_HEADER_SIZE:J = 0x20L

.field public static final PREFIX_CLEAN:Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PREFIX_DIRTY:Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SOURCE_FILE:I = 0x2

.field private static final SOURCE_UPSTREAM:I = 0x1


# instance fields
.field private final buffer:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bufferMaxSize:J

.field private complete:Z

.field private file:Ljava/io/RandomAccessFile;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final metadata:Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sourceCount:I

.field private upstream:Lokio/Source;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final upstreamBuffer:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private upstreamPos:J

.field private upstreamReader:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lokhttp3/internal/cache2/Relay$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/Relay$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lokhttp3/internal/cache2/Relay;->Companion:Lokhttp3/internal/cache2/Relay$Companion;

    .line 9
    .line 10
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 11
    .line 12
    const-string v1, "OkHttp cache v1\n"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    sput-object v1, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    .line 19
    .line 20
    const-string v1, "OkHttp DIRTY :(\n"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lokio/ByteString;

    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    iput-object p2, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    iput-wide p3, p0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    iput-object p5, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    iput-wide p6, p0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    .line 3
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->complete:Z

    .line 4
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;JLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V

    return-void
.end method

.method public static final synthetic access$writeHeader(Lokhttp3/internal/cache2/Relay;Lokio/ByteString;JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/cache2/Relay;->writeHeader(Lokio/ByteString;JJ)V

    .line 4
    return-void
.end method

.method private final writeHeader(Lokio/ByteString;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v3, Lokio/Buffer;

    .line 3
    .line 4
    .line 5
    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v3, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, p2, p3}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p4, p5}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    .line 18
    move-result-wide p1

    .line 19
    .line 20
    const-wide/16 p3, 0x20

    .line 21
    .line 22
    cmp-long p1, p1, p3

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    .line 27
    .line 28
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string p2, "file!!.channel"

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 44
    .line 45
    const-wide/16 v1, 0x0

    .line 46
    .line 47
    const-wide/16 v4, 0x20

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    .line 51
    return-void

    .line 52
    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string p2, "Failed requirement."

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1
.end method

.method private final writeMetadata(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v3, Lokio/Buffer;

    .line 3
    .line 4
    .line 5
    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 6
    .line 7
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3, v0}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 11
    .line 12
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    .line 13
    .line 14
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v2, "file!!.channel"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 30
    .line 31
    const-wide/16 v1, 0x20

    .line 32
    add-long/2addr v1, p1

    .line 33
    .line 34
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 38
    move-result p1

    .line 39
    int-to-long v4, p1

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    .line 43
    return-void
.end method


# virtual methods
.method public final commit(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache2/Relay;->writeMetadata(J)V

    .line 4
    .line 5
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 17
    .line 18
    sget-object v3, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    .line 19
    .line 20
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    .line 24
    move-result v0

    .line 25
    int-to-long v6, v0

    .line 26
    move-object v2, p0

    .line 27
    move-wide v4, p1

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/cache2/Relay;->writeHeader(Lokio/ByteString;JJ)V

    .line 31
    .line 32
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 43
    monitor-enter p0

    .line 44
    const/4 p1, 0x1

    .line 45
    .line 46
    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/cache2/Relay;->setComplete(Z)V

    .line 48
    .line 49
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    .line 51
    .line 52
    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    .line 53
    .line 54
    if-nez p1, :cond_0

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 59
    :goto_0
    const/4 p1, 0x0

    .line 60
    .line 61
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    monitor-exit p0

    .line 65
    throw p1
.end method

.method public final getBuffer()Lokio/Buffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method public final getBufferMaxSize()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    return-wide v0
.end method

.method public final getComplete()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/internal/cache2/Relay;->complete:Z

    return v0
.end method

.method public final getFile()Ljava/io/RandomAccessFile;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method public final getSourceCount()I
    .locals 1

    iget v0, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    return v0
.end method

.method public final getUpstream()Lokio/Source;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    return-object v0
.end method

.method public final getUpstreamBuffer()Lokio/Buffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    return-object v0
.end method

.method public final getUpstreamPos()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    return-wide v0
.end method

.method public final getUpstreamReader()Ljava/lang/Thread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    return-object v0
.end method

.method public final isClosed()Z
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final metadata()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Lokio/ByteString;

    return-object v0
.end method

.method public final newSource()Lokio/Source;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache2/Relay;->getFile()Ljava/io/RandomAccessFile;

    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    monitor-exit p0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache2/Relay;->getSourceCount()I

    .line 14
    move-result v0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lokhttp3/internal/cache2/Relay;->setSourceCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    .line 22
    new-instance v0, Lokhttp3/internal/cache2/Relay$RelaySource;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lokhttp3/internal/cache2/Relay$RelaySource;-><init>(Lokhttp3/internal/cache2/Relay;)V

    .line 26
    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public final setComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->complete:Z

    return-void
.end method

.method public final setFile(Ljava/io/RandomAccessFile;)V
    .locals 0
    .param p1    # Ljava/io/RandomAccessFile;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public final setSourceCount(I)V
    .locals 0

    iput p1, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    return-void
.end method

.method public final setUpstream(Lokio/Source;)V
    .locals 0
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    return-void
.end method

.method public final setUpstreamPos(J)V
    .locals 0

    iput-wide p1, p0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    return-void
.end method

.method public final setUpstreamReader(Ljava/lang/Thread;)V
    .locals 0
    .param p1    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    return-void
.end method
