.class public Lcom/narvii/util/http/ApiRequest$Builder;
.super Ljava/lang/Object;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/http/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field communityId:I

.field path:Ljava/lang/StringBuilder;

.field protocol:I

.field request:Lcom/narvii/util/http/ApiRequest;

.field scopeCid:I

.field segment:I

.field server:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 159
    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->communityId:I

    .line 164
    new-instance v0, Lcom/narvii/util/http/ApiRequest;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method constructor <init>(Lcom/narvii/util/http/ApiRequest;)V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 159
    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->communityId:I

    .line 168
    iput-object p1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method


# virtual methods
.method public _url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->path:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    const-string v0, "/null"

    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, 0x5

    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null in url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_2
    return-object p0

    .line 268
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unable to set url, path is already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 309
    invoke-virtual {p0, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public addPart(Lcom/narvii/util/http/ApiRequest$MultiPart;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->parts:Ljava/util/List;

    if-nez v1, :cond_0

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->parts:Ljava/util/List;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public body(Ljava/io/InputStream;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    if-eqz p1, :cond_1

    .line 381
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 384
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public body(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public body(Lorg/json/JSONObject;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public body([B)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->path:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    iget v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->protocol:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "https://"

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "http://"

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, "service.altamino.top"

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->segment:I

    if-ne v1, v2, :cond_1

    const-string v1, "/static"

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "/api"

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "/v1"

    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->communityId:I

    if-gez v1, :cond_2

    const-string v1, "/xx"

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    const-string v1, "/g"

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v1, "/x"

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->communityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    :goto_2
    iget v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCid:I

    if-nez v1, :cond_4

    const-string v1, "/s"

    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string v1, "/s-x"

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    :goto_3
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->path:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->path:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_6

    :cond_5
    const-string v1, "/"

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_6
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->path:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 562
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    .line 564
    :cond_7
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_8

    .line 565
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 567
    :cond_8
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->contentMultiPart()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 568
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->parts:Ljava/util/List;

    if-nez v1, :cond_9

    .line 569
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->parts:Ljava/util/List;

    .line 571
    :cond_9
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->parts:Ljava/util/List;

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 573
    :cond_a
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    return-object v0
.end method

.method public chatServer()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 247
    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->server:I

    return-object p0
.end method

.method public communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 236
    iput p1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->communityId:I

    .line 237
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iput p1, v0, Lcom/narvii/util/http/ApiRequest;->cid:I

    return-object p0
.end method

.method public contentType(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public contentTypeBinary()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    const-string v1, "application/octet-stream"

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public contentTypeJson()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    const-string v1, "application/json; charset=utf-8"

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public contentTypeMultiPart()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 3

    .line 318
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 319
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->boundary:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 320
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->boundary:Ljava/lang/String;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data;boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v2, v2, Lcom/narvii/util/http/ApiRequest;->boundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public contentTypeText()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    const-string/jumbo v1, "text/plain; charset=utf-8"

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public contentTypeUrlForm()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    const-string v1, "application/x-www-form-urlencoded; charset=utf-8"

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public delete()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    const/4 v1, 0x3

    iput v1, v0, Lcom/narvii/util/http/ApiRequest;->method:I

    return-object p0
.end method

.method public deleteBodyAfterDone()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/util/http/ApiRequest;->deleteBodyAfterDone:Z

    return-object p0
.end method

.method public global()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->communityId:I

    return-object p0
.end method

.method public headers(Ljava/util/List;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;)",
            "Lcom/narvii/util/http/ApiRequest$Builder;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    if-nez v1, :cond_0

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    if-nez v1, :cond_0

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 297
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 298
    aget-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 299
    aget-object v2, p1, v0

    .line 300
    iget-object v3, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v3, v3, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    new-instance v4, Lcom/narvii/util/http/NameValuePair;

    invoke-direct {v4, v1, v2}, Lcom/narvii/util/http/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public https()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 218
    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->protocol:I

    return-object p0
.end method

.method public mediaServer()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    const/4 v0, 0x2

    .line 252
    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->server:I

    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 7

    .line 435
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget v1, v0, Lcom/narvii/util/http/ApiRequest;->method:I

    const/16 v2, 0x3d

    const/4 v3, 0x1

    const/16 v4, 0x26

    if-ne v1, v3, :cond_f

    .line 436
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    const-string v1, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 439
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 441
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 443
    :cond_1
    instance-of v1, v0, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    .line 444
    check-cast v0, Ljava/lang/StringBuilder;

    .line 449
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 450
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    .line 453
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_2
    iget-object p1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    goto/16 :goto_3

    .line 446
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "unable to append url form, body is not a string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 459
    :cond_4
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    if-nez v1, :cond_5

    .line 460
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 463
    :cond_5
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_d

    .line 464
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 465
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 466
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto/16 :goto_3

    .line 467
    :cond_6
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 468
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto/16 :goto_3

    .line 469
    :cond_7
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_8

    .line 470
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto/16 :goto_3

    .line 471
    :cond_8
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_9

    .line 472
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;D)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto/16 :goto_3

    .line 473
    :cond_9
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 474
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto/16 :goto_3

    .line 475
    :cond_a
    instance-of v1, p2, Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v1, :cond_b

    .line 476
    check-cast p2, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto/16 :goto_3

    :cond_b
    if-nez p2, :cond_c

    .line 478
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putNull(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto/16 :goto_3

    .line 480
    :cond_c
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto/16 :goto_3

    .line 482
    :cond_d
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_e

    .line 483
    check-cast v0, Lorg/json/JSONObject;

    .line 485
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 489
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to append params on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 491
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 495
    :cond_f
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->path:Ljava/lang/StringBuilder;

    const/16 v5, 0x3f

    const-string v6, "?"

    if-eqz v1, :cond_12

    .line 497
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_10

    .line 499
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 500
    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_11

    .line 501
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    :cond_11
    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_16

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 508
    :cond_12
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_13

    .line 513
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 514
    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_14

    .line 515
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    :cond_14
    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_15

    .line 519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_15
    iget-object p1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    :catch_0
    :cond_16
    :goto_3
    return-object p0

    .line 524
    :cond_17
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "you must set the path or url before you use ApiRequest.Builder.params(...)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->path:Ljava/lang/StringBuilder;

    const-string v0, "/null"

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, 0x5

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null in url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_2
    return-object p0

    .line 198
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unable to set path, url is already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public post()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    const/4 v1, 0x1

    iput v1, v0, Lcom/narvii/util/http/ApiRequest;->method:I

    return-object p0
.end method

.method public retry(I)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->retry:Ljava/lang/Integer;

    return-object p0
.end method

.method public scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 187
    iput p1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCid:I

    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->communityId:I

    .line 189
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iput p1, v0, Lcom/narvii/util/http/ApiRequest;->cid:I

    return-object p0
.end method

.method public selfHandleErrorCode(I)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_error_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    return-object p0
.end method

.method public signature(I)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iput p1, v0, Lcom/narvii/util/http/ApiRequest;->signature:I

    return-object p0
.end method

.method public silent()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/util/http/ApiRequest;->silent:Z

    return-object p0
.end method

.method public staticPath()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 223
    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->segment:I

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 427
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iput p1, v0, Lcom/narvii/util/http/ApiRequest;->timeout:I

    return-object p0
.end method

.method public userInteraction()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/util/http/ApiRequest;->userInteraction:Z

    return-object p0
.end method

.method public verbose()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/util/http/ApiRequest;->verbose:Z

    return-object p0
.end method

.method public verify(I)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    iput p1, v0, Lcom/narvii/util/http/ApiRequest;->verify:I

    return-object p0
.end method
