.class Lcom/narvii/wallet/PurchaseCoinFragment$2;
.super Lcom/narvii/wallet/RewardVideoHelper;
.source "PurchaseCoinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/PurchaseCoinFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/PurchaseCoinFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/PurchaseCoinFragment;Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsVendor;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$2;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    invoke-direct {p0, p2, p3}, Lcom/narvii/wallet/RewardVideoHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsVendor;)V

    return-void
.end method


# virtual methods
.method protected onAdsVideoStatsResponse(Lcom/narvii/wallet/AdsVideoStatsResponse;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/narvii/wallet/RewardVideoHelper;->onAdsVideoStatsResponse(Lcom/narvii/wallet/AdsVideoStatsResponse;)V

    .line 94
    iget-object p1, p1, Lcom/narvii/wallet/AdsVideoStatsResponse;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment$2;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    iput-object p1, v0, Lcom/narvii/wallet/PurchaseCoinFragment;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    :cond_0
    return-void
.end method

.method protected onRewardVideoOpened(J)V
    .locals 1

    .line 87
    invoke-super {p0, p1, p2}, Lcom/narvii/wallet/RewardVideoHelper;->onRewardVideoOpened(J)V

    .line 88
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$2;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    sget-object p2, Lcom/narvii/logging/ActSemantic;->wildcard:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "EarnFreeCoins"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "canWatchVideo"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
