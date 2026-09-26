.class Lcom/narvii/account/CodeVerifyBaseFragment$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/CodeVerifyBaseFragment;->createCountDownTimer()Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/CodeVerifyBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/CodeVerifyBaseFragment;JJ)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/CodeVerifyBaseFragment$1;->this$0:Lcom/narvii/account/CodeVerifyBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment$1;->this$0:Lcom/narvii/account/CodeVerifyBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/CodeVerifyBaseFragment;->onCountDownTimeFinished()V

    .line 6
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment$1;->this$0:Lcom/narvii/account/CodeVerifyBaseFragment;

    .line 3
    long-to-int v1, p1

    .line 4
    int-to-long v1, v1

    .line 5
    .line 6
    iput-wide v1, v0, Lcom/narvii/account/CodeVerifyBaseFragment;->remainingTime:J

    .line 7
    .line 8
    const-wide/16 v1, 0x3e8

    .line 9
    div-long/2addr p1, v1

    .line 10
    long-to-double p1, p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 14
    move-result-wide p1

    .line 15
    double-to-int p1, p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->onCountDownTimeChange(I)V

    .line 19
    return-void
.end method
