.class final Lcom/google/android/datatransport/runtime/scheduling/persistence/a;
.super Lcom/google/android/datatransport/runtime/scheduling/persistence/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/scheduling/persistence/a$b;
    }
.end annotation


# instance fields
.field private final criticalSectionEnterTimeoutMs:I

.field private final eventCleanUpAge:J

.field private final loadBatchSize:I

.field private final maxBlobByteSizePerRow:I

.field private final maxStorageSizeInBytes:J


# direct methods
.method private constructor <init>(JIIJI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;-><init>()V

    iput-wide p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->maxStorageSizeInBytes:J

    iput p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->loadBatchSize:I

    iput p4, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->criticalSectionEnterTimeoutMs:I

    iput-wide p5, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->eventCleanUpAge:J

    iput p7, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->maxBlobByteSizePerRow:I

    return-void
.end method

.method synthetic constructor <init>(JIIJILcom/google/android/datatransport/runtime/scheduling/persistence/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;-><init>(JIIJI)V

    return-void
.end method


# virtual methods
.method b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->criticalSectionEnterTimeoutMs:I

    return v0
.end method

.method c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->eventCleanUpAge:J

    return-wide v0
.end method

.method d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->loadBatchSize:I

    return v0
.end method

.method e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->maxBlobByteSizePerRow:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->maxStorageSizeInBytes:J

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;->f()J

    .line 17
    move-result-wide v5

    .line 18
    .line 19
    cmp-long v1, v3, v5

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->loadBatchSize:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;->d()I

    .line 27
    move-result v3

    .line 28
    .line 29
    if-ne v1, v3, :cond_1

    .line 30
    .line 31
    iget v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->criticalSectionEnterTimeoutMs:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;->b()I

    .line 35
    move-result v3

    .line 36
    .line 37
    if-ne v1, v3, :cond_1

    .line 38
    .line 39
    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->eventCleanUpAge:J

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;->c()J

    .line 43
    move-result-wide v5

    .line 44
    .line 45
    cmp-long v1, v3, v5

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->maxBlobByteSizePerRow:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;->e()I

    .line 53
    move-result p1

    .line 54
    .line 55
    if-ne v1, p1, :cond_1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v0, v2

    .line 58
    :goto_0
    return v0

    .line 59
    :cond_2
    return v2
.end method

.method f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->maxStorageSizeInBytes:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->maxStorageSizeInBytes:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->loadBatchSize:I

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->criticalSectionEnterTimeoutMs:I

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->eventCleanUpAge:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->maxBlobByteSizePerRow:I

    xor-int/2addr v0, v1

    return v0
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
    const-string v1, "EventStoreConfig{maxStorageSizeInBytes="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->maxStorageSizeInBytes:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", loadBatchSize="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->loadBatchSize:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, ", criticalSectionEnterTimeoutMs="

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->criticalSectionEnterTimeoutMs:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, ", eventCleanUpAge="

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->eventCleanUpAge:J

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, ", maxBlobByteSizePerRow="

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    iget v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->maxBlobByteSizePerRow:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v1, "}"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
