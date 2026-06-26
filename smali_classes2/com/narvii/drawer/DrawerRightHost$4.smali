.class Lcom/narvii/drawer/DrawerRightHost$4;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "DrawerRightHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerRightHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerRightHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$4;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckInChanged(ZI)V
    .locals 0

    .line 425
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$4;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/drawer/DrawerRightHost;->updateRemindersOnScreen(Z)V

    return-void
.end method

.method public onNoticeCountChanged(I)V
    .locals 1

    .line 430
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$4;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerRightHost;->updateRemindersOnScreen(Z)V

    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 1

    .line 420
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$4;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerRightHost;->updateRemindersOnScreen(Z)V

    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    return-void
.end method
