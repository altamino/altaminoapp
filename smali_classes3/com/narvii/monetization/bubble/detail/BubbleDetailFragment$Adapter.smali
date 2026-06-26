.class Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "BubbleDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/model/ChatBubble;",
        "Lcom/narvii/monetization/bubble/ChatBubbleResponse;",
        ">;"
    }
.end annotation


# instance fields
.field stated:Z

.field final synthetic this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 221
    invoke-direct {p0, p1}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 249
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/chat-bubble/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 290
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_0

    const p1, 0x7f0b006c

    .line 291
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 294
    :cond_0
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_3

    const p1, 0x7f0b006a

    .line 295
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 296
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/ChatBubble;

    if-eqz p2, :cond_2

    const p3, 0x7f0905ea

    .line 300
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 301
    invoke-virtual {p3, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    const p3, 0x7f0905f7

    .line 303
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/StoreItemStatusView;

    .line 304
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    iget-object v1, v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    if-nez v1, :cond_1

    .line 305
    new-instance v1, Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, p3, v3, v4}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Ljava/lang/String;Z)V

    iput-object v1, v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 306
    iget-object p3, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    iget-object p3, p3, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    invoke-virtual {p3}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->onCreate()V

    .line 308
    :cond_1
    iget-object p3, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    iget-object v0, p3, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    invoke-static {p3}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->access$200(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;Ljava/lang/String;)V

    :cond_2
    return-object p1

    .line 314
    :cond_3
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->FITBOTTOM:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_4

    const p1, 0x7f0b003f

    .line 315
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 317
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result p3

    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p3, v0

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p1

    .line 320
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 281
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 282
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->FITBOTTOM:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 261
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 243
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 244
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->access$000(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)V

    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/ChatBubble;",
            ">;"
        }
    .end annotation

    .line 233
    const-class v0, Lcom/narvii/model/ChatBubble;

    return-object v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 326
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 327
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    if-eqz v1, :cond_0

    .line 328
    check-cast v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 329
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iget v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->action:I

    if-ne p1, v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 332
    iget-object v0, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    iget-boolean v0, v0, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    iput-boolean v0, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 333
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 217
    check-cast p2, Lcom/narvii/monetization/bubble/ChatBubbleResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/bubble/ChatBubbleResponse;)V

    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/bubble/ChatBubbleResponse;)V
    .locals 2

    .line 266
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    .line 267
    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->access$102(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;Z)Z

    .line 268
    iget-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    iget-object v1, p2, Lcom/narvii/monetization/bubble/ChatBubbleResponse;->allChatsBubbleId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->access$202(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/bubble/ChatBubbleResponse;",
            ">;"
        }
    .end annotation

    .line 238
    const-class v0, Lcom/narvii/monetization/bubble/ChatBubbleResponse;

    return-object v0
.end method

.method public setObject(Lcom/narvii/model/ChatBubble;)V
    .locals 1

    .line 226
    new-instance v0, Lcom/narvii/monetization/bubble/ChatBubbleResponse;

    invoke-direct {v0}, Lcom/narvii/monetization/bubble/ChatBubbleResponse;-><init>()V

    .line 227
    iput-object p1, v0, Lcom/narvii/monetization/bubble/ChatBubbleResponse;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 228
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 217
    check-cast p1, Lcom/narvii/model/ChatBubble;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$Adapter;->setObject(Lcom/narvii/model/ChatBubble;)V

    return-void
.end method
