.class Lcom/narvii/drawer/DrawerHost$8$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;->this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;->this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iput-boolean v3, v1, Lcom/narvii/drawer/DrawerHost;->dontUpdateRanking:Z

    .line 16
    .line 17
    iget-boolean v0, v1, Lcom/narvii/drawer/DrawerHost;->willPlayLottery:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/drawer/DrawerHost;->showLotteryPrompt()V

    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    const/4 v2, 0x1

    .line 25
    .line 26
    iput-boolean v2, v1, Lcom/narvii/drawer/DrawerHost;->dontUpdateRanking:Z

    .line 27
    .line 28
    iget-boolean v2, v0, Lcom/narvii/drawer/DrawerHost$8$1$2;->val$rankingEnabled:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2;->val$account:Lcom/narvii/account/AccountService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;->this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lcom/narvii/widget/RankingTitleView;->toReputation(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;->this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 60
    .line 61
    iput-boolean v3, v0, Lcom/narvii/drawer/DrawerHost;->dontUpdateRanking:Z

    .line 62
    .line 63
    new-instance v0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;-><init>(Lcom/narvii/drawer/DrawerHost$8$1$2$1;)V

    .line 67
    .line 68
    const-wide/16 v1, 0x190

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 72
    return-void
.end method
