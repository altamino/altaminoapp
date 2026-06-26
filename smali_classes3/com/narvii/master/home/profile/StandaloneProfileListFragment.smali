.class public Lcom/narvii/master/home/profile/StandaloneProfileListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "StandaloneProfileListFragment.java"

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

    .line 41
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/home/profile/StandaloneProfileListFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 56
    new-instance p1, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;-><init>(Lcom/narvii/master/home/profile/StandaloneProfileListFragment;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->adapter:Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "account"

    .line 50
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    const p1, 0x7f0f0bf0

    .line 51
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 61
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 63
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/User;

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/narvii/master/home/profile/StandaloneProfileListFragment;->adapter:Lcom/narvii/master/home/profile/StandaloneProfileListFragment$Adapter;

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
