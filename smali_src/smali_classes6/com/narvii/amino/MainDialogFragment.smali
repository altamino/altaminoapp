.class public Lcom/narvii/amino/MainDialogFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


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

.field disabled:Z

.field public globalNoticePromptHelper:Lcom/narvii/prompt/GlobalNoticePromptHelper;

.field private isResumed:Z

.field lastLoopFinishTime:J

.field private loopFinished:Z

.field onBoardingCheckDone:Z

.field onBoardingDoneListener:Lcom/narvii/amino/MainDialogFragment$OnBoardingDoneListener;

.field public onBoardingPromptHelper:Lcom/narvii/prompt/OnBoardingPromptHelper;

.field private onBoardingPromptShowListener:Lcom/narvii/amino/PromptShowListener;

.field public optinAdsPromptHelper:Lcom/narvii/prompt/OptinAdsPromptHelper;

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashSet;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->shownPrompts:Ljava/util/HashSet;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/amino/MainDialogFragment$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/amino/MainDialogFragment$1;-><init>(Lcom/narvii/amino/MainDialogFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0, v1}, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;-><init>(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/amino/i;)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/amino/MainDialogFragment$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/amino/MainDialogFragment$2;-><init>(Lcom/narvii/amino/MainDialogFragment;)V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->onBoardingPromptShowListener:Lcom/narvii/amino/PromptShowListener;

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/amino/MainDialogFragment$3;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/narvii/amino/MainDialogFragment$3;-><init>(Lcom/narvii/amino/MainDialogFragment;)V

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->checkpoint:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method private isDrawerOpen()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/DrawerActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->isDrawerOpen()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method static bridge synthetic n(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/AccountNoticePromptHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/MainDialogFragment;->accountNoticePromptHelper:Lcom/narvii/prompt/AccountNoticePromptHelper;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/AnnouncementPromptHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/MainDialogFragment;->announcementPromptHelper:Lcom/narvii/prompt/AnnouncementPromptHelper;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/BottomDrawerPromptHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/MainDialogFragment;->bottomDrawerPromptHelper:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/amino/MainDialogFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/MainDialogFragment;->checkpoint:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/amino/MainDialogFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/amino/MainDialogFragment;->isResumed:Z

    return p0
.end method

.method static bridge synthetic s(Lcom/narvii/amino/MainDialogFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/amino/MainDialogFragment;->loopFinished:Z

    return p0
.end method

.method static bridge synthetic t(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/MainDialogFragment;->onBoardingPromptShowListener:Lcom/narvii/amino/PromptShowListener;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/MainDialogFragment;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/prompt/AccountNoticePromptHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->accountNoticePromptHelper:Lcom/narvii/prompt/AccountNoticePromptHelper;

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/prompt/AnnouncementPromptHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->announcementPromptHelper:Lcom/narvii/prompt/AnnouncementPromptHelper;

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/prompt/BottomDrawerPromptHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->bottomDrawerPromptHelper:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/amino/MainDialogFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/amino/MainDialogFragment;->loopFinished:Z

    return-void
.end method


# virtual methods
.method public isOnBoardingCheckDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/amino/MainDialogFragment;->onBoardingCheckDone:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/achievements/ReputationGainedHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/achievements/ReputationGainedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 20
    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    .line 22
    .line 23
    const-string v1, "com.narvii.action.GOOGLE_PLAY_PUBLISH_CHANGED"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 30
    .line 31
    const-string p1, "community"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 40
    .line 41
    const-string p1, "config"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 9
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->bottomDrawerPromptHelper:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/prompt/BottomDrawerPromptHelper;->onActiveChanged(Z)V

    .line 12
    .line 13
    :cond_0
    iput-boolean v1, p0, Lcom/narvii/amino/MainDialogFragment;->isResumed:Z

    .line 14
    .line 15
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment;->checkpoint:Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/amino/MainDialogFragment;->isResumed:Z

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/narvii/amino/MainDialogFragment;->loopFinished:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/narvii/amino/MainDialogFragment;->blocking:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    iget-wide v3, p0, Lcom/narvii/amino/MainDialogFragment;->lastLoopFinishTime:J

    .line 21
    sub-long/2addr v1, v3

    .line 22
    .line 23
    .line 24
    const-wide/32 v3, 0x493e0

    .line 25
    .line 26
    cmp-long v1, v1, v3

    .line 27
    .line 28
    if-lez v1, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/narvii/amino/MainDialogFragment;->loopFinished:Z

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment;->shownPrompts:Ljava/util/HashSet;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    iput-object v1, p0, Lcom/narvii/amino/MainDialogFragment;->announcementPromptHelper:Lcom/narvii/prompt/AnnouncementPromptHelper;

    .line 40
    .line 41
    :cond_0
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/amino/MainDialogFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 47
    move-result v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment;->bottomDrawerPromptHelper:Lcom/narvii/prompt/BottomDrawerPromptHelper;

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/narvii/prompt/BottomDrawerPromptHelper;->onActiveChanged(Z)V

    .line 58
    .line 59
    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment;->checkpoint:Ljava/lang/Runnable;

    .line 60
    .line 61
    const-wide/16 v1, 0x7d0

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 65
    return-void
.end method

.method public setDisabled(Z)V
    .locals 2

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/amino/MainDialogFragment;->disabled:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/narvii/amino/MainDialogFragment;->isResumed:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->checkpoint:Ljava/lang/Runnable;

    .line 11
    .line 12
    const-wide/16 v0, 0x3e8

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 16
    :cond_0
    return-void
.end method

.method public setOnBoardingDoneListener(Lcom/narvii/amino/MainDialogFragment$OnBoardingDoneListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment;->onBoardingDoneListener:Lcom/narvii/amino/MainDialogFragment$OnBoardingDoneListener;

    return-void
.end method
