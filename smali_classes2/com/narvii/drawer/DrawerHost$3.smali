.class Lcom/narvii/drawer/DrawerHost$3;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "DrawerHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckInChanged(ZI)V
    .locals 0

    .line 532
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 533
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    :cond_0
    return-void
.end method

.method public onCheckInHistoryChanged(Lcom/narvii/model/CheckInHistory;)V
    .locals 0

    .line 539
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onCheckInHistoryChanged(Lcom/narvii/model/CheckInHistory;)V

    .line 540
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 541
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    :cond_0
    return-void
.end method

.method public onNoticeCountChanged(I)V
    .locals 1

    .line 554
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 555
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 557
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->badgeCountListener:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/drawer/DrawerHost$3$2;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$3$2;-><init>(Lcom/narvii/drawer/DrawerHost$3;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 1

    .line 516
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 517
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 518
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 522
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->badgeCountListener:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/drawer/DrawerHost$3$1;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$3$1;-><init>(Lcom/narvii/drawer/DrawerHost$3;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onOnlineStatusChanged(I)V
    .locals 0

    .line 547
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 548
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    :cond_0
    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    .line 509
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 510
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    :cond_0
    return-void
.end method
