.class public final Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "BusinessWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/BusinessWalletFragment;->sendBusinessCoinStatsRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/wallet/BusinessCoinStatsResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBusinessWalletFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BusinessWalletFragment.kt\ncom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1\n*L\n1#1,184:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/BusinessWalletFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/BusinessWalletFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 174
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getProgress$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getProgress$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getSwipeRefresh$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 178
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getHistogramView$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/widget/histogram/HistogramView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/histogram/HistogramView;->hasData()Z

    move-result p1

    if-nez p1, :cond_1

    .line 179
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getEmptyView$p(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 141
    check-cast p2, Lcom/narvii/wallet/BusinessCoinStatsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/BusinessCoinStatsResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/BusinessCoinStatsResponse;)V
    .locals 6

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resp"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getProgress$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getProgress$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getSwipeRefresh$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 147
    invoke-virtual {p2}, Lcom/narvii/wallet/BusinessCoinStatsResponse;->getDailyStats()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/narvii/wallet/BusinessCoinStatsResponse;->getDailyStats()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    :cond_1
    invoke-virtual {p2}, Lcom/narvii/wallet/BusinessCoinStatsResponse;->getLast10DayTotal()F

    move-result p1

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-nez p1, :cond_2

    goto :goto_0

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getEmptyView$p(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 148
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getHistogramView$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/widget/histogram/HistogramView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/histogram/HistogramView;->hasData()Z

    move-result p1

    if-nez p1, :cond_4

    .line 149
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getEmptyView$p(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getTotalBalance$p(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/wallet/BusinessCoinStatsResponse;->getTotalBalance()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getEarningCoins$p(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/wallet/BusinessCoinStatsResponse;->getTotalEarning()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getPaidCoins$p(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/wallet/BusinessCoinStatsResponse;->getTotalPaidOut()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p2}, Lcom/narvii/wallet/BusinessCoinStatsResponse;->getDailyStats()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 159
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/CoinStats$DailyStats;

    .line 161
    new-instance v1, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;

    iget-object v2, v0, Lcom/narvii/wallet/CoinStats$DailyStats;->startTime:Ljava/util/Date;

    invoke-direct {v1, v2}, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;-><init>(Ljava/util/Date;)V

    .line 162
    iget-object v0, v0, Lcom/narvii/wallet/CoinStats$DailyStats;->statsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 163
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/wallet/CoinStats$StatsSection;

    .line 164
    iget-wide v3, v2, Lcom/narvii/wallet/CoinStats$StatsSection;->totalCoins:D

    iget-object v5, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    iget v2, v2, Lcom/narvii/wallet/CoinStats$StatsSection;->sourceType:I

    invoke-static {v5, v2}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getSectionColor(Lcom/narvii/wallet/BusinessWalletFragment;I)I

    move-result v2

    invoke-virtual {v1, v3, v4, v2}, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->addSection(DI)Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;

    goto :goto_3

    .line 167
    :cond_5
    invoke-virtual {v1}, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->build()Lcom/narvii/widget/histogram/HistogramItemConfig;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    :cond_6
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getHistogramView$p(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/widget/histogram/HistogramView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/widget/histogram/HistogramView;->setItemConfigs(Ljava/util/ArrayList;)V

    :cond_7
    return-void
.end method
