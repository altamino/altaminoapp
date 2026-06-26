.class public final Lcom/tonyodev/fetch/request/RequestInfo;
.super Ljava/lang/Object;
.source "RequestInfo.java"


# instance fields
.field private final downloadedBytes:J

.field private final error:I

.field private final filePath:Ljava/lang/String;

.field private final fileSize:J

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch/request/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final id:J

.field private final priority:I

.field private final progress:I

.field private final status:I

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;IJJILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJI",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch/request/Header;",
            ">;I)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-eqz p12, :cond_0

    .line 63
    iput-wide p1, p0, Lcom/tonyodev/fetch/request/RequestInfo;->id:J

    .line 64
    iput p3, p0, Lcom/tonyodev/fetch/request/RequestInfo;->status:I

    .line 65
    iput-object p4, p0, Lcom/tonyodev/fetch/request/RequestInfo;->url:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/tonyodev/fetch/request/RequestInfo;->filePath:Ljava/lang/String;

    .line 67
    iput p6, p0, Lcom/tonyodev/fetch/request/RequestInfo;->progress:I

    .line 68
    iput-wide p7, p0, Lcom/tonyodev/fetch/request/RequestInfo;->downloadedBytes:J

    .line 69
    iput-wide p9, p0, Lcom/tonyodev/fetch/request/RequestInfo;->fileSize:J

    .line 70
    iput p11, p0, Lcom/tonyodev/fetch/request/RequestInfo;->error:I

    .line 71
    iput-object p12, p0, Lcom/tonyodev/fetch/request/RequestInfo;->headers:Ljava/util/List;

    .line 72
    iput p13, p0, Lcom/tonyodev/fetch/request/RequestInfo;->priority:I

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Headers cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "FilePath cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Url cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDownloadedBytes()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->downloadedBytes:J

    return-wide v0
.end method

.method public getError()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->error:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->fileSize:J

    return-wide v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch/request/Header;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->id:J

    return-wide v0
.end method

.method public getProgress()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->progress:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->status:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/tonyodev/fetch/request/RequestInfo;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tonyodev/fetch/request/Header;

    .line 156
    invoke-virtual {v2}, Lcom/tonyodev/fetch/request/Header;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/tonyodev/fetch/request/RequestInfo;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 164
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tonyodev/fetch/request/RequestInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tonyodev/fetch/request/RequestInfo;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tonyodev/fetch/request/RequestInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",filePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tonyodev/fetch/request/RequestInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tonyodev/fetch/request/RequestInfo;->progress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",fileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tonyodev/fetch/request/RequestInfo;->fileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tonyodev/fetch/request/RequestInfo;->error:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",headers:{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "},priority:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tonyodev/fetch/request/RequestInfo;->priority:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
