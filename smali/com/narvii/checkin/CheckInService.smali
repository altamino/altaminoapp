.class public final Lcom/narvii/checkin/CheckInService;
.super Ljava/lang/Object;
.source "CheckInService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/checkin/CheckInService$CheckInResponseListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckInService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckInService.kt\ncom/narvii/checkin/CheckInService\n*L\n1#1,219:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final account$delegate:Lkotlin/Lazy;

.field private activity:Landroid/app/Activity;

.field private final api$delegate:Lkotlin/Lazy;

.field private checkInPopUpDone:Z

.field private final communityConfigHelper$delegate:Lkotlin/Lazy;

.field private final config$delegate:Lkotlin/Lazy;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private dontUpdateRanking:Z

.field private final eventDispatchers$delegate:Lkotlin/Lazy;

.field private isCheckingIn:Z

.field private listener:Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

.field private lotteryDialog:Lcom/narvii/checkin/lottery/LotteryDialog;

.field private streakRepairDialogShowing:Z

.field private willPlayLottery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/checkin/CheckInService;

    const/4 v1, 0x6

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "api"

    const-string v5, "getApi()Lcom/narvii/util/http/ApiService;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "account"

    const-string v5, "getAccount()Lcom/narvii/account/AccountService;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "config"

    const-string v5, "getConfig()Lcom/narvii/config/ConfigService;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "communityConfigHelper"

    const-string v5, "getCommunityConfigHelper()Lcom/narvii/modulization/CommunityConfigHelper;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "eventDispatchers"

    const-string v4, "getEventDispatchers()Lcom/narvii/util/EventDispatcher;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/checkin/CheckInService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->ctx:Lcom/narvii/app/NVContext;

    .line 28
    new-instance p1, Lcom/narvii/checkin/CheckInService$api$2;

    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInService$api$2;-><init>(Lcom/narvii/checkin/CheckInService;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->api$delegate:Lkotlin/Lazy;

    .line 30
    new-instance p1, Lcom/narvii/checkin/CheckInService$account$2;

    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInService$account$2;-><init>(Lcom/narvii/checkin/CheckInService;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->account$delegate:Lkotlin/Lazy;

    .line 31
    new-instance p1, Lcom/narvii/checkin/CheckInService$config$2;

    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInService$config$2;-><init>(Lcom/narvii/checkin/CheckInService;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->config$delegate:Lkotlin/Lazy;

    .line 32
    new-instance p1, Lcom/narvii/checkin/CheckInService$communityConfigHelper$2;

    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInService$communityConfigHelper$2;-><init>(Lcom/narvii/checkin/CheckInService;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->communityConfigHelper$delegate:Lkotlin/Lazy;

    .line 33
    sget-object p1, Lcom/narvii/checkin/CheckInService$eventDispatchers$2;->INSTANCE:Lcom/narvii/checkin/CheckInService$eventDispatchers$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->eventDispatchers$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final bind(Landroid/app/Activity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->activity:Landroid/app/Activity;

    return-void
.end method

.method public final getAccount()Lcom/narvii/account/AccountService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->account$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/checkin/CheckInService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getApi()Lcom/narvii/util/http/ApiService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->api$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/checkin/CheckInService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getCheckInPopUpDone()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->checkInPopUpDone:Z

    return v0
.end method

.method public final getCommunityConfigHelper()Lcom/narvii/modulization/CommunityConfigHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->communityConfigHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/checkin/CheckInService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/modulization/CommunityConfigHelper;

    return-object v0
.end method

.method public final getConfig()Lcom/narvii/config/ConfigService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->config$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/checkin/CheckInService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getDontUpdateRanking()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->dontUpdateRanking:Z

    return v0
.end method

.method public final getEventDispatchers()Lcom/narvii/util/EventDispatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/checkin/CheckInService$CheckInResponseListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->eventDispatchers$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/checkin/CheckInService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    return-object v0
.end method

.method public final getListener()Lcom/narvii/checkin/CheckInService$CheckInResponseListener;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->listener:Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

    return-object v0
.end method

.method public final getLotteryDialog()Lcom/narvii/checkin/lottery/LotteryDialog;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->lotteryDialog:Lcom/narvii/checkin/lottery/LotteryDialog;

    return-object v0
.end method

.method public final getStreakRepairDialogShowing()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->streakRepairDialogShowing:Z

    return v0
.end method

.method public final getWillPlayLottery()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->willPlayLottery:Z

    return v0
.end method

.method public final isCheckingIn()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->isCheckingIn:Z

    return v0
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->activity:Landroid/app/Activity;

    return-void
.end method

.method public final setCheckInPopUpDone(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->checkInPopUpDone:Z

    return-void
.end method

.method public final setCheckingIn(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->isCheckingIn:Z

    return-void
.end method

.method public final setDontUpdateRanking(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->dontUpdateRanking:Z

    return-void
.end method

.method public final setListener(Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->listener:Lcom/narvii/checkin/CheckInService$CheckInResponseListener;

    return-void
.end method

.method public final setLotteryDialog(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/checkin/CheckInService;->lotteryDialog:Lcom/narvii/checkin/lottery/LotteryDialog;

    return-void
.end method

.method public final setStreakRepairDialogShowing(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->streakRepairDialogShowing:Z

    return-void
.end method

.method public final setWillPlayLottery(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->willPlayLottery:Z

    return-void
.end method

.method public final showLotteryPrompt()V
    .locals 5

    .line 154
    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->streakRepairDialogShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/narvii/checkin/CheckInService;->willPlayLottery:Z

    .line 159
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService;->getConfig()Lcom/narvii/config/ConfigService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/narvii/checkin/CheckInService;->activity:Landroid/app/Activity;

    if-nez v1, :cond_2

    .line 162
    iget-object v2, p0, Lcom/narvii/checkin/CheckInService;->ctx:Lcom/narvii/app/NVContext;

    const-string/jumbo v3, "topActivity"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/services/TopActivityService;

    if-eqz v2, :cond_2

    .line 164
    invoke-virtual {v2}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    move-result-object v2

    .line 165
    instance-of v3, v2, Lcom/narvii/app/NVActivity;

    if-eqz v3, :cond_2

    .line 166
    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    move-object v3, v2

    check-cast v3, Lcom/narvii/app/NVActivity;

    const-string v4, "config"

    invoke-virtual {v3, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "a.getService<ConfigService>(\"config\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/narvii/config/ConfigService;

    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_0
    move-object v1, v2

    .line 174
    :cond_2
    nop

    instance-of v2, v1, Lcom/narvii/app/NVActivity;

    if-eqz v2, :cond_5

    .line 175
    move-object v2, v1

    check-cast v2, Lcom/narvii/app/NVActivity;

    invoke-virtual {v2}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 179
    :cond_3
    :try_start_0
    new-instance v2, Lcom/narvii/checkin/lottery/LotteryDialog;

    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-direct {v2, v1, v0}, Lcom/narvii/checkin/lottery/LotteryDialog;-><init>(Lcom/narvii/app/NVActivity;I)V

    iput-object v2, p0, Lcom/narvii/checkin/CheckInService;->lotteryDialog:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 180
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->lotteryDialog:Lcom/narvii/checkin/lottery/LotteryDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/checkin/lottery/LotteryDialog;->show()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "lucky draw"

    .line 182
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final showStreakRepairDialog()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/narvii/checkin/CheckInService;->activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/narvii/app/NVContext;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 189
    iput-boolean v1, p0, Lcom/narvii/checkin/CheckInService;->streakRepairDialogShowing:Z

    .line 190
    new-instance v1, Lcom/narvii/checkin/CheckInHelper;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/app/NVContext;

    invoke-direct {v1, v0}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Left Side Panel"

    .line 191
    iput-object v0, v1, Lcom/narvii/checkin/CheckInHelper;->source:Ljava/lang/String;

    .line 192
    new-instance v0, Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1;-><init>(Lcom/narvii/checkin/CheckInService;)V

    invoke-virtual {v1, v0}, Lcom/narvii/checkin/CheckInHelper;->startStreakRepairDialog(Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 190
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.app.NVContext"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final startCheckIn(Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V
    .locals 5

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService;->getEventDispatchers()Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 65
    iget-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->isCheckingIn:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInService;->isCheckingIn:Z

    .line 69
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "check-in"

    .line 70
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 71
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "timezone"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 72
    sget-object v0, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 76
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInService;->getApi()Lcom/narvii/util/http/ApiService;

    move-result-object v2

    new-instance v3, Lcom/narvii/checkin/CheckInService$startCheckIn$1;

    const-class v4, Lcom/narvii/checkin/CheckInResult;

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/narvii/checkin/CheckInService$startCheckIn$1;-><init>(Lcom/narvii/checkin/CheckInService;JLjava/lang/Class;)V

    invoke-virtual {v2, p1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 147
    :try_start_0
    iget-object p1, p0, Lcom/narvii/checkin/CheckInService;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v0, 0x50

    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 147
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final unbind()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/narvii/checkin/CheckInService;->activity:Landroid/app/Activity;

    return-void
.end method
