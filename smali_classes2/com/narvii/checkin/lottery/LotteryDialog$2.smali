.class Lcom/narvii/checkin/lottery/LotteryDialog$2;
.super Lcom/narvii/wallet/RewardVideoHelper;
.source "LotteryDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog;-><init>(Lcom/narvii/app/NVActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

.field final synthetic val$nvContext:Lcom/narvii/app/NVActivity;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog;Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsVendor;Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$2;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iput-object p4, p0, Lcom/narvii/checkin/lottery/LotteryDialog$2;->val$nvContext:Lcom/narvii/app/NVActivity;

    invoke-direct {p0, p2, p3}, Lcom/narvii/wallet/RewardVideoHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsVendor;)V

    return-void
.end method


# virtual methods
.method protected autoLoadNextRewardVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDelayClose()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/narvii/wallet/RewardVideoHelper;->onDelayClose()V

    .line 128
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$2;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {v0}, Lcom/narvii/checkin/lottery/LotteryDialog;->dismiss()V

    return-void
.end method

.method protected onRewardVideoOpened(J)V
    .locals 4

    .line 138
    invoke-super {p0, p1, p2}, Lcom/narvii/wallet/RewardVideoHelper;->onRewardVideoOpened(J)V

    .line 140
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$2;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    const-string v1, "ClaimRewardVideo"

    invoke-static {v0, v1}, Lcom/narvii/checkin/lottery/LotteryDialog;->access$100(Lcom/narvii/checkin/lottery/LotteryDialog;Ljava/lang/String;)V

    return-void
.end method
