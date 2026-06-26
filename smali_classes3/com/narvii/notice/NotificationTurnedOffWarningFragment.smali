.class public Lcom/narvii/notice/NotificationTurnedOffWarningFragment;
.super Lcom/narvii/app/NVFragment;
.source "NotificationTurnedOffWarningFragment.java"


# instance fields
.field cell:Landroid/view/View;

.field notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance p1, Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b055f

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 55
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->areNotificationsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {v0}, Lcom/narvii/util/NotificationManagerHelper;->isNotificationSettingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v2, p0, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;->cell:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    iput-object p1, p0, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;->cell:Landroid/view/View;

    .line 39
    iget-object p1, p0, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;->cell:Landroid/view/View;

    new-instance p2, Lcom/narvii/notice/NotificationTurnedOffWarningFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/notice/NotificationTurnedOffWarningFragment$1;-><init>(Lcom/narvii/notice/NotificationTurnedOffWarningFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
