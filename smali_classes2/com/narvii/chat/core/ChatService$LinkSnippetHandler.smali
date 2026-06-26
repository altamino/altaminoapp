.class final Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;
.super Ljava/lang/Object;
.source "ChatService.kt"

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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatService.kt\ncom/narvii/chat/core/ChatService$LinkSnippetHandler\n*L\n1#1,1870:1\n*E\n"
.end annotation


# instance fields
.field private finished:Z

.field private link:Ljava/lang/String;

.field private linkSnippetHelper:Lcom/narvii/link/LinkSnippetHelper;

.field private msg:Lcom/narvii/model/ChatMessage;

.field final synthetic this$0:Lcom/narvii/chat/core/ChatService;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Ljava/lang/String;Lcom/narvii/link/LinkSnippetHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatMessage;",
            "Ljava/lang/String;",
            "Lcom/narvii/link/LinkSnippetHelper;",
            ")V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->msg:Lcom/narvii/model/ChatMessage;

    iput-object p3, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->link:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->linkSnippetHelper:Lcom/narvii/link/LinkSnippetHelper;

    return-void
.end method


# virtual methods
.method public final getFinished$Amino_bundle()Z
    .locals 1

    .line 1162
    iget-boolean v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->finished:Z

    return v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final getLinkSnippetHelper()Lcom/narvii/link/LinkSnippetHelper;
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->linkSnippetHelper:Lcom/narvii/link/LinkSnippetHelper;

    return-object v0
.end method

.method public final getMsg()Lcom/narvii/model/ChatMessage;
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->msg:Lcom/narvii/model/ChatMessage;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1165
    iget-boolean v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->finished:Z

    return v0
.end method

.method public onFinish(Lcom/narvii/model/Media;)V
    .locals 9

    .line 1169
    iget-boolean v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->finished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1172
    iput-boolean v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->finished:Z

    .line 1173
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->linkSnippetHelper:Lcom/narvii/link/LinkSnippetHelper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/link/LinkSnippetHelper;->removeTimeoutRunnable()V

    .line 1174
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->msg:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Lcom/narvii/model/ChatMessage;

    if-eqz p1, :cond_3

    .line 1176
    iget-object v2, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v2, :cond_2

    .line 1177
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1179
    :cond_2
    new-instance v2, Lcom/narvii/model/LinkSummary;

    invoke-direct {v2}, Lcom/narvii/model/LinkSummary;-><init>()V

    .line 1180
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 1181
    iget-object v3, v2, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->link:Ljava/lang/String;

    iput-object p1, v2, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    .line 1183
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    iget-object v2, v1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1186
    sget-object v3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const-string v3, "linkSnippetList"

    .line 1185
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_3
    const/4 p1, 0x0

    .line 1188
    iput-boolean p1, v1, Lcom/narvii/model/ChatMessage;->_linkParsing:Z

    .line 1189
    iput v0, v1, Lcom/narvii/model/ChatMessage;->_status:I

    .line 1190
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1, v1}, Lcom/narvii/chat/core/ChatService;->storeOutboundMessage(Lcom/narvii/model/ChatMessage;)V

    .line 1192
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string/jumbo v0, "update"

    invoke-direct {p1, v0, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1193
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {v0, v1}, Lcom/narvii/chat/core/ChatService;->access$getNdcIdFromMessage(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;)I

    move-result v2

    invoke-static {v0, v2, p1}, Lcom/narvii/chat/core/ChatService;->access$sendNotification(Lcom/narvii/chat/core/ChatService;ILcom/narvii/notification/Notification;)V

    .line 1196
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {p1, v1}, Lcom/narvii/chat/core/ChatService;->access$getNdcIdFromMessage(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/core/ChatService;->buildRequest(ILcom/narvii/model/ChatMessage;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1198
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {p1}, Lcom/narvii/chat/core/ChatService;->access$getPostListener$p(Lcom/narvii/chat/core/ChatService;)Lcom/narvii/chat/core/ChatService$postListener$1;

    move-result-object v2

    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v3

    const-string p1, "ApiRequest.builder().tag(msg).build()"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1199
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0118

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string p1, "ctx.context.getString(R.string.api_request_fail)"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1198
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/chat/core/ChatService$postListener$1;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1201
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v0}, Lcom/narvii/chat/core/ChatService;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v2, "api"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "ctx.getService(\"api\")"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 1202
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {v2}, Lcom/narvii/chat/core/ChatService;->access$getPostListener$p(Lcom/narvii/chat/core/ChatService;)Lcom/narvii/chat/core/ChatService$postListener$1;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {v3}, Lcom/narvii/chat/core/ChatService;->access$getSerialRequestQueue$p(Lcom/narvii/chat/core/ChatService;)Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;Lcom/android/volley/RequestQueue;)V

    .line 1203
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1, v1}, Lcom/narvii/chat/core/ChatService;->recordOutBoundCreatedTime(Lcom/narvii/model/ChatMessage;)V

    :goto_0
    return-void

    .line 1174
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.model.ChatMessage"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setFinished$Amino_bundle(Z)V
    .locals 0

    .line 1162
    iput-boolean p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->finished:Z

    return-void
.end method

.method public final setLink(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1160
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->link:Ljava/lang/String;

    return-void
.end method

.method public final setLinkSnippetHelper(Lcom/narvii/link/LinkSnippetHelper;)V
    .locals 0

    .line 1161
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->linkSnippetHelper:Lcom/narvii/link/LinkSnippetHelper;

    return-void
.end method

.method public final setMsg(Lcom/narvii/model/ChatMessage;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;->msg:Lcom/narvii/model/ChatMessage;

    return-void
.end method
