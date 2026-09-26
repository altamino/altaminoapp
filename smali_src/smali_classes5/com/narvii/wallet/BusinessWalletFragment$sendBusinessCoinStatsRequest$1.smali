.class public final Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/BusinessWalletFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/BusinessWalletFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/wallet/BusinessWalletFragment;",
            "Ljava/lang/Class<",
            "Lcom/narvii/wallet/BusinessCoinStatsResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getProgress(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getProgress(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getSwipeRefresh(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getHistogramView(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/widget/histogram/HistogramView;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/widget/histogram/HistogramView;->hasData()Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getEmptyView(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/LinearLayout;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/wallet/BusinessCoinStatsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/BusinessCoinStatsResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/BusinessCoinStatsResponse;)V
    .locals 6
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/wallet/BusinessCoinStatsResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resp"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 2
    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getProgress(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getProgress(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getSwipeRefresh(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 5
    invoke-virtual {p2}, Lcom/narvii/wallet/BusinessCoinStatsResponse;->getDailyStats()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/narvii/wallet/BusinessCoinStatsResponse;->getDailyStats()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/narvii/wallet/BusinessCoinStatsResponse;->getLast10DayTotal()F

    move-result p1

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getEmptyView(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getHistogramView(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/widget/histogram/HistogramView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/histogram/HistogramView;->hasData()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 8
    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getEmptyView(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 9
    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getTotalBalance(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/wallet/BusinessCoinStatsResponse;->getTotalBalance()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 10
    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getEarningCoins(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/wallet/BusinessCoinStatsResponse;->getTotalEarning()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 11
    invoke-static {p1}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getPaidCoins(Lcom/narvii/wallet/BusinessWalletFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/wallet/BusinessCoinStatsResponse;->getTotalPaidOut()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p2}, Lcom/narvii/wallet/BusinessCoinStatsResponse;->getDailyStats()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/narvii/wallet/BusinessWalletFragment$sendBusinessCoinStatsRequest$1;->this$0:Lcom/narvii/wallet/BusinessWalletFragment;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/wallet/CoinStats$DailyStats;

    .line 15
    new-instance v2, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;

    iget-object v3, v1, Lcom/narvii/wallet/CoinStats$DailyStats;->startTime:Ljava/util/Date;

    invoke-direct {v2, v3}, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;-><init>(Ljava/util/Date;)V

    .line 16
    iget-object v1, v1, Lcom/narvii/wallet/CoinStats$DailyStats;->statsList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/wallet/CoinStats$StatsSection;

    .line 18
    iget-wide v4, v3, Lcom/narvii/wallet/CoinStats$StatsSection;->totalCoins:D

    iget v3, v3, Lcom/narvii/wallet/CoinStats$StatsSection;->sourceType:I

    invoke-static {p2, v3}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getSectionColor(Lcom/narvii/wallet/BusinessWalletFragment;I)I

    move-result v3

    invoke-virtual {v2, v4, v5, v3}, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->addSection(DI)Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {v2}, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->build()Lcom/narvii/widget/histogram/HistogramItemConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_6
    invoke-static {p2}, Lcom/narvii/wallet/BusinessWalletFragment;->access$getHistogramView(Lcom/narvii/wallet/BusinessWalletFragment;)Lcom/narvii/widget/histogram/HistogramView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/widget/histogram/HistogramView;->setItemConfigs(Ljava/util/ArrayList;)V

    :cond_7
    return-void
.end method
