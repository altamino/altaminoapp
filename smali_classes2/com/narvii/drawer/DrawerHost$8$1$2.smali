.class Lcom/narvii/drawer/DrawerHost$8$1$2;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost$8$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/drawer/DrawerHost$8$1;

.field final synthetic val$account:Lcom/narvii/account/AccountService;

.field final synthetic val$rankingEnabled:Z

.field final synthetic val$resp:Lcom/narvii/checkin/CheckInResult;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost$8$1;Lcom/narvii/checkin/CheckInResult;ZLcom/narvii/account/AccountService;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost$8$1$2;->val$resp:Lcom/narvii/checkin/CheckInResult;

    iput-boolean p3, p0, Lcom/narvii/drawer/DrawerHost$8$1$2;->val$rankingEnabled:Z

    iput-object p4, p0, Lcom/narvii/drawer/DrawerHost$8$1$2;->val$account:Lcom/narvii/account/AccountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 819
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v1, v0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 820
    iput-boolean v1, v0, Lcom/narvii/drawer/DrawerHost;->dontUpdateRanking:Z

    .line 821
    iget-boolean v1, v0, Lcom/narvii/drawer/DrawerHost;->willPlayLottery:Z

    if-eqz v1, :cond_0

    .line 822
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->showLotteryPrompt()V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    .line 827
    iput-boolean v2, v0, Lcom/narvii/drawer/DrawerHost;->dontUpdateRanking:Z

    .line 828
    new-instance v0, Lcom/narvii/checkin/CheckInPopUpHelper;

    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInPopUpHelper;-><init>(Landroid/app/Activity;)V

    .line 829
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$8$1$2;->val$resp:Lcom/narvii/checkin/CheckInResult;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/checkin/CheckInPopUpHelper;->showCheckInPopUp(Lcom/narvii/checkin/CheckInResult;Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;)V

    .line 831
    new-instance v0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$8$1$2$1;-><init>(Lcom/narvii/drawer/DrawerHost$8$1$2;)V

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$8$1$2;->val$resp:Lcom/narvii/checkin/CheckInResult;

    iget v1, v1, Lcom/narvii/checkin/CheckInResult;->additionalReputationPoint:I

    if-lez v1, :cond_2

    const-wide/16 v1, 0xdac

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x7d0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
