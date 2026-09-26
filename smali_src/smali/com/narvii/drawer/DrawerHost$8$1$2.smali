.class Lcom/narvii/drawer/DrawerHost$8$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost$8$1$2;->val$resp:Lcom/narvii/checkin/CheckInResult;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/drawer/DrawerHost$8$1$2;->val$rankingEnabled:Z

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/drawer/DrawerHost$8$1$2;->val$account:Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    iput-boolean v1, v0, Lcom/narvii/drawer/DrawerHost;->dontUpdateRanking:Z

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/narvii/drawer/DrawerHost;->willPlayLottery:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->showLotteryPrompt()V

    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    const/4 v2, 0x1

    .line 23
    .line 24
    iput-boolean v2, v0, Lcom/narvii/drawer/DrawerHost;->dontUpdateRanking:Z

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/checkin/CheckInPopUpHelper;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInPopUpHelper;-><init>(Landroid/app/Activity;)V

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$8$1$2;->val$resp:Lcom/narvii/checkin/CheckInResult;

    .line 32
    const/4 v2, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/narvii/checkin/CheckInPopUpHelper;->showCheckInPopUp(Lcom/narvii/checkin/CheckInResult;Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;)V

    .line 36
    .line 37
    new-instance v0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$8$1$2$1;-><init>(Lcom/narvii/drawer/DrawerHost$8$1$2;)V

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$8$1$2;->val$resp:Lcom/narvii/checkin/CheckInResult;

    .line 43
    .line 44
    iget v1, v1, Lcom/narvii/checkin/CheckInResult;->additionalReputationPoint:I

    .line 45
    .line 46
    if-lez v1, :cond_2

    .line 47
    .line 48
    const-wide/16 v1, 0xdac

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_2
    const-wide/16 v1, 0x7d0

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 55
    return-void
.end method
