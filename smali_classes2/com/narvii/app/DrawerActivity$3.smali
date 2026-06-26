.class Lcom/narvii/app/DrawerActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "DrawerActivity.java"


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

    .line 235
    iput-object p1, p0, Lcom/narvii/app/DrawerActivity$3;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 239
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$3;->this$0:Lcom/narvii/app/DrawerActivity;

    const-string v0, "config"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 240
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    const/4 v0, -0x1

    const-string v1, "cid"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p1, p2, :cond_1

    const-string p1, "EnterCommunityHelper"

    const-string p2, "receive theme download notification, need to refresh ui"

    .line 241
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$3;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isActivityResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$3;->this$0:Lcom/narvii/app/DrawerActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/app/DrawerActivity;->access$1302(Lcom/narvii/app/DrawerActivity;Z)Z

    .line 244
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$3;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->updateThemeUI()V

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$3;->this$0:Lcom/narvii/app/DrawerActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/app/DrawerActivity;->access$1302(Lcom/narvii/app/DrawerActivity;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
