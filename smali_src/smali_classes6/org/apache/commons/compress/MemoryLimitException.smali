.class public Lorg/apache/commons/compress/MemoryLimitException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final memoryLimitInKb:I

.field private final memoryNeededInKb:J


# direct methods
.method public constructor <init>(JI)V
    .locals 1

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/MemoryLimitException;->buildMessage(JI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-wide p1, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryNeededInKb:J

    iput p3, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryLimitInKb:I

    return-void
.end method

.method public constructor <init>(JILjava/lang/Exception;)V
    .locals 1

    .line 2
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/MemoryLimitException;->buildMessage(JI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-wide p1, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryNeededInKb:J

    iput p3, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryLimitInKb:I

    return-void
.end method

.method private static buildMessage(JI)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p0, " kb of memory would be needed; limit was "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p0, " kb. If the file is not corrupt, consider increasing the memory limit."

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method


# virtual methods
.method public getMemoryLimitInKb()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryLimitInKb:I

    return v0
.end method

.method public getMemoryNeededInKb()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryNeededInKb:J

    return-wide v0
.end method
