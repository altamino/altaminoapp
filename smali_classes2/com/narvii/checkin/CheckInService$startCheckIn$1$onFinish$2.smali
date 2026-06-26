.class final Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;
.super Ljava/lang/Object;
.source "CheckInService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInService$startCheckIn$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $resp:Lcom/narvii/checkin/CheckInResult;

.field final synthetic this$0:Lcom/narvii/checkin/CheckInService$startCheckIn$1;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInService$startCheckIn$1;Lcom/narvii/checkin/CheckInResult;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;->this$0:Lcom/narvii/checkin/CheckInService$startCheckIn$1;

    iput-object p2, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;->$resp:Lcom/narvii/checkin/CheckInResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;->this$0:Lcom/narvii/checkin/CheckInService$startCheckIn$1;

    iget-object v0, v0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;->this$0:Lcom/narvii/checkin/CheckInService$startCheckIn$1;

    iget-object v0, v0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/checkin/CheckInService;->setDontUpdateRanking(Z)V

    .line 116
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;->this$0:Lcom/narvii/checkin/CheckInService$startCheckIn$1;

    iget-object v0, v0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getWillPlayLottery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;->this$0:Lcom/narvii/checkin/CheckInService$startCheckIn$1;

    iget-object v0, v0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->showLotteryPrompt()V

    :cond_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;->this$0:Lcom/narvii/checkin/CheckInService$startCheckIn$1;

    iget-object v0, v0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/checkin/CheckInService;->setDontUpdateRanking(Z)V

    .line 123
    new-instance v0, Lcom/narvii/checkin/CheckInPopUpHelper;

    iget-object v1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;->this$0:Lcom/narvii/checkin/CheckInService$startCheckIn$1;

    iget-object v1, v1, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v1}, Lcom/narvii/checkin/CheckInService;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInPopUpHelper;-><init>(Landroid/app/Activity;)V

    .line 124
    iget-object v1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;->$resp:Lcom/narvii/checkin/CheckInResult;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/checkin/CheckInPopUpHelper;->showCheckInPopUp(Lcom/narvii/checkin/CheckInResult;Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;)V

    .line 126
    new-instance v0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2$1;

    invoke-direct {v0, p0}, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2$1;-><init>(Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;)V

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
