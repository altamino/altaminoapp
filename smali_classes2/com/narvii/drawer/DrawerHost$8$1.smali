.class Lcom/narvii/drawer/DrawerHost$8$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "DrawerHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost$8;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/checkin/CheckInResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/drawer/DrawerHost$8;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost$8;Ljava/lang/Class;J)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iput-wide p3, p0, Lcom/narvii/drawer/DrawerHost$8$1;->val$startTime:J

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 1
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

    .line 879
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p4, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 880
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    const p4, 0x7f090386

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/checkin/CheckInCircle;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInCircle;->fail()V

    .line 881
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    const p4, 0x7f090720

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p5, 0x190

    invoke-virtual {p1, p5, p6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 882
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v0, 0x7f0900a3

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p5, p6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 883
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v0, 0x7f0900a2

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p5, p6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 884
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    const p4, 0x7f090382

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 886
    invoke-virtual {p1, p3}, Landroid/view/View;->setPressed(Z)V

    .line 888
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 889
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1, p3}, Lcom/narvii/drawer/DrawerHost;->access$202(Lcom/narvii/drawer/DrawerHost;Z)Z

    if-eqz p2, :cond_1

    .line 892
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/narvii/drawer/DrawerHost;->refreshReminderCheck(J)Z

    :cond_1
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 781
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v0, 0x7f090386

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/checkin/CheckInCircle;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInCircle;->finish()V

    .line 782
    new-instance p1, Lcom/narvii/drawer/DrawerHost$8$1$1;

    invoke-direct {p1, p0}, Lcom/narvii/drawer/DrawerHost$8$1$1;-><init>(Lcom/narvii/drawer/DrawerHost$8$1;)V

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 792
    iget-boolean p1, p2, Lcom/narvii/checkin/CheckInResult;->canPlayLottery:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "canPlayLottery"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-boolean v0, p2, Lcom/narvii/checkin/CheckInResult;->canPlayLottery:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/narvii/drawer/DrawerHost;->willPlayLottery:Z

    .line 796
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    iput-boolean v1, p1, Lcom/narvii/drawer/DrawerHost;->checkInPopUpDone:Z

    .line 798
    iput-boolean v2, p1, Lcom/narvii/drawer/DrawerHost;->dontUpdateRanking:Z

    .line 799
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 800
    iget v0, p2, Lcom/narvii/checkin/CheckInResult;->consecutiveCheckInDays:I

    iget-object v3, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v2, v0, v3, v2}, Lcom/narvii/account/AccountService;->updateCheckInInfo(ZILjava/lang/String;Z)V

    .line 801
    iget-object v0, p2, Lcom/narvii/checkin/CheckInResult;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iget-object v3, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v3, v2}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;Ljava/lang/String;Z)V

    .line 803
    iget-object v0, p2, Lcom/narvii/checkin/CheckInResult;->userProfile:Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    .line 804
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 805
    iget-object v3, p2, Lcom/narvii/checkin/CheckInResult;->userProfile:Lcom/narvii/model/User;

    iget v4, v3, Lcom/narvii/model/User;->level:I

    iput v4, v0, Lcom/narvii/model/User;->level:I

    .line 806
    iget v3, v3, Lcom/narvii/model/User;->reputation:I

    iput v3, v0, Lcom/narvii/model/User;->reputation:I

    .line 807
    iget-object v3, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v3, v2}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    move-result v0

    .line 810
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v3, v3, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v3, v3, Lcom/narvii/drawer/DrawerHost;->rankingTitleView:Lcom/narvii/widget/RankingTitleView;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 811
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    iget-object v5, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v5, v5, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v5, v5, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {v3, v4, v5}, Lcom/narvii/widget/RankingTitleView;->willToReputation(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    .line 813
    :cond_2
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v3, v3, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v3}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 814
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v3, v3, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v3, v1}, Lcom/narvii/drawer/DrawerHost;->access$202(Lcom/narvii/drawer/DrawerHost;Z)Z

    .line 816
    new-instance v1, Lcom/narvii/drawer/DrawerHost$8$1$2;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/narvii/drawer/DrawerHost$8$1$2;-><init>(Lcom/narvii/drawer/DrawerHost$8$1;Lcom/narvii/checkin/CheckInResult;ZLcom/narvii/account/AccountService;)V

    const-wide/16 v3, 0x4b0

    invoke-static {v1, v3, v4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 765
    check-cast p2, Lcom/narvii/checkin/CheckInResult;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerHost$8$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V

    return-void
.end method

.method public parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/checkin/CheckInResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;[B)",
            "Lcom/narvii/checkin/CheckInResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 768
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/util/http/ApiResponseListener;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;

    move-result-object p1

    check-cast p1, Lcom/narvii/checkin/CheckInResult;

    .line 769
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/narvii/drawer/DrawerHost$8$1;->val$startTime:J

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-ltz p4, :cond_0

    const-wide/16 v0, 0x7d0

    cmp-long p4, p2, v0

    if-gez p4, :cond_0

    sub-long/2addr v0, p2

    .line 772
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1
.end method

.method public bridge synthetic parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 765
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/drawer/DrawerHost$8$1;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/checkin/CheckInResult;

    move-result-object p1

    return-object p1
.end method
