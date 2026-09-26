.class public Lcom/narvii/monetization/ChatBubbleOwnStatusController;
.super Lcom/narvii/monetization/StoreItemOwnStatusController;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ChatBubbleOwnStatusController"


# instance fields
.field bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

.field protected isOriginActivited:Z

.field protected isOriginSet:Z

.field private lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

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

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    .line 4
    new-instance p2, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;-><init>(Lcom/narvii/monetization/ChatBubbleOwnStatusController;)V

    iput-object p2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    const-string p2, "bubble"

    .line 5
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/bubble/BubbleService;

    iput-object p2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 6
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iput-boolean p4, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->onlyApplyForAll:Z

    iput-object p3, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->threadId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
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

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "chat/chat-bubble/"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "/activate"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method protected getActivatedStrId(Z)I
    .locals 0

    const p1, 0x7f121225

    return p1
.end method

.method public onActivated(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated(Z)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/model/ChatBubble;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    iput-boolean v0, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method

.method public onAppliedBubble(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setCurStatusSet()V

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/model/ChatBubble;

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->threadId:Ljava/lang/String;

    .line 30
    const/4 v3, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Z)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    const v0, 0x7f12109b

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 50
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    new-instance v2, Landroid/content/IntentFilter;

    .line 7
    .line 8
    const-string v3, "com.narvii.action.BUBBLE_PACKAGE_CHANGE"

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    .line 19
    .line 20
    new-instance v2, Landroid/content/IntentFilter;

    .line 21
    .line 22
    const-string v3, "com.narvii.action.BUBBLE_PACKAGE_PROGRESS"

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    .line 33
    .line 34
    new-instance v2, Landroid/content/IntentFilter;

    .line 35
    .line 36
    const-string v3, "com.narvii.action.BUBBLE_PACKAGE_READY"

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/bubble/BubbleService;->cancel(Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method

.method protected onPurchaseSuccess(Lcom/narvii/model/NVObject;)V
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/ChatBubble;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget v2, p1, Lcom/narvii/model/ChatBubble;->version:I

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/model/ChatBubble;->resourceUrl:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/monetization/bubble/BubbleService;->requireBubble(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method

.method public setCurStatusSet()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x6

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    .line 9
    :cond_0
    return-void
.end method

.method public setStoreItem(Lcom/narvii/model/IStoreItem;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 2
    instance-of v0, p1, Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setBubbleHintDialog:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    check-cast p1, Lcom/narvii/model/ChatBubble;

    iget-object v2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->threadId:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/narvii/monetization/utils/SetBubbleHintDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatBubble;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setBubbleHintDialog:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    .line 4
    invoke-virtual {v0, p0}, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->setApplyAllChatBubbleListener(Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;)V

    :cond_0
    return-void
.end method

.method public setStoreItem(Lcom/narvii/model/IStoreItem;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->isOriginSet:Z

    if-nez v0, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->isActivated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->isOriginActivited:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->isOriginSet:Z

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    if-eqz p1, :cond_2

    const/4 p2, 0x6

    .line 8
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setBubbleHintDialog:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setBubbleHintDialog:Lcom/narvii/monetization/utils/SetBubbleHintDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 16
    :cond_0
    return-void
.end method
