.class Lcom/narvii/app/DrawerActivity$2;
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

    .line 223
    iput-object p1, p0, Lcom/narvii/app/DrawerActivity$2;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$2;->this$0:Lcom/narvii/app/DrawerActivity;

    const-string v0, "config"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    const/4 v0, 0x0

    const-string v1, "id"

    .line 228
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/narvii/app/DrawerActivity$2;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {p1}, Lcom/narvii/app/DrawerActivity;->access$1200(Lcom/narvii/app/DrawerActivity;)V

    :cond_0
    return-void
.end method
