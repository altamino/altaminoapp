.class public Lcom/narvii/monetization/ChatBubbleOwnStatusController;
.super Lcom/narvii/monetization/StoreItemOwnStatusController;
.source "ChatBubbleOwnStatusController.java"

# interfaces
.implements Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ChatBubbleOwnStatusController"


# instance fields
.field bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

.field protected isOriginActivited:Z

.field protected isOriginSet:Z

.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private onlyApplyForAll:Z

.field receiver:Landroid/content/BroadcastReceiver;

.field private setBubbleHintDialog:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

.field private threadId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Ljava/lang/String;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    .line 143
    new-instance p2, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;-><init>(Lcom/narvii/monetization/ChatBubbleOwnStatusController;)V

    iput-object p2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    const-string p2, "bubble"

    .line 58
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/bubble/BubbleService;

    iput-object p2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 59
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 60
    iput-boolean p4, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->onlyApplyForAll:Z

    .line 61
    iput-object p3, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->threadId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected canUseInGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected createActivateRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat/chat-bubble/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/activate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getActivatedStrId(Z)I
    .locals 0

    const p1, 0x7f0f111a

    return p1
.end method

.method public onActivated(Z)V
    .locals 3

    .line 125
    invoke-super {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated(Z)V

    .line 126
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    instance-of v0, p1, Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_0

    .line 127
    check-cast p1, Lcom/narvii/model/ChatBubble;

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 129
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object v2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAppliedBubble(Ljava/lang/String;)V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setCurStatusSet()V

    .line 189
    new-instance p1, Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 190
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    check-cast v0, Lcom/narvii/model/ChatBubble;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->threadId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Z)V

    .line 192
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0f8f

    invoke-static {p1, v0, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.BUBBLE_PACKAGE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 91
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.BUBBLE_PACKAGE_PROGRESS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 92
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.BUBBLE_PACKAGE_READY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/bubble/BubbleService;->cancel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPurchaseSuccess(Lcom/narvii/model/NVObject;)V
    .locals 3

    .line 110
    instance-of v0, p1, Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_0

    .line 112
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 113
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/narvii/model/ChatBubble;->version:I

    iget-object p1, p1, Lcom/narvii/model/ChatBubble;->resourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/monetization/bubble/BubbleService;->requireBubble(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCurStatusSet()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 198
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    :cond_0
    return-void
.end method

.method public setStoreItem(Lcom/narvii/model/IStoreItem;)V
    .locals 3

    .line 66
    invoke-super {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 68
    instance-of v0, p1, Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setBubbleHintDialog:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    check-cast p1, Lcom/narvii/model/ChatBubble;

    iget-object v2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->threadId:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/narvii/monetization/utils/SetBubbleHintDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatBubble;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setBubbleHintDialog:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    .line 70
    iget-object p1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setBubbleHintDialog:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    invoke-virtual {p1, p0}, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->setApplyAllChatBubbleListener(Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;)V

    :cond_0
    return-void
.end method

.method public setStoreItem(Lcom/narvii/model/IStoreItem;Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    if-eqz p1, :cond_0

    .line 76
    iget-boolean v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->isOriginSet:Z

    if-nez v0, :cond_0

    .line 77
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->isActivated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->isOriginActivited:Z

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->isOriginSet:Z

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 80
    :cond_1
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 81
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    if-eqz p1, :cond_2

    const/4 p2, 0x6

    .line 82
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    :cond_2
    return-void
.end method

.method protected showToast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public useItem()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setBubbleHintDialog:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setBubbleHintDialog:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :cond_0
    return-void
.end method
