.class public Lcom/narvii/poweruser/PowerChatHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field broadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

.field chatThread:Lcom/narvii/model/ChatThread;

.field context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 8
    .line 9
    new-instance p2, Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, p1}, Lcom/narvii/poweruser/SendBroadcastHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/poweruser/PowerChatHelper;->broadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 15
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/poweruser/PowerChatHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/PowerChatHelper;->featureChatForHours(I)V

    return-void
.end method

.method private featureChatForHours(I)V
    .locals 2

    .line 1
    .line 2
    mul-int/lit16 p1, p1, 0xe10

    .line 3
    int-to-long v0, p1

    .line 4
    const/4 p1, 0x5

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/poweruser/PowerChatHelper;->featureChat(IJ)V

    .line 8
    return-void
.end method


# virtual methods
.method public featureChat(IJ)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "/"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "/admin"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    .line 54
    const/16 v1, 0x72

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    const-string v2, "adminOpName"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    const-string v2, "featuredType"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 73
    .line 74
    const-wide/16 v2, 0x0

    .line 75
    .line 76
    cmp-long v2, p2, v2

    .line 77
    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    const-string v2, "featuredDuration"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 84
    .line 85
    :cond_0
    const-string p2, "adminOpValue"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    new-instance p3, Lcom/narvii/util/dialog/ProgressDialog;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 97
    .line 98
    .line 99
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-direct {p3, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    new-instance v0, Lcom/narvii/poweruser/PowerChatHelper$2;

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, p0, p1}, Lcom/narvii/poweruser/PowerChatHelper$2;-><init>(Lcom/narvii/poweruser/PowerChatHelper;I)V

    .line 109
    .line 110
    iput-object v0, p3, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 114
    .line 115
    iget-object p1, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 116
    .line 117
    const-string v0, "api"

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 124
    .line 125
    iget-object p3, p3, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 129
    return-void
.end method

.method public sendBroadCast()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper;->broadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/narvii/poweruser/SendBroadcastHelper;->sendBroadcast(Lcom/narvii/model/NVObject;)V

    .line 11
    return-void
.end method

.method public showFeatureDialog()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    const v2, 0x7f12074c

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    const v2, 0x7f120751

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    .line 54
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    const v3, 0x7f120753

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    .line 68
    .line 69
    .line 70
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    const v3, 0x7f120755

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 82
    .line 83
    new-instance v1, Lcom/narvii/poweruser/PowerChatHelper$1;

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, p0}, Lcom/narvii/poweruser/PowerChatHelper$1;-><init>(Lcom/narvii/poweruser/PowerChatHelper;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 93
    return-void
.end method

.method public unfeatureChat()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/poweruser/PowerChatHelper;->featureChat(IJ)V

    .line 7
    return-void
.end method
