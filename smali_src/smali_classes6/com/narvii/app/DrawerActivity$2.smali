.class Lcom/narvii/app/DrawerActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/DrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/DrawerActivity;


# direct methods
.method constructor <init>(Lcom/narvii/app/DrawerActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/DrawerActivity$2;->this$0:Lcom/narvii/app/DrawerActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$2;->this$0:Lcom/narvii/app/DrawerActivity;

    .line 3
    .line 4
    const-string v0, "config"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 26
    move-result p1

    .line 27
    .line 28
    const-string v0, "cid"

    .line 29
    const/4 v1, -0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 33
    move-result p2

    .line 34
    .line 35
    if-ne p1, p2, :cond_1

    .line 36
    .line 37
    const-string p1, "EnterCommunityHelper"

    .line 38
    .line 39
    const-string p2, "receive theme download notification, need to refresh ui"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$2;->this$0:Lcom/narvii/app/DrawerActivity;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isActivityResumed()Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$2;->this$0:Lcom/narvii/app/DrawerActivity;

    .line 53
    const/4 p2, 0x0

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/narvii/app/DrawerActivity;->u(Lcom/narvii/app/DrawerActivity;Z)V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$2;->this$0:Lcom/narvii/app/DrawerActivity;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->updateThemeUI()V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$2;->this$0:Lcom/narvii/app/DrawerActivity;

    .line 65
    const/4 p2, 0x1

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p2}, Lcom/narvii/app/DrawerActivity;->u(Lcom/narvii/app/DrawerActivity;Z)V

    .line 69
    :cond_1
    :goto_0
    return-void
.end method
