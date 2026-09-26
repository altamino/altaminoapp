.class public Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final compressionElapsed:J

.field private final mergingElapsed:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;->compressionElapsed:J

    .line 6
    .line 7
    iput-wide p3, p0, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;->mergingElapsed:J

    .line 8
    return-void
.end method


# virtual methods
.method public getCompressionElapsed()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;->compressionElapsed:J

    return-wide v0
.end method

.method public getMergingElapsed()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;->mergingElapsed:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "compressionElapsed="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;->compressionElapsed:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "ms, mergingElapsed="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterStatistics;->mergingElapsed:J

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "ms"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
