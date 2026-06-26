.class Lcom/narvii/drawer/DrawerRightHost$7;
.super Landroid/content/BroadcastReceiver;
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

    .line 1283
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$7;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1287
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$7;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 1288
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    const/4 v0, -0x1

    const-string v1, "cid"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 1289
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$7;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerRightHost;->access$200(Lcom/narvii/drawer/DrawerRightHost;)V

    :cond_0
    return-void
.end method
