.class public final Lcom/narvii/chat/video/utils/VVChatHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVVChatHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VVChatHelper.kt\ncom/narvii/chat/video/utils/VVChatHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,617:1\n1#2:618\n*E\n"
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "_ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showChannelComeLiveDialog$lambda$27(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPermissionRequestDialog$lambda$8(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPresenterNotExistedDialog$lambda$10(Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPermissionRequestDialog$lambda$9(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/chat/video/utils/VVChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/RtcService;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/chat/video/utils/VVChatHelper;->requestToBePresenter$lambda$17(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/chat/video/utils/VVChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/RtcService;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->showCloseOrMiniLiveChannelHintDialog$lambda$3(Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/narvii/util/Callback;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showLeaveChannelConfirmDialog$lambda$13(Lcom/narvii/util/Callback;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->requestToBePresenter$lambda$14(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->showLeaveChannelConfirmDialog$lambda$12(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private final isDeviceOffline()Z
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "connectivity"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public static synthetic j(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->requestToBePresenter$lambda$19(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic k(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showNotEligibleForVVChatDialog$lambda$11(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPrivateCallLimitDialog$lambda$7(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showAcceptChatInvitationDialog$lambda$23(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/RtcService;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/chat/video/utils/VVChatHelper;->quitAsPresenter$lambda$21$lambda$20(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/RtcService;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showSwitchChannelDialog$lambda$1(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->showAcceptChatInvitationDialog$lambda$22(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->requestToBePresenter$lambda$17$lambda$16(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic quitAsPresenter$default(Lcom/narvii/chat/video/utils/VVChatHelper;ILcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/ChannelUserWrapper;Lcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p5, p5, 0x8

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    const/4 p4, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/chat/video/utils/VVChatHelper;->quitAsPresenter(ILcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/ChannelUserWrapper;Lcom/narvii/util/Callback;)V

    .line 9
    return-void
.end method

.method private static final quitAsPresenter$lambda$21$lambda$20(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/RtcService;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p4, "$this_apply"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p4}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    .line 17
    :cond_0
    if-eqz p2, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Lcom/narvii/chat/util/ChatHelperKt;->isSingleChat(Lcom/narvii/model/ChatThread;)Z

    .line 21
    move-result p1

    .line 22
    const/4 p4, 0x1

    .line 23
    .line 24
    if-ne p1, p4, :cond_2

    .line 25
    .line 26
    const-string p1, "callScreen"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVDialog;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    check-cast p0, Lcom/narvii/chat/call/CallScreenService;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->cancelCall(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 42
    .line 43
    :cond_1
    iget p0, p2, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 44
    .line 45
    iget-object p1, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p0, p1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {p3}, Lcom/narvii/chat/rtc/RtcService;->stopPresenting()V

    .line 53
    :goto_0
    return-void
.end method

.method public static synthetic r(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->showCloseOrMiniLiveChannelHintDialog$lambda$4(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final requestToBePresenter$lambda$14(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    return-void
.end method

.method private static final requestToBePresenter$lambda$17(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/chat/video/utils/VVChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/RtcService;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p4, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p4, "this$0"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 14
    .line 15
    new-instance p0, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 16
    .line 17
    iget-object p4, p1, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p4}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    const-string p4, "account"

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 31
    .line 32
    iget-object p4, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/chat/video/utils/j;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p3}, Lcom/narvii/chat/video/utils/j;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p4, p1, p2, v0}, Lcom/narvii/chat/util/ChatRequestHelper;->sendJoinChatThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 45
    return-void
.end method

.method private static final requestToBePresenter$lambda$17$lambda$16(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->requestToBePresenter(Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 10
    :cond_0
    return-void
.end method

.method private static final requestToBePresenter$lambda$19(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService;->requestToBePresenter(Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic s(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showStrangerHintDialog$lambda$25(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method private static final showAcceptChatInvitationDialog$lambda$22(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    return-void
.end method

.method private static final showAcceptChatInvitationDialog$lambda$23(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method private static final showChannelComeLiveDialog$lambda$26(Lcom/narvii/util/Callback;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 16
    return-void
.end method

.method private static final showChannelComeLiveDialog$lambda$27(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method private static final showCloseOrMiniLiveChannelHintDialog$lambda$2(Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
.end method

.method private static final showCloseOrMiniLiveChannelHintDialog$lambda$3(Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
.end method

.method private static final showCloseOrMiniLiveChannelHintDialog$lambda$4(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    return-void
.end method

.method public static synthetic showLeaveChannelConfirmDialog$default(Lcom/narvii/chat/video/utils/VVChatHelper;Landroid/app/Activity;ZLcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x2

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/video/utils/VVChatHelper;->showLeaveChannelConfirmDialog(Landroid/app/Activity;ZLcom/narvii/util/Callback;)V

    .line 9
    return-void
.end method

.method private static final showLeaveChannelConfirmDialog$lambda$12(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    return-void
.end method

.method private static final showLeaveChannelConfirmDialog$lambda$13(Lcom/narvii/util/Callback;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 16
    return-void
.end method

.method private static final showNotEligibleForVVChatDialog$lambda$11(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method private static final showPermissionRequestDialog$lambda$8(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$alertDialog"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    return-void
.end method

.method private static final showPermissionRequestDialog$lambda$9(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$alertDialog"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method public static synthetic showPlayListFragment$default(Lcom/narvii/chat/video/utils/VVChatHelper;Lcom/narvii/chat/ChatFragment;ZILjava/lang/Object;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPlayListFragment(Lcom/narvii/chat/ChatFragment;Z)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final showPresenterNotExistedDialog$lambda$10(Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method private static final showPrivateCallLimitDialog$lambda$7(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method private static final showPrivateCallRetryDialog$lambda$5(Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 16
    return-void
.end method

.method private static final showPrivateCallRetryDialog$lambda$6(Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 16
    return-void
.end method

.method private static final showStrangerHintDialog$lambda$24(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    return-void
.end method

.method private static final showStrangerHintDialog$lambda$25(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method private static final showSwitchChannelDialog$lambda$0(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method private static final showSwitchChannelDialog$lambda$1(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "$dlg"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/narvii/util/Callback;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showChannelComeLiveDialog$lambda$26(Lcom/narvii/util/Callback;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPrivateCallRetryDialog$lambda$5(Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->showCloseOrMiniLiveChannelHintDialog$lambda$2(Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showSwitchChannelDialog$lambda$0(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/video/utils/VVChatHelper;->showPrivateCallRetryDialog$lambda$6(Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->showStrangerHintDialog$lambda$24(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final channelContainMe(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 4
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    const-string v2, "account"

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    return v1

    .line 32
    .line 33
    :cond_2
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    check-cast v2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    const/4 p1, 0x1

    .line 65
    return p1

    .line 66
    :cond_4
    :goto_1
    return v1
.end method

.method public final checkEligibleWithHint()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/utils/VVChatHelper;->isEligibleForVVChat()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->showNotEligibleForVVChatDialog(Lcom/narvii/util/Callback;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final checkRtcStatus(Lcom/narvii/util/Callback;)V
    .locals 3
    .param p1    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "ws"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/ws/WsService;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/util/ws/WsService;->getConnectStatus()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    const v2, 0x7f121026

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_0
    if-lez v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/chat/video/utils/VVChatHelper;->isDeviceOffline()Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    if-eqz p1, :cond_3

    .line 56
    .line 57
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    const v2, 0x7f121027

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 85
    :cond_3
    :goto_1
    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getPlayListFragment(Lcom/narvii/chat/ChatFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;
    .locals 2
    .param p1    # Lcom/narvii/chat/ChatFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v1, "getChildFragmentManager(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v1, "playlist"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    instance-of v1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    move-object v0, p1

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 27
    :cond_1
    return-object v0
.end method

.method public final hasOtherHostInCurrentChannel(Lcom/narvii/model/ChatThread;)Z
    .locals 7
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "rtc"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v2, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v1

    .line 18
    :goto_0
    const/4 v3, 0x0

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    return v3

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0, v2}, Lcom/narvii/chat/video/utils/VVChatHelper;->isCurrentThreadLive(Ljava/lang/String;)Z

    .line 25
    move-result v4

    .line 26
    .line 27
    if-nez v4, :cond_2

    .line 28
    return v3

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-virtual {v0, v2}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 37
    :cond_3
    const/4 v2, 0x1

    .line 38
    .line 39
    if-nez v1, :cond_4

    .line 40
    return v2

    .line 41
    .line 42
    :cond_4
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 43
    .line 44
    const-string v4, "account"

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v4

    .line 65
    .line 66
    if-eqz v4, :cond_9

    .line 67
    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    check-cast v4, Lcom/narvii/chat/signalling/ChannelUser;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    if-eqz v5, :cond_6

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v5

    .line 83
    .line 84
    if-ne v5, v2, :cond_6

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :cond_6
    iget v5, v4, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 88
    .line 89
    if-eq v5, v2, :cond_7

    .line 90
    goto :goto_1

    .line 91
    .line 92
    .line 93
    :cond_7
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getCoHostUidList()Ljava/util/List;

    .line 94
    move-result-object v5

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 98
    move-result-object v6

    .line 99
    .line 100
    .line 101
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 102
    move-result v5

    .line 103
    .line 104
    if-nez v5, :cond_8

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 109
    .line 110
    if-eqz v4, :cond_5

    .line 111
    .line 112
    iget-object v5, p1, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v4

    .line 117
    .line 118
    if-ne v4, v2, :cond_5

    .line 119
    :cond_8
    return v2

    .line 120
    :cond_9
    return v3
.end method

.method public final hidePlayListFragment(Lcom/narvii/chat/ChatFragment;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/ChatFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string v0, "getChildFragmentManager(...)"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    const-string v0, "playlist"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    instance-of v0, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->dismiss()V

    .line 30
    :cond_1
    return-void
.end method

.method public final isAgoraVideoType(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isAgoraVoiceType(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentChannelLive(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 2
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    return v0

    .line 14
    .line 15
    :cond_1
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    return v0

    .line 23
    .line 24
    :cond_2
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 25
    const/4 v1, 0x1

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    check-cast p1, Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-ne p1, v1, :cond_3

    .line 36
    return v0

    .line 37
    :cond_3
    return v1
.end method

.method public final isCurrentThreadLive(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v2, "rtc"

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Lcom/narvii/chat/rtc/RtcService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    const/4 v0, 0x1

    .line 38
    :cond_1
    return v0
.end method

.method public final isEligibleForVVChat()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "rtc"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isEligible()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v2, "CPU_ABI"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const/4 v2, 0x2

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    const-string v4, "arm"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_0
    return v1
.end method

.method public final isMePresenterInCurrentChannel(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "rtc"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public final isPrivateCall(Lcom/narvii/model/ChatThread;I)Z
    .locals 3
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-eq p2, v1, :cond_1

    .line 5
    const/4 v2, 0x4

    .line 6
    .line 7
    if-ne p2, v2, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p2, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    move p2, v1

    .line 12
    .line 13
    :goto_1
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    .line 16
    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    move v0, v1

    .line 21
    :cond_2
    return v0
.end method

.method public final isReadyToLaunchLiveChannel(Lcom/narvii/model/ChatThread;Z)Z
    .locals 1
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/utils/VVChatHelper;->checkEligibleWithHint()Z

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    return v0

    .line 12
    :cond_1
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method public final isThreadOwner(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    :goto_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    .line 11
    const/4 v1, 0x2

    .line 12
    .line 13
    if-ne p1, v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_1
    return p1
.end method

.method public final isValidChannelToJoinAgora(Lcom/narvii/chat/signalling/SignallingChannel;)Z
    .locals 2
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalRole(I)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    const/4 v0, 0x1

    .line 46
    :cond_1
    return v0
.end method

.method public final needShowConfirmDialogWhenLeaveChannel(Lcom/narvii/model/ChatThread;)Z
    .locals 8
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v2, "rtc"

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Lcom/narvii/chat/rtc/RtcService;

    .line 15
    .line 16
    new-instance v2, Lcom/narvii/chat/util/ChatHelper;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    .line 21
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    const-string v4, "getContext(...)"

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    iget-object v3, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 36
    move-result-object v1

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v4, v1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v4, v3

    .line 44
    .line 45
    :goto_0
    if-nez v4, :cond_3

    .line 46
    :cond_2
    move-object v5, v3

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_3
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v4, v1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 52
    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    check-cast v4, Ljava/lang/Iterable;

    .line 56
    .line 57
    .line 58
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v5

    .line 64
    .line 65
    if-eqz v5, :cond_5

    .line 66
    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v5

    .line 70
    move-object v6, v5

    .line 71
    .line 72
    check-cast v6, Lcom/narvii/chat/signalling/ChannelUser;

    .line 73
    .line 74
    iget v6, v6, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 75
    .line 76
    iget v7, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 77
    .line 78
    if-ne v6, v7, :cond_4

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    move-object v5, v3

    .line 81
    .line 82
    :goto_1
    check-cast v5, Lcom/narvii/chat/signalling/ChannelUser;

    .line 83
    :goto_2
    const/4 v4, 0x1

    .line 84
    .line 85
    if-eqz v5, :cond_6

    .line 86
    .line 87
    iget-boolean v6, v5, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 88
    .line 89
    if-ne v6, v4, :cond_6

    .line 90
    goto :goto_4

    .line 91
    .line 92
    :cond_6
    if-eqz v5, :cond_7

    .line 93
    .line 94
    iget-object v6, v5, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 95
    .line 96
    if-eqz v6, :cond_7

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 100
    move-result-object v6

    .line 101
    goto :goto_3

    .line 102
    :cond_7
    move-object v6, v3

    .line 103
    .line 104
    .line 105
    :goto_3
    invoke-virtual {v2, p1, v6}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 106
    move-result v6

    .line 107
    .line 108
    if-nez v6, :cond_a

    .line 109
    .line 110
    if-eqz v5, :cond_8

    .line 111
    .line 112
    iget-object v5, v5, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 113
    .line 114
    if-eqz v5, :cond_8

    .line 115
    .line 116
    iget-object v3, v5, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    :cond_8
    invoke-virtual {v2, p1, v3}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 120
    move-result v2

    .line 121
    .line 122
    if-eqz v2, :cond_9

    .line 123
    goto :goto_4

    .line 124
    :cond_9
    move v2, v0

    .line 125
    goto :goto_5

    .line 126
    :cond_a
    :goto_4
    move v2, v4

    .line 127
    .line 128
    .line 129
    :goto_5
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->hasOtherHostInCurrentChannel(Lcom/narvii/model/ChatThread;)Z

    .line 130
    move-result v3

    .line 131
    .line 132
    if-eqz v1, :cond_c

    .line 133
    .line 134
    iget-object v5, v1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 135
    .line 136
    if-eqz v5, :cond_c

    .line 137
    .line 138
    .line 139
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 140
    move-result v5

    .line 141
    .line 142
    if-le v5, v4, :cond_c

    .line 143
    .line 144
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->isMePresenterInCurrentChannel(Ljava/lang/String;)Z

    .line 148
    move-result p1

    .line 149
    .line 150
    if-eqz p1, :cond_c

    .line 151
    .line 152
    if-eqz v2, :cond_c

    .line 153
    .line 154
    if-eqz v3, :cond_b

    .line 155
    .line 156
    if-eqz v1, :cond_c

    .line 157
    .line 158
    iget p1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 159
    const/4 v1, 0x5

    .line 160
    .line 161
    if-ne p1, v1, :cond_c

    .line 162
    :cond_b
    move v0, v4

    .line 163
    :cond_c
    return v0
.end method

.method public final quitAsPresenter(ILcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/ChannelUserWrapper;Lcom/narvii/util/Callback;)V
    .locals 7
    .param p2    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/chat/rtc/ChannelUserWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    const-string v3, "getContext(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 28
    .line 29
    const-string v3, "rtc"

    .line 30
    .line 31
    .line 32
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    check-cast v2, Lcom/narvii/chat/rtc/RtcService;

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    .line 39
    const v4, 0x7f120f84

    .line 40
    .line 41
    if-eqz p3, :cond_0

    .line 42
    .line 43
    iget-object v5, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 44
    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    iget-boolean v5, v5, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 48
    const/4 v6, 0x1

    .line 49
    .line 50
    if-ne v5, v6, :cond_0

    .line 51
    const/4 v5, 0x5

    .line 52
    .line 53
    if-ne p1, v5, :cond_0

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-static {p2}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    .line 58
    move-result p1

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    .line 64
    move-result p1

    .line 65
    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p2}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 70
    move-result p1

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    :cond_1
    if-eqz p3, :cond_2

    .line 75
    .line 76
    iget-object p1, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    move-object p1, v3

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {v1, p2, p1}, Lcom/narvii/chat/util/ChatHelper;->isSpeakerHasOtherOriganizer(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 88
    move-result p1

    .line 89
    .line 90
    if-nez p1, :cond_3

    .line 91
    goto :goto_1

    .line 92
    .line 93
    .line 94
    :cond_3
    const v4, 0x7f120f83

    .line 95
    .line 96
    .line 97
    :goto_1
    invoke-virtual {v0, v4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 98
    .line 99
    .line 100
    const p1, 0x7f120d57

    .line 101
    .line 102
    .line 103
    const p3, -0x444445

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1, v3, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 107
    .line 108
    new-instance p1, Lcom/narvii/chat/video/utils/b;

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, v0, p4, p2, v2}, Lcom/narvii/chat/video/utils/b;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/RtcService;)V

    .line 112
    .line 113
    .line 114
    const p2, 0x7f1212a7

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p2, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 121
    return-void
.end method

.method public final reportLiveLayerActiveEvent(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/String;I)V
    .locals 5
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-static {p3}, Lcom/narvii/model/ChatThread;->isLegalThreadType(I)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 28
    .line 29
    const-string v1, "liveLayer"

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 36
    .line 37
    const/16 v1, 0xc

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "/"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    new-instance v1, Ljava/util/HashMap;

    .line 64
    .line 65
    .line 66
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 67
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    sget-object v3, Lcom/narvii/livelayer/LiveLayerService;->ACTION_CHATTING:Ljava/lang/String;

    .line 74
    .line 75
    const-string v4, "ACTION_CHATTING"

    .line 76
    .line 77
    .line 78
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object p3

    .line 86
    .line 87
    const-string v3, "threadType"

    .line 88
    .line 89
    .line 90
    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    const-string p3, "channelType"

    .line 99
    .line 100
    .line 101
    invoke-interface {v1, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2, p2, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 105
    :cond_1
    :goto_0
    return-void
.end method

.method public final reportLiveLayerInactiveEvent(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/String;I)V
    .locals 4
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-static {p3}, Lcom/narvii/model/ChatThread;->isLegalThreadType(I)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 28
    .line 29
    const-string v1, "liveLayerWS"

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    sget-object v2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_CHATTING:Ljava/lang/String;

    .line 43
    .line 44
    const-string v3, "ACTION_CHATTING"

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    new-instance v2, Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p3

    .line 60
    .line 61
    const-string v3, "threadType"

    .line 62
    .line 63
    .line 64
    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    iget p3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 67
    .line 68
    .line 69
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object p3

    .line 71
    .line 72
    const-string v3, "channelType"

    .line 73
    .line 74
    .line 75
    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    const/16 p3, 0xc

    .line 78
    .line 79
    .line 80
    invoke-static {p3}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 81
    move-result-object p3

    .line 82
    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p3, "/"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p2

    .line 102
    .line 103
    iget p3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 104
    .line 105
    .line 106
    invoke-static {p3, p2}, Lcom/narvii/livelayer/LiveLayerService;->assembleTarget(ILjava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object p2

    .line 108
    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportInactive(ILjava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 115
    :cond_1
    :goto_0
    return-void
.end method

.method public final requestToBePresenter(Lcom/narvii/model/ChatThread;)V
    .locals 5
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "rtc"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget v1, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    const/4 v2, 0x2

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    .line 27
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    const v2, 0x7f12026a

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 38
    .line 39
    new-instance v2, Lcom/narvii/chat/video/utils/w;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v1}, Lcom/narvii/chat/video/utils/w;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 43
    .line 44
    .line 45
    const v3, 0x7f1201e2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3, v2}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 49
    .line 50
    new-instance v2, Lcom/narvii/chat/video/utils/x;

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v1, p0, p1, v0}, Lcom/narvii/chat/video/utils/x;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/chat/video/utils/VVChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/RtcService;)V

    .line 54
    .line 55
    .line 56
    const p1, 0x7f120024

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_0
    new-instance v1, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 68
    .line 69
    .line 70
    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 71
    .line 72
    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 73
    .line 74
    const-string v3, "account"

    .line 75
    .line 76
    .line 77
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 81
    .line 82
    iget-object v3, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    new-instance v4, Lcom/narvii/chat/video/utils/y;

    .line 89
    .line 90
    .line 91
    invoke-direct {v4, v0}, Lcom/narvii/chat/video/utils/y;-><init>(Lcom/narvii/chat/rtc/RtcService;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3, v2, p1, v4}, Lcom/narvii/chat/util/ChatRequestHelper;->sendJoinChatThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const/4 p1, 0x0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->requestToBePresenter(Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 100
    :goto_0
    return-void
.end method

.method public final sendCallCancelMessage(Lcom/narvii/chat/signalling/SignallingChannel;Z)V
    .locals 3
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    goto :goto_1

    .line 6
    .line 7
    :cond_0
    new-instance p2, Lcom/narvii/chat/video/view/VoiceCallHelper;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, v0}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    const/16 v2, 0x35

    .line 22
    .line 23
    if-eq v0, v1, :cond_3

    .line 24
    const/4 v1, 0x3

    .line 25
    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    const/4 v1, 0x4

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    const/16 v2, 0x38

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    const/16 v2, 0x3b

    .line 36
    .line 37
    :cond_3
    :goto_0
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 38
    .line 39
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0, v1, v2}, Lcom/narvii/chat/video/view/VoiceCallHelper;->buildRequest(ILjava/lang/String;I)Lcom/narvii/util/http/ApiRequest;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 50
    .line 51
    const-string v1, "api"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1, v1}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 58
    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    sget-object v0, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 65
    :cond_4
    :goto_1
    return-void
.end method

.method public final sendCallNoAnswerMessage(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 4
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/chat/video/view/VoiceCallHelper;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    const/16 v3, 0x34

    .line 20
    .line 21
    if-eq v1, v2, :cond_3

    .line 22
    const/4 v2, 0x3

    .line 23
    .line 24
    if-eq v1, v2, :cond_2

    .line 25
    const/4 v2, 0x4

    .line 26
    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    const/16 v3, 0x37

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_2
    const/16 v3, 0x3a

    .line 34
    .line 35
    :cond_3
    :goto_0
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 36
    .line 37
    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/video/view/VoiceCallHelper;->buildRequest(ILjava/lang/String;I)Lcom/narvii/util/http/ApiRequest;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 48
    .line 49
    const-string v2, "api"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1, v2}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 56
    .line 57
    sget-object v1, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 61
    return-void
.end method

.method public final showAcceptChatInvitationDialog(Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 2
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f12026a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/chat/video/utils/g;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/g;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 26
    .line 27
    .line 28
    const v1, 0x7f1201e2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/chat/video/utils/h;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/video/utils/h;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    .line 37
    .line 38
    .line 39
    const p2, 0x7f120024

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 46
    return-void
.end method

.method public final showChannelComeLiveDialog(ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 1
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f121016

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/chat/video/utils/l;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p3, p1}, Lcom/narvii/chat/video/utils/l;-><init>(Lcom/narvii/util/Callback;Lcom/narvii/widget/ACMAlertDialog;)V

    .line 23
    .line 24
    .line 25
    const p3, 0x7f120d57

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p3, v0}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 29
    .line 30
    new-instance p3, Lcom/narvii/chat/video/utils/n;

    .line 31
    .line 32
    .line 33
    invoke-direct {p3, p1, p2}, Lcom/narvii/chat/video/utils/n;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    .line 34
    .line 35
    .line 36
    const p2, 0x7f1212a7

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 40
    const/4 p2, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 47
    return-void
.end method

.method public final showCloseOrMiniLiveChannelHintDialog(ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;)Lcom/narvii/widget/ACMAlertDialog;
    .locals 2
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/narvii/widget/ACMAlertDialog;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f120f83

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/chat/video/utils/z;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p3}, Lcom/narvii/chat/video/utils/z;-><init>(Lcom/narvii/util/Callback;)V

    .line 33
    .line 34
    .line 35
    const p3, 0x7f120b85

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p3, v0}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 39
    .line 40
    new-instance p3, Lcom/narvii/chat/video/utils/c;

    .line 41
    .line 42
    .line 43
    invoke-direct {p3, p2}, Lcom/narvii/chat/video/utils/c;-><init>(Lcom/narvii/util/Callback;)V

    .line 44
    .line 45
    .line 46
    const p2, 0x7f120ca7

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    const p2, 0x7f0a0c4c

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    new-instance p3, Lcom/narvii/chat/video/utils/d;

    .line 59
    .line 60
    .line 61
    invoke-direct {p3, p1}, Lcom/narvii/chat/video/utils/d;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 68
    return-object p1
.end method

.method public final showLeaveChannelConfirmDialog(Landroid/app/Activity;ZLcom/narvii/util/Callback;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "activity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    .line 15
    const p2, 0x7f121028

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    const p2, 0x7f120f83

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 23
    .line 24
    new-instance p2, Lcom/narvii/chat/video/utils/e;

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, v0}, Lcom/narvii/chat/video/utils/e;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 28
    .line 29
    .line 30
    const v1, 0x7f120d57

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, p2}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 34
    .line 35
    new-instance p2, Lcom/narvii/chat/video/utils/f;

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, p3, v0}, Lcom/narvii/chat/video/utils/f;-><init>(Lcom/narvii/util/Callback;Lcom/narvii/widget/ACMAlertDialog;)V

    .line 39
    .line 40
    .line 41
    const v1, 0x7f1212a7

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    if-eqz p3, :cond_1

    .line 53
    .line 54
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    invoke-interface {p3, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 58
    :cond_1
    return-void

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 62
    return-void
.end method

.method public final showNotEligibleForVVChatDialog(Lcom/narvii/util/Callback;)V
    .locals 2
    .param p1    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f12017d

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/chat/video/utils/t;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v0, p1}, Lcom/narvii/chat/video/utils/t;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    .line 23
    .line 24
    .line 25
    const p1, 0x104000a

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 32
    return-void
.end method

.method public final showPermissionRequestDialog(ILcom/narvii/util/Callback;)V
    .locals 2
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f1207ad

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    const v1, 0x7f1207ac

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    new-instance v0, Lcom/narvii/chat/video/utils/u;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/u;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 39
    .line 40
    .line 41
    const v1, 0x7f1201e2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 45
    .line 46
    new-instance v0, Lcom/narvii/chat/video/utils/v;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/video/utils/v;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    .line 50
    .line 51
    .line 52
    const p2, 0x104000a

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 59
    return-void
.end method

.method public final showPlayListFragment(Lcom/narvii/chat/ChatFragment;Z)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;
    .locals 4
    .param p1    # Lcom/narvii/chat/ChatFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "getChildFragmentManager(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v2, "playlist"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    new-instance v3, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 24
    .line 25
    .line 26
    invoke-direct {v3}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/chat/ChatFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p2, p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->setIsPrePickMode(ZLcom/narvii/model/ChatThread;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    const p2, 0x7f01000c

    .line 41
    .line 42
    .line 43
    const v1, 0x7f01000d

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->y(II)Landroidx/fragment/app/FragmentTransaction;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    const p2, 0x7f0a0c7c

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 58
    .line 59
    :cond_1
    instance-of p1, v3, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    move-object v0, v3

    .line 63
    .line 64
    check-cast v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 65
    :cond_2
    return-object v0
.end method

.method public final showPresenterNotExistedDialog(IILcom/narvii/util/Callback;)Lcom/narvii/util/dialog/AlertDialog;
    .locals 2
    .param p3    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/narvii/util/dialog/AlertDialog;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const p2, 0x7f0d01a6

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 18
    .line 19
    .line 20
    const p2, 0x7f0a04f3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    check-cast p2, Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    const v1, 0x7f120b9b

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    const p2, 0x7f0a07d2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    new-instance v0, Lcom/narvii/chat/video/utils/k;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p1, p3}, Lcom/narvii/chat/video/utils/k;-><init>(Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const/4 p2, 0x0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 65
    return-object p1
.end method

.method public final showPresenterNotExistedToast(I)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const v1, 0x7f120b9b

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 28
    return-void
.end method

.method public final showPrivateCallLimitDialog(ILcom/narvii/util/Callback;)Lcom/narvii/widget/ACMAlertDialog;
    .locals 1
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/narvii/widget/ACMAlertDialog;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f120f50

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/chat/video/utils/i;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/video/utils/i;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    .line 23
    .line 24
    .line 25
    const p2, 0x7f120df2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 32
    return-object p1
.end method

.method public final showPrivateCallRetryDialog(Lcom/narvii/util/Callback;)Lcom/narvii/util/dialog/AlertDialog;
    .locals 3
    .param p1    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/narvii/util/dialog/AlertDialog;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0d01a5

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0a0247

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    new-instance v2, Lcom/narvii/chat/video/utils/o;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, p1, v0}, Lcom/narvii/chat/video/utils/o;-><init>(Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    const v1, 0x7f0a0c38

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    new-instance v2, Lcom/narvii/chat/video/utils/p;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, p1, v0}, Lcom/narvii/chat/video/utils/p;-><init>(Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const/4 p1, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 55
    return-object v0
.end method

.method public final showReputationClaimDialog(Lcom/narvii/app/NVActivity;ILcom/narvii/chat/signalling/SignallingChannel;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const-string v0, "api"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    iget-object p3, p3, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v2, "/chat/thread/"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p3, "/avchat-reputation"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p3

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    new-instance p3, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;

    .line 70
    .line 71
    const-class v1, Lcom/narvii/model/api/ReputationPostResponse;

    .line 72
    .line 73
    .line 74
    invoke-direct {p3, p4, p1, v1}, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;-><init>(Landroid/content/DialogInterface$OnDismissListener;Lcom/narvii/app/NVActivity;Ljava/lang/Class;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p2, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 78
    :cond_1
    :goto_0
    return-void
.end method

.method public final showStrangerHintDialog(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 1
    .param p2    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    iget p2, p2, Lcom/narvii/model/ChatThread;->type:I

    .line 5
    const/4 v0, 0x2

    .line 6
    .line 7
    if-eq p2, v0, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    invoke-interface {p3, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 15
    :cond_0
    return-void

    .line 16
    .line 17
    :cond_1
    new-instance p2, Lcom/narvii/widget/ACMAlertDialog;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    const v0, 0x7f12115c

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 33
    .line 34
    .line 35
    const v0, 0x7f12115b

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 39
    const/4 v0, 0x1

    .line 40
    .line 41
    if-eq p1, v0, :cond_2

    .line 42
    .line 43
    .line 44
    const p1, 0x7f121273

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_2
    const p1, 0x7f120b99

    .line 49
    .line 50
    :goto_0
    new-instance v0, Lcom/narvii/chat/video/utils/m;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p2}, Lcom/narvii/chat/video/utils/m;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 57
    .line 58
    new-instance p1, Lcom/narvii/chat/video/utils/s;

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p2, p3}, Lcom/narvii/chat/video/utils/s;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    .line 62
    .line 63
    .line 64
    const p3, 0x7f120334

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p3, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 71
    return-void
.end method

.method public final showSwitchChannelDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 2
    .param p1    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "rtc"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    const v1, 0x7f12118d

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/chat/video/utils/q;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v0, p2}, Lcom/narvii/chat/video/utils/q;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    .line 40
    .line 41
    .line 42
    const p2, 0x7f120d57

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 46
    .line 47
    new-instance p2, Lcom/narvii/chat/video/utils/r;

    .line 48
    .line 49
    .line 50
    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/video/utils/r;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V

    .line 51
    .line 52
    .line 53
    const p1, 0x7f1212a7

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 57
    const/4 p1, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 64
    return-void
.end method

.method public final supportLiveChannelInCurCommunity()Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isVoiceChatEnable()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isVideoChatEnable()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAvatarChatEnable()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isScreenRoomEnable()Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAudio2ChatEnable()Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0
.end method
