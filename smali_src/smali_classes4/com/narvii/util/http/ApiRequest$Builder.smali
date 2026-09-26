.class public Lcom/narvii/util/http/ApiRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->communityId:I

    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method constructor <init>(Lcom/narvii/util/http/ApiRequest;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->communityId:I

    iput-object p1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method


# virtual methods
.method public _url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->path:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "/null"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x5

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    move-result v1

    .line 23
    .line 24
    if-ge v0, v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 28
    move-result v0

    .line 29
    .line 30
    const/16 v1, 0x2f

    .line 31
    .line 32
    if-eq v0, v1, :cond_0

    .line 33
    .line 34
    const/16 v1, 0x3f

    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v1, "null in url: "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 57
    :cond_1
    return-object p0

    .line 58
    .line 59
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 60
    .line 61
    .line 62
    const-string/jumbo v0, "unable to set url, path is already set"

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p1
.end method

.method public addHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_1
    :goto_0
    return-object p0
.end method

.method public addPart(Lcom/narvii/util/http/ApiRequest$MultiPart;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->parts:Ljava/util/List;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->parts:Ljava/util/List;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->parts:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-object p0
.end method

.method public body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 2
    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 5
    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public body(Ljava/io/InputStream;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 8
    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public body(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 1
    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public body(Lorg/json/JSONObject;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public body([B)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 4
    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->path:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->protocol:I

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    const-string v1, "https://"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    const-string v1, "http://"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v3, "service"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    sget-object v3, Lcom/narvii/app/NVApplication;->mainHost:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    iget v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->segment:I

    .line 50
    .line 51
    if-ne v1, v2, :cond_1

    .line 52
    .line 53
    const-string v1, "/static"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_1
    const-string v1, "/api"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    :goto_1
    const-string v1, "/v1"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    iget v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->communityId:I

    .line 70
    .line 71
    if-gez v1, :cond_2

    .line 72
    .line 73
    const-string v1, "/xx"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_2
    if-nez v1, :cond_3

    .line 80
    .line 81
    const-string v1, "/g"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_3
    const-string v1, "/x"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    iget v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->communityId:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    :goto_2
    iget v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCid:I

    .line 98
    .line 99
    if-nez v1, :cond_4

    .line 100
    .line 101
    const-string v1, "/s"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    goto :goto_3

    .line 106
    .line 107
    :cond_4
    const-string v1, "/s-x"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    iget v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCid:I

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    :goto_3
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->path:Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 121
    move-result v1

    .line 122
    .line 123
    if-lez v1, :cond_5

    .line 124
    .line 125
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->path:Ljava/lang/StringBuilder;

    .line 126
    const/4 v2, 0x0

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 130
    move-result v1

    .line 131
    .line 132
    const/16 v2, 0x2f

    .line 133
    .line 134
    if-eq v1, v2, :cond_6

    .line 135
    .line 136
    :cond_5
    const-string v1, "/"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    :cond_6
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->path:Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    iput-object v0, v1, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    .line 153
    .line 154
    :cond_7
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 155
    .line 156
    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 157
    .line 158
    instance-of v2, v1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    if-eqz v2, :cond_8

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 164
    move-result-object v1

    .line 165
    .line 166
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 167
    .line 168
    :cond_8
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->contentMultiPart()Z

    .line 172
    move-result v0

    .line 173
    .line 174
    if-eqz v0, :cond_a

    .line 175
    .line 176
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 177
    .line 178
    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->parts:Ljava/util/List;

    .line 179
    .line 180
    if-nez v1, :cond_9

    .line 181
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    .line 183
    .line 184
    .line 185
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->parts:Ljava/util/List;

    .line 188
    .line 189
    :cond_9
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 190
    .line 191
    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->parts:Ljava/util/List;

    .line 192
    .line 193
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 194
    .line 195
    :cond_a
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 196
    return-object v0
.end method

.method public chatServer()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->server:I

    return-object p0
.end method

.method public communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->communityId:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 5
    .line 6
    iput p1, v0, Lcom/narvii/util/http/ApiRequest;->cid:I

    .line 7
    return-object p0
.end method

.method public contentType(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public contentTypeBinary()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    const-string v1, "application/octet-stream"

    .line 5
    .line 6
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    .line 7
    return-object p0
.end method

.method public contentTypeJson()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    const-string v1, "application/json; charset=utf-8"

    .line 5
    .line 6
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    .line 7
    return-object p0
.end method

.method public contentTypeMultiPart()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->boundary:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->boundary:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v2, "multipart/form-data;boundary="

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/narvii/util/http/ApiRequest;->boundary:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    .line 45
    return-object p0
.end method

.method public contentTypeText()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "text/plain; charset=utf-8"

    .line 6
    .line 7
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    .line 8
    return-object p0
.end method

.method public contentTypeUrlForm()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    const-string v1, "application/x-www-form-urlencoded; charset=utf-8"

    .line 5
    .line 6
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    .line 7
    return-object p0
.end method

.method public delete()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    iput v1, v0, Lcom/narvii/util/http/ApiRequest;->method:I

    .line 6
    return-object p0
.end method

.method public deleteBodyAfterDone()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/util/http/ApiRequest;->deleteBodyAfterDone:Z

    .line 6
    return-object p0
.end method

.method public global()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 1
    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 5

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 4
    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 7
    aget-object v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    .line 8
    aget-object v2, p1, v2

    iget-object v3, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 9
    iget-object v3, v3, Lcom/narvii/util/http/ApiRequest;->headers:Ljava/util/List;

    new-instance v4, Lcom/narvii/util/http/NameValuePair;

    invoke-direct {v4, v1, v2}, Lcom/narvii/util/http/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public https()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->protocol:I

    return-object p0
.end method

.method public mediaServer()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->server:I

    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/util/http/ApiRequest;->method:I

    .line 5
    .line 6
    const/16 v2, 0x3d

    .line 7
    .line 8
    const/16 v3, 0x26

    .line 9
    const/4 v4, 0x1

    .line 10
    .line 11
    if-ne v1, v4, :cond_f

    .line 12
    .line 13
    const-string v1, "application/x-www-form-urlencoded; charset=utf-8"

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->contentType:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    move-object v0, v1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    instance-of v1, v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    check-cast v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 56
    move-result v1

    .line 57
    .line 58
    if-lez v1, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    :cond_2
    iget-object p1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    iput-object p2, p1, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    .line 95
    const-string/jumbo p2, "unable to append url form, body is not a string"

    .line 96
    .line 97
    .line 98
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p1

    .line 100
    .line 101
    :cond_4
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 102
    .line 103
    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 104
    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 112
    .line 113
    :cond_5
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 116
    .line 117
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 118
    .line 119
    if-eqz v1, :cond_d

    .line 120
    .line 121
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 122
    .line 123
    instance-of v1, p2, Ljava/lang/Integer;

    .line 124
    .line 125
    if-eqz v1, :cond_6

    .line 126
    .line 127
    check-cast p2, Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 131
    move-result p2

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :cond_6
    instance-of v1, p2, Ljava/lang/Long;

    .line 139
    .line 140
    if-eqz v1, :cond_7

    .line 141
    .line 142
    check-cast p2, Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 146
    move-result-wide v1

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 150
    .line 151
    goto/16 :goto_3

    .line 152
    .line 153
    :cond_7
    instance-of v1, p2, Ljava/lang/Float;

    .line 154
    .line 155
    if-eqz v1, :cond_8

    .line 156
    .line 157
    check-cast p2, Ljava/lang/Float;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 161
    move-result p2

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 165
    .line 166
    goto/16 :goto_3

    .line 167
    .line 168
    :cond_8
    instance-of v1, p2, Ljava/lang/Double;

    .line 169
    .line 170
    if-eqz v1, :cond_9

    .line 171
    .line 172
    check-cast p2, Ljava/lang/Double;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 176
    move-result-wide v1

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;D)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 180
    .line 181
    goto/16 :goto_3

    .line 182
    .line 183
    :cond_9
    instance-of v1, p2, Ljava/lang/Boolean;

    .line 184
    .line 185
    if-eqz v1, :cond_a

    .line 186
    .line 187
    check-cast p2, Ljava/lang/Boolean;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 191
    move-result p2

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 195
    .line 196
    goto/16 :goto_3

    .line 197
    .line 198
    :cond_a
    instance-of v1, p2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 199
    .line 200
    if-eqz v1, :cond_b

    .line 201
    .line 202
    check-cast p2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 206
    .line 207
    goto/16 :goto_3

    .line 208
    .line 209
    :cond_b
    if-nez p2, :cond_c

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putNull(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 213
    .line 214
    goto/16 :goto_3

    .line 215
    .line 216
    .line 217
    :cond_c
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    move-result-object p2

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 222
    .line 223
    goto/16 :goto_3

    .line 224
    .line 225
    :cond_d
    instance-of v1, v0, Lorg/json/JSONObject;

    .line 226
    .line 227
    if-eqz v1, :cond_e

    .line 228
    .line 229
    check-cast v0, Lorg/json/JSONObject;

    .line 230
    .line 231
    .line 232
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .line 234
    goto/16 :goto_3

    .line 235
    .line 236
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 237
    .line 238
    new-instance p2, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string/jumbo v0, "unable to append params on "

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 250
    .line 251
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->body:Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    move-result-object v0

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object p2

    .line 263
    .line 264
    .line 265
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 266
    throw p1

    .line 267
    .line 268
    :cond_f
    iget-object v1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->path:Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const/16 v5, 0x3f

    .line 271
    .line 272
    const-string v6, "?"

    .line 273
    .line 274
    if-eqz v1, :cond_12

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 278
    move-result v0

    .line 279
    .line 280
    if-gez v0, :cond_10

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    goto :goto_1

    .line 285
    .line 286
    .line 287
    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 288
    move-result v0

    .line 289
    sub-int/2addr v0, v4

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 293
    move-result v0

    .line 294
    .line 295
    if-eq v0, v3, :cond_11

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    :cond_11
    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    if-eqz p2, :cond_16

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 310
    move-result-object p1

    .line 311
    .line 312
    .line 313
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    move-result-object p1

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    goto :goto_3

    .line 319
    .line 320
    :cond_12
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    .line 321
    .line 322
    if-eqz v0, :cond_17

    .line 323
    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 331
    move-result v0

    .line 332
    .line 333
    if-gez v0, :cond_13

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    goto :goto_2

    .line 338
    .line 339
    .line 340
    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 341
    move-result v0

    .line 342
    sub-int/2addr v0, v4

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 346
    move-result v0

    .line 347
    .line 348
    if-eq v0, v3, :cond_14

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    :cond_14
    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    if-eqz p2, :cond_15

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 363
    move-result-object p1

    .line 364
    .line 365
    .line 366
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    move-result-object p1

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    :cond_15
    iget-object p1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    move-result-object p2

    .line 377
    .line 378
    iput-object p2, p1, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    .line 379
    :catch_0
    :cond_16
    :goto_3
    return-object p0

    .line 380
    .line 381
    :cond_17
    new-instance p1, Ljava/lang/RuntimeException;

    .line 382
    .line 383
    .line 384
    const-string/jumbo p2, "you must set the path or url before you use ApiRequest.Builder.params(...)"

    .line 385
    .line 386
    .line 387
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 388
    throw p1
.end method

.method public path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->url:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->path:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "/null"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x5

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    move-result v1

    .line 28
    .line 29
    if-ge v0, v1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 33
    move-result v0

    .line 34
    .line 35
    const/16 v1, 0x2f

    .line 36
    .line 37
    if-eq v0, v1, :cond_0

    .line 38
    .line 39
    const/16 v1, 0x3f

    .line 40
    .line 41
    if-ne v0, v1, :cond_1

    .line 42
    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v1, "null in url: "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 62
    :cond_1
    return-object p0

    .line 63
    .line 64
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 65
    .line 66
    .line 67
    const-string/jumbo v0, "unable to set path, url is already set"

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1
.end method

.method public post()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput v1, v0, Lcom/narvii/util/http/ApiRequest;->method:I

    .line 6
    return-object p0
.end method

.method public retry(I)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->retry:Ljava/lang/Integer;

    .line 9
    return-object p0
.end method

.method public scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCid:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->communityId:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 8
    .line 9
    iput p1, v0, Lcom/narvii/util/http/ApiRequest;->cid:I

    .line 10
    return-object p0
.end method

.method public selfHandleErrorCode(I)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "_error_"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    return-object p0
.end method

.method public signature(I)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/util/http/ApiRequest;->signature:I

    .line 5
    return-object p0
.end method

.method public silent()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/util/http/ApiRequest;->silent:Z

    .line 6
    return-object p0
.end method

.method public staticPath()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->segment:I

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 1
    iput-object p1, v0, Lcom/narvii/util/http/ApiRequest;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 2
    iget-object v1, v0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 4
    iget-object v0, v0, Lcom/narvii/util/http/ApiRequest;->tags:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/util/http/ApiRequest;->timeout:I

    .line 5
    return-object p0
.end method

.method public userInteraction()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/util/http/ApiRequest;->userInteraction:Z

    .line 6
    return-object p0
.end method

.method public verbose()Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/util/http/ApiRequest;->verbose:Z

    .line 6
    return-object p0
.end method

.method public verify(I)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$Builder;->request:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/util/http/ApiRequest;->verify:I

    .line 5
    return-object p0
.end method
