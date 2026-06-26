.class Lcom/narvii/chat/MessageContentDetailFragment$1;
.super Lcom/narvii/monetization/ChatBubbleOwnStatusController;
.source "MessageContentDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/MessageContentDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/MessageContentDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/MessageContentDetailFragment;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$1;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClickActivateItem()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment$1;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-static {v0}, Lcom/narvii/chat/MessageContentDetailFragment;->access$000(Lcom/narvii/chat/MessageContentDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickActivateItem()V

    :cond_0
    return-void
.end method

.method public onClickGetItem()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment$1;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-static {v0}, Lcom/narvii/chat/MessageContentDetailFragment;->access$000(Lcom/narvii/chat/MessageContentDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickGetItem()V

    :cond_0
    return-void
.end method

.method public onClickUseItem()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment$1;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-static {v0}, Lcom/narvii/chat/MessageContentDetailFragment;->access$000(Lcom/narvii/chat/MessageContentDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-super {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onClickUseItem()V

    :cond_0
    return-void
.end method
