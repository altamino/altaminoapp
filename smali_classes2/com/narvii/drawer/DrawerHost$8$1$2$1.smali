.class Lcom/narvii/drawer/DrawerHost$8$1$2$1;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost$8$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost$8$1$2;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;->this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 834
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;->this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;

    iget-object v1, v0, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v2, v1, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 835
    iput-boolean v3, v1, Lcom/narvii/drawer/DrawerHost;->dontUpdateRanking:Z

    .line 836
    iget-boolean v0, v1, Lcom/narvii/drawer/DrawerHost;->willPlayLottery:Z

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {v1}, Lcom/narvii/drawer/DrawerHost;->showLotteryPrompt()V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    .line 841
    iput-boolean v2, v1, Lcom/narvii/drawer/DrawerHost;->dontUpdateRanking:Z

    .line 842
    iget-boolean v2, v0, Lcom/narvii/drawer/DrawerHost$8$1$2;->val$rankingEnabled:Z

    if-eqz v2, :cond_2

    .line 843
    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2;->val$account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;->this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;

    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/widget/RankingTitleView;->toReputation(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;->this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    iput-boolean v3, v0, Lcom/narvii/drawer/DrawerHost;->dontUpdateRanking:Z

    .line 846
    new-instance v0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;-><init>(Lcom/narvii/drawer/DrawerHost$8$1$2$1;)V

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
