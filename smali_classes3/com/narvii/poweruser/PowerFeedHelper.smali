.class public Lcom/narvii/poweruser/PowerFeedHelper;
.super Ljava/lang/Object;
.source "PowerFeedHelper.java"


# instance fields
.field broadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

.field context:Lcom/narvii/app/NVContext;

.field feed:Lcom/narvii/model/Feed;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 33
    iput-object p2, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    .line 34
    new-instance p2, Lcom/narvii/poweruser/SendBroadcastHelper;

    invoke-direct {p2, p1}, Lcom/narvii/poweruser/SendBroadcastHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/poweruser/PowerFeedHelper;->broadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/poweruser/PowerFeedHelper;ILcom/narvii/util/Callback;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/PowerFeedHelper;->featureFeedForDays(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method private featureFeedForDays(ILcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x18

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit8 p1, p1, 0x3c

    int-to-long v0, p1

    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/narvii/poweruser/PowerFeedHelper;->featureFeed(IJLcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method public changeBestQuizStatus(Z)V
    .locals 3

    .line 132
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 133
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/admin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz p1, :cond_0

    const/16 v1, 0xf0

    goto :goto_0

    :cond_0
    const/16 v1, 0xf1

    .line 135
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminOpName"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 137
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v2, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v2, Lcom/narvii/poweruser/PowerFeedHelper$3;

    invoke-direct {v2, p0, p1}, Lcom/narvii/poweruser/PowerFeedHelper$3;-><init>(Lcom/narvii/poweruser/PowerFeedHelper;Z)V

    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 154
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 155
    iget-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 156
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public featureFeed(IJLcom/narvii/util/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 80
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/admin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v1, 0x72

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminOpName"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 83
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "featuredType"

    .line 84
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-eqz v4, :cond_0

    const-string v2, "featuredDuration"

    .line 86
    invoke-virtual {v1, v2, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_0
    const-string p2, "adminOpValue"

    .line 88
    invoke-virtual {v0, p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 90
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 91
    new-instance p3, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v0, Lcom/narvii/poweruser/PowerFeedHelper$2;

    invoke-direct {v0, p0, p1, p4}, Lcom/narvii/poweruser/PowerFeedHelper$2;-><init>(Lcom/narvii/poweruser/PowerFeedHelper;ILcom/narvii/util/Callback;)V

    iput-object v0, p3, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 118
    invoke-virtual {p3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 119
    iget-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string p4, "api"

    invoke-interface {p1, p4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 120
    iget-object p3, p3, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public sendBroadCast()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->broadcastHelper:Lcom/narvii/poweruser/SendBroadcastHelper;

    invoke-virtual {v1, v0}, Lcom/narvii/poweruser/SendBroadcastHelper;->sendBroadcast(Lcom/narvii/model/NVObject;)V

    return-void
.end method

.method public showFeatureDialog(Lcom/narvii/util/Callback;)V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->featureType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 42
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0db9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->featureType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 45
    iget-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 46
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0db8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 49
    :cond_2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 50
    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f06ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f06a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 52
    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0f06a7

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 53
    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0f06a9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    .line 54
    new-instance v1, Lcom/narvii/poweruser/PowerFeedHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/poweruser/PowerFeedHelper$1;-><init>(Lcom/narvii/poweruser/PowerFeedHelper;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 70
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method
