.class Lcom/narvii/wallet/RewardVideoHelper$2;
.super Ljava/lang/Object;
.source "RewardVideoHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/RewardVideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/RewardVideoHelper;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/RewardVideoHelper;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {v0}, Lcom/narvii/wallet/RewardVideoHelper;->access$100(Lcom/narvii/wallet/RewardVideoHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {v0}, Lcom/narvii/wallet/RewardVideoHelper;->access$200(Lcom/narvii/wallet/RewardVideoHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {v0}, Lcom/narvii/wallet/RewardVideoHelper;->access$200(Lcom/narvii/wallet/RewardVideoHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isActivityResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    iget-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-virtual {p1}, Lcom/narvii/wallet/RewardVideoHelper;->cleanPendingDialog()V

    return-void

    .line 43
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v1, 0x7f0f1185    # 1.9017057E38f

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 44
    iget-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {p1}, Lcom/narvii/wallet/RewardVideoHelper;->access$300(Lcom/narvii/wallet/RewardVideoHelper;)Lcom/narvii/wallet/AdsVendor;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {v0}, Lcom/narvii/wallet/RewardVideoHelper;->access$200(Lcom/narvii/wallet/RewardVideoHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/wallet/AdsVendor;->openRewardVideo(Lcom/narvii/app/NVContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {p1, v2}, Lcom/narvii/wallet/RewardVideoHelper;->access$102(Lcom/narvii/wallet/RewardVideoHelper;Z)Z

    .line 47
    iget-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    new-instance v0, Lcom/narvii/wallet/RewardVideoHelper$2$1;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/RewardVideoHelper$2$1;-><init>(Lcom/narvii/wallet/RewardVideoHelper$2;)V

    invoke-static {p1, v0}, Lcom/narvii/wallet/RewardVideoHelper;->access$002(Lcom/narvii/wallet/RewardVideoHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 55
    iget-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {p1}, Lcom/narvii/wallet/RewardVideoHelper;->access$000(Lcom/narvii/wallet/RewardVideoHelper;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 57
    iget-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {v2}, Lcom/narvii/wallet/RewardVideoHelper;->access$400(Lcom/narvii/wallet/RewardVideoHelper;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/narvii/wallet/RewardVideoHelper;->onRewardVideoOpened(J)V

    .line 59
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/wallet/ads/video/start"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {v0}, Lcom/narvii/wallet/RewardVideoHelper;->access$200(Lcom/narvii/wallet/RewardVideoHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 61
    new-instance v1, Lcom/narvii/wallet/RewardVideoHelper$2$2;

    const-class v2, Lcom/narvii/wallet/AdsVideoStatsResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/wallet/RewardVideoHelper$2$2;-><init>(Lcom/narvii/wallet/RewardVideoHelper$2;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-virtual {p1}, Lcom/narvii/wallet/RewardVideoHelper;->cleanPendingDialog()V

    .line 73
    iget-object p1, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {p1}, Lcom/narvii/wallet/RewardVideoHelper;->access$200(Lcom/narvii/wallet/RewardVideoHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-virtual {v0}, Lcom/narvii/wallet/RewardVideoHelper;->cleanPendingDialog()V

    .line 77
    iget-object v0, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {v0}, Lcom/narvii/wallet/RewardVideoHelper;->access$200(Lcom/narvii/wallet/RewardVideoHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/wallet/RewardVideoHelper$2;->this$0:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-static {v3}, Lcom/narvii/wallet/RewardVideoHelper;->access$200(Lcom/narvii/wallet/RewardVideoHelper;)Lcom/narvii/app/NVContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, p1}, Lcom/narvii/util/Utils;->getErrorCodeMessage(Landroid/content/Context;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void
.end method
