.class Lcom/narvii/drawer/DrawerHost$20;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V
    .locals 0

    .line 1598
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost$20;->val$i:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "__communityId"

    .line 1601
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->sendingEvent:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v1}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1602
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xfa0001

    if-ne v1, v2, :cond_0

    const-wide/16 v0, 0x12c

    .line 1603
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1604
    :cond_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 1606
    :try_start_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$20;->val$i:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1607
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$20;->val$i:Landroid/content/Intent;

    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget v2, v2, Lcom/narvii/drawer/DrawerHost;->cid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1609
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$20;->val$i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1610
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->overrideEnterAnim:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->overrideExitAnim:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1611
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->overrideEnterAnim:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost;->overrideExitAnim:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1613
    :cond_2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/narvii/drawer/DrawerHost;->overrideEnterAnim:Ljava/lang/Integer;

    .line 1614
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    iput-object v1, v0, Lcom/narvii/drawer/DrawerHost;->overrideExitAnim:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1616
    :catch_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$20;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0766

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    :cond_3
    :goto_0
    return-void
.end method
