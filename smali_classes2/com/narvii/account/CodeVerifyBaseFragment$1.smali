.class Lcom/narvii/account/CodeVerifyBaseFragment$1;
.super Landroid/os/CountDownTimer;
.source "CodeVerifyBaseFragment.java"


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

    .line 52
    iput-object p1, p0, Lcom/narvii/account/CodeVerifyBaseFragment$1;->this$0:Lcom/narvii/account/CodeVerifyBaseFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment$1;->this$0:Lcom/narvii/account/CodeVerifyBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/account/CodeVerifyBaseFragment;->onCountDownTimeFinished()V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment$1;->this$0:Lcom/narvii/account/CodeVerifyBaseFragment;

    long-to-int v1, p1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/narvii/account/CodeVerifyBaseFragment;->remainingTime:J

    const-wide/16 v1, 0x3e8

    .line 56
    div-long/2addr p1, v1

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->onCountDownTimeChange(I)V

    return-void
.end method
