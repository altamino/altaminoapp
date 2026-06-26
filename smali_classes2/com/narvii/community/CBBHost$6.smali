.class Lcom/narvii/community/CBBHost$6;
.super Landroid/content/BroadcastReceiver;
.source "CBBHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CBBHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CBBHost;


# direct methods
.method constructor <init>(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/narvii/community/CBBHost$6;->this$0:Lcom/narvii/community/CBBHost;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 524
    iget-object p1, p0, Lcom/narvii/community/CBBHost$6;->this$0:Lcom/narvii/community/CBBHost;

    iget-object p1, p1, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 525
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

    .line 526
    iget-object p1, p0, Lcom/narvii/community/CBBHost$6;->this$0:Lcom/narvii/community/CBBHost;

    invoke-static {p1}, Lcom/narvii/community/CBBHost;->access$600(Lcom/narvii/community/CBBHost;)V

    :cond_0
    return-void
.end method
