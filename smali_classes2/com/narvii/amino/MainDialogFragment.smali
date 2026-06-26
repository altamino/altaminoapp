.class public Lcom/narvii/amino/MainDialogFragment;
.super Lcom/narvii/app/NVFragment;
.source "MainDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;,
        Lcom/narvii/amino/MainDialogFragment$OnBoardingDoneListener;
    }
.end annotation


# static fields
.field public static final ANNOUNCEMENT:I = 0x1000

.field public static final COMMUNITY_PROBATION:I = 0x4

.field public static final COMMUNITY_TAG_PROMPT:I = 0x40

.field public static final DEPRECATED_COMMUNITY:I = 0x2000

.field public static final GLOBAL_NOTICE:I = 0x400

.field public static final IMPORTANT_NOTICE:I = 0x2

.field public static final LOOP_EXPIRE_INTERVAL:J = 0x493e0L

.field public static final MEMBERSHIP_FREE_TRIAL:I = 0x800

.field public static final OPTIN_ADS:I = 0x4000

.field public static final RATE:I = 0x200

.field public static final RECOMMEND:I = 0x8

.field public static final RECOMMEND_KEYWORD:I = 0x80

.field public static final REPUTATION_GAINED:I = 0x10

.field public static final SUGGESTED_COMMUNITY:I = 0x100

.field public static final UPGRADE:I = 0x1

.field public static final WELCOME_MESSAGE:I = 0x20


# instance fields
.field private accountNoticePromptHelper:Lcom/narvii/prompt/AccountNoticePromptHelper;

.field private announcementPromptHelper:Lcom/narvii/prompt/AnnouncementPromptHelper;

.field blocking:Z

.field private bottomDrawerPromptHelper:Lcom/narvii/prompt/BottomDrawerPromptHelper;

.field private final checkpoint:Ljava/lang/Runnable;

.field public communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private communityService:Lcom/narvii/community/CommunityService;

.field private configService:Lcom/narvii/config/ConfigService;

.field private deprecatedStandalonePromptHelper:Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;

.field disabled:Z

.field public globalNoticePromptHelper:Lcom/narvii/prompt/GlobalNoticePromptHelper;

.field private isResumed:Z

.field lastLoopFinishTime:J

.field private loopFinished:Z

.field private membershipTrialPromptHelper:Lcom/narvii/prompt/MembershipTrialPromptHelper;

.field onBoardingCheckDone:Z

.field onBoardingDoneListener:Lcom/narvii/amino/MainDialogFragment$OnBoardingDoneListener;

.field public onBoardingPromptHelper:Lcom/narvii/prompt/OnBoardingPromptHelper;

.field private onBoardingPromptShowListener:Lcom/narvii/amino/PromptShowListener;

.field public optinAdsPromptHelper:Lcom/narvii/prompt/OptinAdsPromptHelper;

.field private privateCommunityCheckHelper:Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

.field public probationPromptHelper:Lcom/narvii/prompt/ProbationPromptHelper;

.field private promptShowListener:Lcom/narvii/amino/PromptShowListener;

.field public ratePromptHelper:Lcom/narvii/prompt/RatePromptHelper;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;

.field public reputationPromptHelper:Lcom/narvii/prompt/ReputationPromptHelper;

.field shownPrompts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public upgradePromptHelper:Lcom/narvii/prompt/UpgradePromptHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->shownPrompts:Ljava/util/HashSet;

    .line 74
    new-instance v0, Lcom/narvii/amino/MainDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/amino/MainDialogFragment$1;-><init>(Lcom/narvii/amino/MainDialogFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;-><init>(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/amino/MainDialogFragment$1;)V

    iput-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    .line 143
    new-instance v0, Lcom/narvii/amino/MainDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/amino/MainDialogFragment$2;-><init>(Lcom/narvii/amino/MainDialogFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->onBoardingPromptShowListener:Lcom/narvii/amino/PromptShowListener;

    .line 182
    new-instance v0, Lcom/narvii/amino/MainDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/amino/MainDialogFragment$3;-><init>(Lcom/narvii/amino/MainDialogFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->checkpoint:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/amino/MainDialogFragment;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/narvii/amino/MainDialogFragment;->isResumed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/amino/MainDialogFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/amino/MainDialogFragment;->checkpoint:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/BottomDrawerPromptHelper;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/amino/MainDialogFragment;->bottomDrawerPromptHelper:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/prompt/BottomDrawerPromptHelper;)Lcom/narvii/prompt/BottomDrawerPromptHelper;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->bottomDrawerPromptHelper:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/amino/MainDialogFragment;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/narvii/amino/MainDialogFragment;->loopFinished:Z

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/amino/MainDialogFragment;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/narvii/amino/MainDialogFragment;->loopFinished:Z

    return p1
.end method

.method static synthetic access$400(Lcom/narvii/amino/MainDialogFragment;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/amino/MainDialogFragment;->shouldCheckDeprecatedStandalone()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/amino/MainDialogFragment;->deprecatedStandalonePromptHelper:Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;

    return-object p0
.end method

.method static synthetic access$502(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;)Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->deprecatedStandalonePromptHelper:Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;

    return-object p1
.end method

.method static synthetic access$600(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/amino/MainDialogFragment;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/amino/MainDialogFragment;->onBoardingPromptShowListener:Lcom/narvii/amino/PromptShowListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/AccountNoticePromptHelper;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/amino/MainDialogFragment;->accountNoticePromptHelper:Lcom/narvii/prompt/AccountNoticePromptHelper;

    return-object p0
.end method

.method static synthetic access$802(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/prompt/AccountNoticePromptHelper;)Lcom/narvii/prompt/AccountNoticePromptHelper;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->accountNoticePromptHelper:Lcom/narvii/prompt/AccountNoticePromptHelper;

    return-object p1
.end method

.method static synthetic access$900(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/AnnouncementPromptHelper;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/amino/MainDialogFragment;->announcementPromptHelper:Lcom/narvii/prompt/AnnouncementPromptHelper;

    return-object p0
.end method

.method static synthetic access$902(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/prompt/AnnouncementPromptHelper;)Lcom/narvii/prompt/AnnouncementPromptHelper;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->announcementPromptHelper:Lcom/narvii/prompt/AnnouncementPromptHelper;

    return-object p1
.end method

.method private isDrawerOpen()Z
    .locals 1

    .line 172
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/DrawerActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldCheckDeprecatedStandalone()Z
    .locals 1

    const-string v0, "flag"

    .line 343
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isOnBoardingCheckDone()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/narvii/amino/MainDialogFragment;->onBoardingCheckDone:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 295
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 296
    new-instance p1, Lcom/narvii/achievements/ReputationGainedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/achievements/ReputationGainedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;

    .line 297
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 298
    iget-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.GOOGLE_PLAY_PUBLISH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 299
    new-instance p1, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    invoke-direct {p1, p0}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->privateCommunityCheckHelper:Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    const-string p1, "community"

    .line 300
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->communityService:Lcom/narvii/community/CommunityService;

    const-string p1, "config"

    .line 301
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->configService:Lcom/narvii/config/ConfigService;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 351
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 334
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 335
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->bottomDrawerPromptHelper:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0, v1}, Lcom/narvii/prompt/BottomDrawerPromptHelper;->onActiveChanged(Z)V

    .line 338
    :cond_0
    iput-boolean v1, p0, Lcom/narvii/amino/MainDialogFragment;->isResumed:Z

    .line 339
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment;->checkpoint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 306
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/narvii/amino/MainDialogFragment;->isResumed:Z

    .line 309
    iget-boolean v1, p0, Lcom/narvii/amino/MainDialogFragment;->loopFinished:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/narvii/amino/MainDialogFragment;->blocking:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/narvii/amino/MainDialogFragment;->lastLoopFinishTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v1, 0x0

    .line 310
    iput-boolean v1, p0, Lcom/narvii/amino/MainDialogFragment;->loopFinished:Z

    .line 311
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment;->shownPrompts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const/4 v1, 0x0

    .line 312
    iput-object v1, p0, Lcom/narvii/amino/MainDialogFragment;->announcementPromptHelper:Lcom/narvii/prompt/AnnouncementPromptHelper;

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment;->communityService:Lcom/narvii/community/CommunityService;

    iget-object v2, p0, Lcom/narvii/amino/MainDialogFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    .line 316
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/narvii/amino/MainDialogFragment;->privateCommunityCheckHelper:Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    .line 317
    invoke-virtual {v2}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->isCurrentUserJoined()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/narvii/model/Community;->joinType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_2

    .line 321
    :cond_1
    const-class v1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "blockPrivateCommunity"

    .line 322
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment;->bottomDrawerPromptHelper:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    if-eqz v1, :cond_3

    .line 327
    invoke-virtual {v1, v0}, Lcom/narvii/prompt/BottomDrawerPromptHelper;->onActiveChanged(Z)V

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->checkpoint:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 2

    .line 176
    iput-boolean p1, p0, Lcom/narvii/amino/MainDialogFragment;->disabled:Z

    if-nez p1, :cond_0

    .line 177
    iget-boolean p1, p0, Lcom/narvii/amino/MainDialogFragment;->isResumed:Z

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->checkpoint:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setOnBoardingDoneListener(Lcom/narvii/amino/MainDialogFragment$OnBoardingDoneListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->onBoardingDoneListener:Lcom/narvii/amino/MainDialogFragment$OnBoardingDoneListener;

    return-void
.end method
