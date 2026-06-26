.class Lcom/narvii/chat/ChatFragment$4;
.super Lcom/narvii/chat/ChatTipBroadcastHelper;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatFragment;->onTipBroadcastLayoutCreated(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatFragment;Landroid/view/ViewGroup;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment$4;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-direct {p0, p2}, Lcom/narvii/chat/ChatTipBroadcastHelper;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected applyTipCoins(I)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$4;->this$0:Lcom/narvii/chat/ChatFragment;

    iget-object v0, v0, Lcom/narvii/chat/ChatFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    if-eqz v0, :cond_0

    .line 373
    iget v1, v0, Lcom/narvii/model/TippingInfo;->tippedCoins:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/narvii/model/TippingInfo;->tippedCoins:I

    :cond_0
    return-void
.end method

.method protected onClickTipBroadcast(Lcom/narvii/model/User;)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$4;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "TipBroadcast"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 380
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$4;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "chatList"

    .line 382
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatListFragment;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatListFragment;->openMiniProfile(Lcom/narvii/model/User;)V

    :cond_0
    return-void
.end method
