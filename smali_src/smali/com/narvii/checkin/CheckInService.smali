.class public final Lcom/narvii/checkin/CheckInService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/checkin/CheckInService$CheckInResponseListener;
    }
.end annotation


# instance fields
.field private final account$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final ads$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final api$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private checkInPopUpDone:Z

.field private final communityConfigHelper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final config$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dontUpdateRanking:Z

.field private final eventDispatchers$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isCheckingIn:Z

.field private listener:Lcom/narvii/checkin/CheckInService$CheckInResponseListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lotteryDialog:Lcom/narvii/checkin/lottery/LotteryDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private streakRepairDialogShowing:Z

.field private willPlayLottery:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

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
    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/checkin/CheckInService$api$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInService$api$2;-><init>(Lcom/narvii/checkin/CheckInService;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->api$delegate:Lw7/m;

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/checkin/CheckInService$ads$2;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInService$ads$2;-><init>(Lcom/narvii/checkin/CheckInService;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->ads$delegate:Lw7/m;

    .line 33
    .line 34
    new-instance p1, Lcom/narvii/checkin/CheckInService$account$2;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInService$account$2;-><init>(Lcom/narvii/checkin/CheckInService;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->account$delegate:Lw7/m;

    .line 44
    .line 45
    new-instance p1, Lcom/narvii/checkin/CheckInService$config$2;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInService$config$2;-><init>(Lcom/narvii/checkin/CheckInService;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->config$delegate:Lw7/m;

    .line 55
    .line 56
    new-instance p1, Lcom/narvii/checkin/CheckInService$communityConfigHelper$2;

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInService$communityConfigHelper$2;-><init>(Lcom/narvii/checkin/CheckInService;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->communityConfigHelper$delegate:Lw7/m;

    .line 66
    .line 67
    sget-object p1, Lcom/narvii/checkin/CheckInService$eventDispatchers$2;->INSTANCE:Lcom/narvii/checkin/CheckInService$eventDispatchers$2;

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->eventDispatchers$delegate:Lw7/m;

    .line 74
    return-void
.end method

.method public static synthetic a(Lcom/narvii/checkin/CheckInService;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/checkin/CheckInService;->showStreakRepairDialog$lambda$3$lambda$1$lambda$0(Lcom/narvii/checkin/CheckInService;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/checkin/CheckInService;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/checkin/CheckInService;->showStreakRepairDialog$lambda$3$lambda$2(Lcom/narvii/checkin/CheckInService;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/checkin/CheckInService;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/checkin/CheckInService;->showStreakRepairDialog$lambda$3$lambda$1(Lcom/narvii/checkin/CheckInService;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/checkin/CheckInService;Lcom/narvii/achievements/StreakRepairDialog;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/checkin/CheckInService;->showStreakRepairDialog$lambda$3(Lcom/narvii/checkin/CheckInService;Lcom/narvii/achievements/StreakRepairDialog;)V

    return-void
.end method

.method private static final showStreakRepairDialog$lambda$3(Lcom/narvii/checkin/CheckInService;Lcom/narvii/achievements/StreakRepairDialog;)V
    .locals 2

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/checkin/c;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/narvii/checkin/c;-><init>(Lcom/narvii/checkin/CheckInService;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->streakRepairDialogShowing:Z

    .line 20
    .line 21
    new-instance p1, Lcom/narvii/checkin/d;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/narvii/checkin/d;-><init>(Lcom/narvii/checkin/CheckInService;)V

    .line 25
    .line 26
    const-wide/16 v0, 0x1f4

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 30
    :goto_0
    return-void
.end method

.method private static final showStreakRepairDialog$lambda$3$lambda$1(Lcom/narvii/checkin/CheckInService;Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->streakRepairDialogShowing:Z

    .line 9
    .line 10
    new-instance p1, Lcom/narvii/checkin/e;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/narvii/checkin/e;-><init>(Lcom/narvii/checkin/CheckInService;)V

    .line 14
    .line 15
    const-wide/16 v0, 0x1f4

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 19
    return-void
.end method

.method private static final showStreakRepairDialog$lambda$3$lambda$1$lambda$0(Lcom/narvii/checkin/CheckInService;)V
    .locals 1

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->willPlayLottery:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService;->showLotteryPrompt()V

    .line 13
    :cond_0
    return-void
.end method

.method private static final showStreakRepairDialog$lambda$3$lambda$2(Lcom/narvii/checkin/CheckInService;)V
    .locals 1

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->willPlayLottery:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService;->showLotteryPrompt()V

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public final bind(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->activity:Landroid/app/Activity;

    return-void
.end method

.method public final getAccount()Lcom/narvii/account/AccountService;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->account$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    return-object v0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getAds()Lcom/narvii/wallet/AdsService;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->ads$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/wallet/AdsService;

    .line 9
    return-object v0
.end method

.method public final getApi()Lcom/narvii/util/http/ApiService;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->api$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    return-object v0
.end method

.method public final getCheckInPopUpDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->checkInPopUpDone:Z

    return v0
.end method

.method public final getCommunityConfigHelper()Lcom/narvii/modulization/CommunityConfigHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->communityConfigHelper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 9
    return-object v0
.end method

.method public final getConfig()Lcom/narvii/config/ConfigService;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->config$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getDontUpdateRanking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->dontUpdateRanking:Z

    return v0
.end method

.method public final getEventDispatchers()Lcom/narvii/util/EventDispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/checkin/CheckInService$CheckInResponseListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->eventDispatchers$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 9
    return-object v0
.end method

.method public final getListener()Lcom/narvii/checkin/CheckInService$CheckInResponseListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->listener:Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

    return-object v0
.end method

.method public final getLotteryDialog()Lcom/narvii/checkin/lottery/LotteryDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->lotteryDialog:Lcom/narvii/checkin/lottery/LotteryDialog;

    return-object v0
.end method

.method public final getStreakRepairDialogShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->streakRepairDialogShowing:Z

    return v0
.end method

.method public final getWillPlayLottery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->willPlayLottery:Z

    return v0
.end method

.method public final isCheckingIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->isCheckingIn:Z

    return v0
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->activity:Landroid/app/Activity;

    return-void
.end method

.method public final setCheckInPopUpDone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->checkInPopUpDone:Z

    return-void
.end method

.method public final setCheckingIn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->isCheckingIn:Z

    return-void
.end method

.method public final setDontUpdateRanking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->dontUpdateRanking:Z

    return-void
.end method

.method public final setListener(Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V
    .locals 0
    .param p1    # Lcom/narvii/checkin/CheckInService$CheckInResponseListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->listener:Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

    return-void
.end method

.method public final setLotteryDialog(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0
    .param p1    # Lcom/narvii/checkin/lottery/LotteryDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->lotteryDialog:Lcom/narvii/checkin/lottery/LotteryDialog;

    return-void
.end method

.method public final setStreakRepairDialogShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->streakRepairDialogShowing:Z

    return-void
.end method

.method public final setWillPlayLottery(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->willPlayLottery:Z

    return-void
.end method

.method public final showLotteryPrompt()V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->streakRepairDialogShowing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->willPlayLottery:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService;->getConfig()Lcom/narvii/config/ConfigService;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 16
    move-result v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/checkin/CheckInService;->activity:Landroid/app/Activity;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/checkin/CheckInService;->ctx:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    const-string/jumbo v3, "topActivity"

    .line 25
    .line 26
    .line 27
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Lcom/narvii/util/services/TopActivityService;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    instance-of v3, v2, Lcom/narvii/app/NVActivity;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    move-object v3, v2

    .line 42
    .line 43
    check-cast v3, Lcom/narvii/app/NVActivity;

    .line 44
    .line 45
    const-string v4, "config"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 55
    move-result v3

    .line 56
    .line 57
    if-ne v3, v0, :cond_1

    .line 58
    move-object v1, v2

    .line 59
    :cond_1
    nop

    .line 60
    .line 61
    instance-of v2, v1, Lcom/narvii/app/NVActivity;

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    move-object v2, v1

    .line 65
    .line 66
    check-cast v2, Lcom/narvii/app/NVActivity;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 70
    move-result v2

    .line 71
    .line 72
    if-eqz v2, :cond_2

    .line 73
    return-void

    .line 74
    .line 75
    :cond_2
    :try_start_0
    new-instance v2, Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 76
    .line 77
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, v1, v0}, Lcom/narvii/checkin/lottery/LotteryDialog;-><init>(Lcom/narvii/app/NVActivity;I)V

    .line 81
    .line 82
    iput-object v2, p0, Lcom/narvii/checkin/CheckInService;->lotteryDialog:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 83
    .line 84
    .line 85
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/narvii/checkin/lottery/LotteryDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .line 92
    const-string v1, "lucky draw"

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    :cond_3
    :goto_0
    return-void
.end method

.method public final showStreakRepairDialog()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->activity:Landroid/app/Activity;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/narvii/checkin/CheckInService;->streakRepairDialogShowing:Z

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/checkin/CheckInHelper;

    .line 12
    .line 13
    const-string v2, "null cannot be cast to non-null type com.narvii.app.NVContext"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v0}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    .line 23
    const-string v0, "Left Side Panel"

    .line 24
    .line 25
    iput-object v0, v1, Lcom/narvii/checkin/CheckInHelper;->source:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/checkin/b;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/checkin/b;-><init>(Lcom/narvii/checkin/CheckInService;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/narvii/checkin/CheckInHelper;->startStreakRepairDialog(Lcom/narvii/util/Callback;)V

    .line 34
    :cond_0
    return-void
.end method

.method public final startCheckIn(Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V
    .locals 5
    .param p1    # Lcom/narvii/checkin/CheckInService$CheckInResponseListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService;->getEventDispatchers()Lcom/narvii/util/EventDispatcher;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->isCheckingIn:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->isCheckingIn:Z

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string v0, "check-in"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 38
    move-result v0

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    const-string/jumbo v1, "timezone"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    sget-object v0, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    move-result-wide v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService;->getApi()Lcom/narvii/util/http/ApiService;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    new-instance v3, Lcom/narvii/checkin/CheckInService$startCheckIn$1;

    .line 69
    .line 70
    const-class v4, Lcom/narvii/checkin/CheckInResult;

    .line 71
    .line 72
    .line 73
    invoke-direct {v3, v0, v1, p0, v4}, Lcom/narvii/checkin/CheckInService$startCheckIn$1;-><init>(JLcom/narvii/checkin/CheckInService;Ljava/lang/Class;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 77
    .line 78
    :try_start_0
    iget-object p1, p0, Lcom/narvii/checkin/CheckInService;->ctx:Lcom/narvii/app/NVContext;

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    const-string/jumbo v0, "vibrator"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    const-string v0, "null cannot be cast to non-null type android.os.Vibrator"

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    check-cast p1, Landroid/os/Vibrator;

    .line 96
    .line 97
    const-wide/16 v0, 0x50

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :catch_0
    return-void
.end method

.method public final unbind()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/checkin/CheckInService;->activity:Landroid/app/Activity;

    return-void
.end method
