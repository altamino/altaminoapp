.class public Lcom/narvii/util/http/ApiRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/http/ApiRequest$Builder;,
        Lcom/narvii/util/http/ApiRequest$FilePart;,
        Lcom/narvii/util/http/ApiRequest$FormPart;,
        Lcom/narvii/util/http/ApiRequest$MultiPart;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/util/http/ApiRequest;->cid:I

    .line 7
    return-void
.end method

.method public static builder()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public contentMultiPart()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v1, "multipart/form-data"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public edit()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/util/http/ApiRequest;->method:I

    .line 8
    .line 9
    iput v1, v0, Lcom/narvii/util/http/ApiRequest;->method:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    .line 26
    .line 27
    iget v1, p0, Lcom/narvii/util/http/ApiRequest;->timeout:I

    .line 28
    .line 29
    iput v1, v0, Lcom/narvii/util/http/ApiRequest;->timeout:I

    .line 30
    .line 31
    iget v1, p0, Lcom/narvii/util/http/ApiRequest;->signature:I

    .line 32
    .line 33
    iput v1, v0, Lcom/narvii/util/http/ApiRequest;->signature:I

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->retry:Ljava/lang/Integer;

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->retry:Ljava/lang/Integer;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->tag:Ljava/lang/Object;

    .line 40
    .line 41
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->tag:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    .line 44
    .line 45
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/narvii/util/http/ApiRequest;->deleteBodyAfterDone:Z

    .line 48
    .line 49
    iput-boolean v1, v0, Lcom/narvii/util/http/ApiRequest;->deleteBodyAfterDone:Z

    .line 50
    .line 51
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>(Lcom/narvii/util/http/ApiRequest;)V

    .line 55
    return-object v1
.end method

.method public getCid()I
    .locals 1

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

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    return-object v0
.end method

.method public isTagInvalid()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "_invalid"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/narvii/util/http/ApiRequest;->tagBoolean(Ljava/lang/Object;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public method()I
    .locals 1

    iget v0, p0, Lcom/narvii/util/http/ApiRequest;->method:I

    return v0
.end method

.method public retry()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->retry:Ljava/lang/Integer;

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public tag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public tag(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public tagBoolean(Ljava/lang/Object;Z)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result p2

    .line 15
    :cond_0
    return p2
.end method

.method public tagInt(Ljava/lang/Object;I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p2

    .line 15
    :cond_0
    return p2
.end method

.method public tagInvalid()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "_invalid"

    .line 3
    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method public timeout()I
    .locals 1

    iget v0, p0, Lcom/narvii/util/http/ApiRequest;->timeout:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/util/http/ApiRequest;->method:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v1, "GET "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_0
    const/4 v1, 0x3

    .line 26
    const/4 v2, 0x1

    .line 27
    .line 28
    if-ne v0, v2, :cond_7

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "POST "

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    iget-object v3, p0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 43
    .line 44
    instance-of v4, v3, [B

    .line 45
    .line 46
    const-string v5, " bytes]"

    .line 47
    .line 48
    const-string v6, " ["

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, [B

    .line 58
    array-length v1, v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_1
    instance-of v4, v3, Ljava/io/File;

    .line 68
    .line 69
    const-string v7, " "

    .line 70
    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    check-cast v3, Ljava/io/File;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 90
    move-result-wide v1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_2
    instance-of v4, v3, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 100
    .line 101
    if-eqz v4, :cond_5

    .line 102
    .line 103
    check-cast v3, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 104
    .line 105
    const-string v4, "secret"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 109
    move-result-object v5

    .line 110
    .line 111
    if-eqz v5, :cond_4

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->deepCopy()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    .line 119
    move-result-object v5

    .line 120
    .line 121
    .line 122
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object v5

    .line 124
    .line 125
    const/16 v6, 0x20

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    .line 129
    move-result v6

    .line 130
    .line 131
    const-string v8, "****"

    .line 132
    .line 133
    if-lez v6, :cond_3

    .line 134
    .line 135
    if-ge v6, v1, :cond_3

    .line 136
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    const/4 v9, 0x0

    .line 142
    add-int/2addr v6, v2

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 146
    move-result-object v2

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v8

    .line 157
    .line 158
    .line 159
    :cond_3
    invoke-virtual {v3, v4, v8}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 160
    .line 161
    .line 162
    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    goto :goto_0

    .line 167
    .line 168
    :cond_5
    if-eqz v3, :cond_6

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    :cond_6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v0

    .line 181
    return-object v0

    .line 182
    .line 183
    :cond_7
    if-ne v0, v1, :cond_8

    .line 184
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    const-string v1, "DELETE "

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 203
    return-object v0

    .line 204
    .line 205
    :cond_8
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    .line 206
    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    return-object v0
.end method
