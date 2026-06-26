.class Lcom/narvii/master/MasterTabFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MasterTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MasterTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterTabFragment;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$MasterTabFragment$1(I)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setCurrentItem(I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    invoke-static {p1}, Lcom/narvii/master/MasterTabFragment;->access$000(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/util/PreferencesHelper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/util/PreferencesHelper;->saveLandingPos(Ljava/lang/Integer;)V

    .line 129
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result p1

    .line 130
    new-instance v1, Lcom/narvii/master/-$$Lambda$MasterTabFragment$1$YfCpKXbdk752Vb6KT1UmIvonhu8;

    invoke-direct {v1, p0, p1}, Lcom/narvii/master/-$$Lambda$MasterTabFragment$1$YfCpKXbdk752Vb6KT1UmIvonhu8;-><init>(Lcom/narvii/master/MasterTabFragment$1;I)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 131
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    invoke-static {p1}, Lcom/narvii/master/MasterTabFragment;->access$100(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    iget-object p1, p1, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    invoke-virtual {p1, v0}, Lcom/narvii/master/widget/MasterBottomBar;->setUser(Lcom/narvii/model/User;)V

    .line 133
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    iget-object v0, p1, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    invoke-static {p1}, Lcom/narvii/master/MasterTabFragment;->access$200(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/chat/core/ChatService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->getAllUnreadThreadCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->setUnreadChatMessage(Z)V

    .line 136
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.MEMBERSHIP_CHANGED"

    if-eq v0, p1, :cond_2

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.WALLET_CHANGED"

    if-eq v0, p1, :cond_2

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.COUPONS_CHANGED"

    if-ne p2, p1, :cond_3

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    invoke-static {p1}, Lcom/narvii/master/MasterTabFragment;->access$300(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/master/MasterTopBar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 140
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    iget-object p2, p1, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    invoke-static {p1}, Lcom/narvii/master/MasterTabFragment;->access$100(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/master/widget/MasterBottomBar;->setUser(Lcom/narvii/model/User;)V

    :cond_3
    return-void
.end method
