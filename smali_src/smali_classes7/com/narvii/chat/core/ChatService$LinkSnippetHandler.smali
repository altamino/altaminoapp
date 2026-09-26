.class final Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/link/LinkSnippetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/core/ChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LinkSnippetHandler"
.end annotation


# instance fields
.field private finished:Z

.field private link:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private linkSnippetHelper:Lcom/narvii/link/LinkSnippetHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private msg:Lcom/narvii/model/ChatMessage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/core/ChatService;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Ljava/lang/String;Lcom/narvii/link/LinkSnippetHelper;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/core/ChatService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatMessage;",
            "Ljava/lang/String;",
            "Lcom/narvii/link/LinkSnippetHelper;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "msg"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "link"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->msg:Lcom/narvii/model/ChatMessage;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->link:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->linkSnippetHelper:Lcom/narvii/link/LinkSnippetHelper;

    .line 22
    return-void
.end method


# virtual methods
.method public final getFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->finished:Z

    return v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final getLinkSnippetHelper()Lcom/narvii/link/LinkSnippetHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->linkSnippetHelper:Lcom/narvii/link/LinkSnippetHelper;

    return-object v0
.end method

.method public final getMsg()Lcom/narvii/model/ChatMessage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->msg:Lcom/narvii/model/ChatMessage;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->finished:Z

    return v0
.end method

.method public onFinish(Lcom/narvii/model/Media;)V
    .locals 9
    .param p1    # Lcom/narvii/model/Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->finished:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->finished:Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->linkSnippetHelper:Lcom/narvii/link/LinkSnippetHelper;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/link/LinkSnippetHelper;->removeTimeoutRunnable()V

    .line 16
    .line 17
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->msg:Lcom/narvii/model/ChatMessage;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v2, "null cannot be cast to non-null type com.narvii.model.ChatMessage"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/model/ChatMessage;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iget-object v2, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    iput-object v2, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 41
    .line 42
    :cond_2
    new-instance v2, Lcom/narvii/model/LinkSummary;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2}, Lcom/narvii/model/LinkSummary;-><init>()V

    .line 46
    .line 47
    new-instance v3, Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    iput-object v3, v2, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 53
    .line 54
    .line 55
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->link:Ljava/lang/String;

    .line 58
    .line 59
    iput-object p1, v2, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    .line 60
    .line 61
    new-instance p1, Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    iget-object v2, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 70
    .line 71
    sget-object v3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    const-string v3, "linkSnippetList"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 81
    :cond_3
    const/4 p1, 0x0

    .line 82
    .line 83
    iput-boolean p1, v1, Lcom/narvii/model/ChatMessage;->_linkParsing:Z

    .line 84
    .line 85
    iput v0, v1, Lcom/narvii/model/ChatMessage;->_status:I

    .line 86
    .line 87
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1}, Lcom/narvii/chat/core/ChatService;->storeOutboundMessage(Lcom/narvii/model/ChatMessage;)V

    .line 91
    .line 92
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 93
    .line 94
    const-string v0, "update"

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, v0, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 98
    .line 99
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Lcom/narvii/chat/core/ChatService;->access$getNdcIdFromMessage(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;)I

    .line 103
    move-result v2

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v2, p1}, Lcom/narvii/chat/core/ChatService;->access$sendNotification(Lcom/narvii/chat/core/ChatService;ILcom/narvii/notification/Notification;)V

    .line 107
    .line 108
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v1}, Lcom/narvii/chat/core/ChatService;->access$getNdcIdFromMessage(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;)I

    .line 112
    move-result v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/core/ChatService;->buildRequest(ILcom/narvii/model/ChatMessage;)Lcom/narvii/util/http/ApiRequest;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    if-nez p1, :cond_4

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Lcom/narvii/chat/core/ChatService;->access$getPostListener$p(Lcom/narvii/chat/core/ChatService;)Lcom/narvii/chat/core/ChatService$postListener$1;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 136
    move-result-object v3

    .line 137
    .line 138
    const-string p1, "build(...)"

    .line 139
    .line 140
    .line 141
    invoke-static {v3, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    const/4 v4, 0x0

    .line 143
    const/4 v5, 0x0

    .line 144
    .line 145
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->getCtx()Lcom/narvii/app/NVContext;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    .line 152
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    .line 156
    const v0, 0x7f12014f

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    move-result-object v6

    .line 161
    .line 162
    const-string p1, "getString(...)"

    .line 163
    .line 164
    .line 165
    invoke-static {v6, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    const/4 v7, 0x0

    .line 167
    const/4 v8, 0x0

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/chat/core/ChatService$postListener$1;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 171
    goto :goto_0

    .line 172
    .line 173
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/narvii/chat/core/ChatService;->getCtx()Lcom/narvii/app/NVContext;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    const-string v2, "api"

    .line 180
    .line 181
    .line 182
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    const-string v2, "getService(...)"

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 191
    .line 192
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 193
    .line 194
    .line 195
    invoke-static {v2}, Lcom/narvii/chat/core/ChatService;->access$getPostListener$p(Lcom/narvii/chat/core/ChatService;)Lcom/narvii/chat/core/ChatService$postListener$1;

    .line 196
    move-result-object v2

    .line 197
    .line 198
    iget-object v3, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 199
    .line 200
    .line 201
    invoke-static {v3}, Lcom/narvii/chat/core/ChatService;->access$getSerialRequestQueue$p(Lcom/narvii/chat/core/ChatService;)Lcom/android/volley/RequestQueue;

    .line 202
    move-result-object v3

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, p1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;Lcom/android/volley/RequestQueue;)V

    .line 206
    .line 207
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v1}, Lcom/narvii/chat/core/ChatService;->recordOutBoundCreatedTime(Lcom/narvii/model/ChatMessage;)V

    .line 211
    :goto_0
    return-void
.end method

.method public final setFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->finished:Z

    return-void
.end method

.method public final setLink(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->link:Ljava/lang/String;

    return-void
.end method

.method public final setLinkSnippetHelper(Lcom/narvii/link/LinkSnippetHelper;)V
    .locals 0
    .param p1    # Lcom/narvii/link/LinkSnippetHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->linkSnippetHelper:Lcom/narvii/link/LinkSnippetHelper;

    return-void
.end method

.method public final setMsg(Lcom/narvii/model/ChatMessage;)V
    .locals 1
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->msg:Lcom/narvii/model/ChatMessage;

    return-void
.end method
