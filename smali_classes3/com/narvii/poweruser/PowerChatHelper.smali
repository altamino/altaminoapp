.class public Lcom/narvii/poweruser/PowerChatHelper;
.super Ljava/lang/Object;
.source "PowerChatHelper.java"


# instance fields
.field broadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

.field chatThread:Lcom/narvii/model/ChatThread;

.field context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 28
    iput-object p2, p0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 29
    new-instance p2, Lcom/narvii/poweruser/SendBroadcastHelper;

    invoke-direct {p2, p1}, Lcom/narvii/poweruser/SendBroadcastHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/poweruser/PowerChatHelper;->broadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/poweruser/PowerChatHelper;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/PowerChatHelper;->featureChatForHours(I)V

    return-void
.end method

.method private featureChatForHours(I)V
    .locals 2

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit8 p1, p1, 0x3c

    int-to-long v0, p1

    const/4 p1, 0x5

    .line 59
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/poweruser/PowerChatHelper;->featureChat(IJ)V

    return-void
.end method


# virtual methods
.method public featureChat(IJ)V
    .locals 5

    .line 67
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 68
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/admin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v1, 0x72

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminOpName"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 71
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "featuredType"

    .line 72
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-eqz v4, :cond_0

    const-string v2, "featuredDuration"

    .line 74
    invoke-virtual {v1, v2, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_0
    const-string p2, "adminOpValue"

    .line 76
    invoke-virtual {v0, p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 78
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 79
    new-instance p3, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Lcom/narvii/poweruser/PowerChatHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/narvii/poweruser/PowerChatHelper$2;-><init>(Lcom/narvii/poweruser/PowerChatHelper;I)V

    iput-object v0, p3, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 106
    invoke-virtual {p3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 107
    iget-object p1, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 108
    iget-object p3, p3, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public sendBroadCast()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper;->broadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

    invoke-virtual {v1, v0}, Lcom/narvii/poweruser/SendBroadcastHelper;->sendBroadcast(Lcom/narvii/model/NVObject;)V

    return-void
.end method

.method public showFeatureDialog()V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 35
    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f06a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f06a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 37
    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0f06a8

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 38
    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0f06aa

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 39
    new-instance v1, Lcom/narvii/poweruser/PowerChatHelper$1;

    invoke-direct {v1, p0}, Lcom/narvii/poweruser/PowerChatHelper$1;-><init>(Lcom/narvii/poweruser/PowerChatHelper;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method public unfeatureChat()V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/poweruser/PowerChatHelper;->featureChat(IJ)V

    return-void
.end method
