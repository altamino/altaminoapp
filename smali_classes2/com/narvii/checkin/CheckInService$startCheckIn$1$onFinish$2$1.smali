.class final Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2$1;
.super Ljava/lang/Object;
.source "CheckInService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2$1;->this$0:Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2$1;->this$0:Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;

    iget-object v0, v0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;->this$0:Lcom/narvii/checkin/CheckInService$startCheckIn$1;

    iget-object v0, v0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->getWillPlayLottery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2$1;->this$0:Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;

    iget-object v0, v0, Lcom/narvii/checkin/CheckInService$startCheckIn$1$onFinish$2;->this$0:Lcom/narvii/checkin/CheckInService$startCheckIn$1;

    iget-object v0, v0, Lcom/narvii/checkin/CheckInService$startCheckIn$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInService;->showLotteryPrompt()V

    :cond_0
    return-void
.end method
