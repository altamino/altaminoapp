.class Lcom/narvii/drawer/DrawerHost$3;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCheckInChanged(ZI)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 14
    :cond_0
    return-void
.end method

.method public onCheckInHistoryChanged(Lcom/narvii/model/CheckInHistory;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onCheckInHistoryChanged(Lcom/narvii/model/CheckInHistory;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 17
    :cond_0
    return-void
.end method

.method public onNoticeCountChanged(I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->badgeCountListener:Lcom/narvii/util/EventDispatcher;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/drawer/DrawerHost$3$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$3$2;-><init>(Lcom/narvii/drawer/DrawerHost$3;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 26
    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->myCommunityListAdapter:Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->badgeCountListener:Lcom/narvii/util/EventDispatcher;

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/drawer/DrawerHost$3$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$3$1;-><init>(Lcom/narvii/drawer/DrawerHost$3;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 35
    return-void
.end method

.method public onOnlineStatusChanged(I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 14
    :cond_0
    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$3;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 14
    :cond_0
    return-void
.end method
