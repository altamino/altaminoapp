.class Lcom/narvii/chat/ChatListFragment$6;
.super Landroid/content/BroadcastReceiver;
.source "ChatListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatListFragment;)V
    .locals 0

    .line 1802
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$6;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1805
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.BUBBLE_PACKAGE_READY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1806
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "receive bubble ready broadcast "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BubbleService"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$6;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    if-eqz p1, :cond_1

    .line 1808
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1810
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1811
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$6;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$700(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/chat/ChatListFragment;->access$1002(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)Lcom/narvii/model/User;

    .line 1812
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$6;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$700(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    .line 1813
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$6;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    if-eqz p1, :cond_1

    .line 1814
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
