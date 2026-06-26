.class Lcom/narvii/drawer/DrawerHost$2;
.super Landroid/content/BroadcastReceiver;
.source "DrawerHost.java"


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

    .line 484
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 487
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    .line 488
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 490
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 491
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 492
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerHost;->smoothScrollToTop(Z)V

    goto :goto_0

    .line 494
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    const p2, 0x7f0903a2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p1, v0, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 496
    :goto_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$000(Lcom/narvii/drawer/DrawerHost;)V

    .line 497
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->onRefresh()V

    goto :goto_1

    .line 499
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "id"

    .line 500
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p2, p2, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 501
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$2;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->onCommunityUpdated()V

    :cond_2
    :goto_1
    return-void
.end method
