.class Lcom/narvii/checkin/lottery/LotteryDialog$10;
.super Ljava/lang/Object;
.source "LotteryDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog;->updateResultLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/lottery/LotteryDialog;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$10;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 501
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$10;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    const v1, 0x7f09097d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 502
    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$10;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object v1, v1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object v1, v1, Lcom/narvii/checkin/lottery/LotteryResponse;->wallet:Lcom/narvii/wallet/Wallet;

    iget-object v1, v1, Lcom/narvii/wallet/Wallet;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    iget v1, v1, Lcom/narvii/wallet/AdsVideoStats;->canEarnedCoins:I

    .line 503
    invoke-static {}, Lcom/narvii/ads/Ads;->overrideRewardCoins()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 504
    invoke-static {}, Lcom/narvii/ads/Ads;->overrideRewardCoins()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    if-lez v1, :cond_1

    .line 507
    iget-object v2, p0, Lcom/narvii/checkin/lottery/LotteryDialog$10;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f026d

    const v4, 0x7f0f026b

    invoke-static {v2, v1, v3, v4}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0f026c

    .line 509
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 511
    :goto_0
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$10;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    const v1, 0x7f090c5b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/GradientView;

    const v1, -0x6417f6

    const v2, -0xff5600

    .line 512
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 513
    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$10;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    .line 514
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$10;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    const v1, 0x7f090c53

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->fastFadeShow(Landroid/view/View;)V

    .line 515
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$10;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    const v1, 0x7f090cfe

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$10;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$10;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    const v1, 0x7f090cff

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$10;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$10;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    const-string v1, "Dismiss"

    iput-object v1, v0, Lcom/narvii/checkin/lottery/LotteryDialog;->rvAction:Ljava/lang/String;

    return-void
.end method
