.class public Lcom/narvii/master/home/profile/StandaloneProfileListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;
    }
.end annotation


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private adapter:Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/master/home/profile/StandaloneProfileListFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;-><init>(Lcom/narvii/master/home/profile/StandaloneProfileListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->adapter:Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;

    .line 8
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f120d1b

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 20
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "update"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/model/User;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->adapter:Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 42
    :cond_0
    return-void
.end method
