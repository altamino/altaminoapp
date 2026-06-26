.class public Lcom/narvii/util/http/ApiRequest;
.super Ljava/lang/Object;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/http/ApiRequest$FilePart;,
        Lcom/narvii/util/http/ApiRequest$FormPart;,
        Lcom/narvii/util/http/ApiRequest$MultiPart;,
        Lcom/narvii/util/http/ApiRequest$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_BINARY:Ljava/lang/String; = "application/octet-stream"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json; charset=utf-8"

.field public static final CONTENT_TYPE_MULTIPART:Ljava/lang/String; = "multipart/form-data"

.field public static final CONTENT_TYPE_TEXT:Ljava/lang/String; = "text/plain; charset=utf-8"

.field public static final CONTENT_TYPE_URL_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded; charset=utf-8"

.field public static final DELETE:I = 0x3

.field public static final GET:I = 0x0

.field public static final MULTIPART_NAME_PAYLOAD:Ljava/lang/String; = "payload"

.field public static final POST:I = 0x1


# instance fields
.field body:Ljava/lang/Object;

.field boundary:Ljava/lang/String;

.field cid:I

.field contentType:Ljava/lang/String;

.field deleteBodyAfterDone:Z

.field headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field method:I

.field nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

.field parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/util/http/ApiRequest$MultiPart;",
            ">;"
        }
    .end annotation
.end field

.field retry:Ljava/lang/Integer;

.field signature:I

.field silent:Z

.field tag:Ljava/lang/Object;

.field tags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field timeout:I

.field url:Ljava/lang/String;

.field userInteraction:Z

.field verbose:Z

.field verify:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/narvii/util/http/ApiRequest;->cid:I

    return-void
.end method

.method public static builder()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 578
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public contentMultiPart()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "multipart/form-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public edit()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 582
    new-instance v0, Lcom/narvii/util/http/ApiRequest;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest;-><init>()V

    .line 583
    iget v1, p0, Lcom/narvii/util/http/ApiRequest;->method:I

    iput v1, v0, Lcom/narvii/util/http/ApiRequest;->method:I

    .line 584
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    .line 585
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    .line 586
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 587
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    .line 588
    iget v1, p0, Lcom/narvii/util/http/ApiRequest;->timeout:I

    iput v1, v0, Lcom/narvii/util/http/ApiRequest;->timeout:I

    .line 589
    iget v1, p0, Lcom/narvii/util/http/ApiRequest;->signature:I

    iput v1, v0, Lcom/narvii/util/http/ApiRequest;->signature:I

    .line 590
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->retry:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->retry:Ljava/lang/Integer;

    .line 591
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->tag:Ljava/lang/Object;

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->tag:Ljava/lang/Object;

    .line 592
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    .line 593
    iget-boolean v1, p0, Lcom/narvii/util/http/ApiRequest;->deleteBodyAfterDone:Z

    iput-boolean v1, v0, Lcom/narvii/util/http/ApiRequest;->deleteBodyAfterDone:Z

    .line 594
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>(Lcom/narvii/util/http/ApiRequest;)V

    return-object v1
.end method

.method public getCid()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/narvii/util/http/ApiRequest;->cid:I

    return v0
.end method

.method public getTags()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    return-object v0
.end method

.method public headers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    return-object v0
.end method

.method public isTagInvalid()Z
    .locals 2

    const-string v0, "_invalid"

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/narvii/util/http/ApiRequest;->tagBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public method()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/narvii/util/http/ApiRequest;->method:I

    return v0
.end method

.method public retry()Ljava/lang/Integer;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->retry:Ljava/lang/Integer;

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public tag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public tag(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public tagBoolean(Ljava/lang/Object;Z)Z
    .locals 1

    .line 142
    invoke-virtual {p0, p1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 143
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_0
    return p2
.end method

.method public tagInt(Ljava/lang/Object;I)I
    .locals 1

    .line 137
    invoke-virtual {p0, p1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 138
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    return p2
.end method

.method public tagInvalid()V
    .locals 2

    const/4 v0, 0x1

    .line 125
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "_invalid"

    invoke-virtual {p0, v1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public timeout()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/narvii/util/http/ApiRequest;->timeout:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 600
    iget v0, p0, Lcom/narvii/util/http/ApiRequest;->method:I

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "POST "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 605
    iget-object v3, p0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget-object v3, p0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    instance-of v4, v3, [B

    const-string v5, " bytes]"

    const-string v6, " ["

    if-eqz v4, :cond_1

    .line 607
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    check-cast v1, [B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 608
    :cond_1
    instance-of v4, v3, Ljava/io/File;

    const-string v7, " "

    if-eqz v4, :cond_2

    .line 609
    check-cast v3, Ljava/io/File;

    .line 610
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 611
    :cond_2
    instance-of v4, v3, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v4, :cond_5

    .line 613
    check-cast v3, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v4, "secret"

    .line 615
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 616
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->deepCopy()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    .line 617
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    .line 618
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const-string v8, "****"

    if-lez v6, :cond_3

    if-ge v6, v1, :cond_3

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    add-int/2addr v6, v2

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 620
    :cond_3
    invoke-virtual {v3, v4, v8}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 622
    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 624
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 626
    :cond_6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    if-ne v0, v1, :cond_8

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 631
    :cond_8
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    return-object v0
.end method
