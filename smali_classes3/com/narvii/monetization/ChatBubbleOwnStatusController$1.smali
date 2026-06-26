.class Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;
.super Landroid/content/BroadcastReceiver;
.source "ChatBubbleOwnStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/ChatBubbleOwnStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/ChatBubbleOwnStatusController;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p1, "bid"

    .line 146
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "rev"

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    iget-object v2, v1, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    instance-of v3, v2, Lcom/narvii/model/ChatBubble;

    if-nez v3, :cond_0

    return-void

    .line 155
    :cond_0
    iget-boolean v1, v1, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->isOriginActivited:Z

    if-eqz v1, :cond_1

    return-void

    .line 158
    :cond_1
    check-cast v2, Lcom/narvii/model/ChatBubble;

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.narvii.action.BUBBLE_PACKAGE_PROGRESS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 160
    iget-object p2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    iget-object p2, p2, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 161
    invoke-virtual {v2}, Lcom/narvii/model/ChatBubble;->version()I

    move-result p2

    if-ne v0, p2, :cond_7

    .line 162
    invoke-static {}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    iget-object v1, v1, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {v1, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getProgress(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    const/high16 v0, 0x42c80000    # 100.0f

    iget-object v1, p2, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {v1, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getProgress(Ljava/lang/String;)F

    move-result p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateDownloadingProgress(I)V

    goto :goto_2

    .line 165
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.narvii.action.BUBBLE_PACKAGE_CHANGE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.narvii.action.BUBBLE_PACKAGE_READY"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 167
    :cond_4
    iget-object p2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    iget-object p2, p2, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 168
    invoke-virtual {v2}, Lcom/narvii/model/ChatBubble;->version()I

    move-result p2

    if-ne v0, p2, :cond_7

    .line 169
    iget-object p2, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    iget-object p2, p2, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {p2, p1, v0}, Lcom/narvii/monetization/bubble/BubbleService;->getStatus(Ljava/lang/String;I)I

    move-result p1

    .line 170
    invoke-static {}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress status change  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    if-eq p1, p2, :cond_6

    const/4 p2, -0x1

    if-ne p1, p2, :cond_7

    .line 172
    :cond_6
    iget-object p1, p0, Lcom/narvii/monetization/ChatBubbleOwnStatusController$1;->this$0:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    invoke-virtual {p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated()V

    :cond_7
    :goto_2
    return-void
.end method
