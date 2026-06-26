.class Lcom/narvii/wallet/RewardVideoHelper$2$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "RewardVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/RewardVideoHelper$2;->call(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/wallet/AdsVideoStatsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/wallet/RewardVideoHelper$2;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/RewardVideoHelper$2;Ljava/lang/Class;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2$2;->this$1:Lcom/narvii/wallet/RewardVideoHelper$2;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    check-cast p2, Lcom/narvii/wallet/AdsVideoStatsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/RewardVideoHelper$2$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/AdsVideoStatsResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/AdsVideoStatsResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 65
    iget-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2$2;->this$1:Lcom/narvii/wallet/RewardVideoHelper$2;

    iget-object p1, p1, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/RewardVideoHelper;->onAdsVideoStatsResponse(Lcom/narvii/wallet/AdsVideoStatsResponse;)V

    .line 66
    iget-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2$2;->this$1:Lcom/narvii/wallet/RewardVideoHelper$2;

    iget-object p1, p1, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-virtual {p1}, Lcom/narvii/wallet/RewardVideoHelper;->autoLoadNextRewardVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2$2;->this$1:Lcom/narvii/wallet/RewardVideoHelper$2;

    iget-object p1, p1, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {p1}, Lcom/narvii/wallet/RewardVideoHelper;->access$100(Lcom/narvii/wallet/RewardVideoHelper;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p2, Lcom/narvii/wallet/AdsVideoStatsResponse;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/narvii/wallet/AdsVideoStats;->canWatchVideo:Z

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2$2;->this$1:Lcom/narvii/wallet/RewardVideoHelper$2;

    iget-object p1, p1, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {p1}, Lcom/narvii/wallet/RewardVideoHelper;->access$300(Lcom/narvii/wallet/RewardVideoHelper;)Lcom/narvii/wallet/AdsVendor;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/wallet/RewardVideoHelper$2$2;->this$1:Lcom/narvii/wallet/RewardVideoHelper$2;

    iget-object p2, p2, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {p2}, Lcom/narvii/wallet/RewardVideoHelper;->access$200(Lcom/narvii/wallet/RewardVideoHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/narvii/wallet/AdsVendor;->requestRewardVideo(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
