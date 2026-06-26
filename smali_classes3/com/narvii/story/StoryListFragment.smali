.class public Lcom/narvii/story/StoryListFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "StoryListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/nvplayer/IVideoListener;
.implements Lcom/narvii/nvplayerview/ISurfaceListener;
.implements Lcom/narvii/nvplayer/WindowIndexChangeListener;
.implements Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;
.implements Lcom/narvii/setting/VideoAutoPlayChangeListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/story/IStoryBottomSheetListener;
.implements Lcom/narvii/scene/ScenePlayListener;
.implements Lcom/narvii/story/swipe/IStorySwipeListener;
.implements Lcom/narvii/story/IStoryLongClickListener;
.implements Lcom/narvii/widgets/IStoryPollQuizPlayListener;
.implements Lcom/narvii/story/IStoryShareListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;,
        Lcom/narvii/story/StoryListFragment$Adapter;,
        Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;,
        Lcom/narvii/story/StoryListFragment$IntentBuilder;
    }
.end annotation


# static fields
.field public static ACTIVITY_VISIBLE_HINT_EXCLUSIVE:Ljava/lang/String; = "activityVisibleHintExclusive"

.field public static final HORIZONTAL:I = 0x1

.field public static KEY_AUTO_LOAD_NEXT_PAGE:Ljava/lang/String; = "auto_load"

.field public static KEY_BACK_DIRECTLY:Ljava/lang/String; = "backDirectly"

.field public static KEY_FEED:Ljava/lang/String; = "init_feed"

.field public static KEY_FEED_COMMUNITY:Ljava/lang/String; = "init_feed_community"

.field public static KEY_FEED_ID:Ljava/lang/String; = "id"

.field public static KEY_FEED_USER:Ljava/lang/String; = "init_feed_user"

.field public static KEY_FORCE_VIDEO_AUTO_PLAY:Ljava/lang/String; = "force_video_auto_play"

.field public static KEY_IMMERSION_MODE:Ljava/lang/String; = "immersionMode"

.field public static KEY_IS_OFFSET_PAGING:Ljava/lang/String; = "isOffsetPaging"

.field public static KEY_JUST_CREATED:Ljava/lang/String; = "justCreated"

.field public static KEY_KEY_WORD:Ljava/lang/String; = "search_keyword"

.field public static KEY_LOAD_RAW_VIDEO:Ljava/lang/String; = "load_raw_video"

.field public static KEY_PATH_SUFFIX:Ljava/lang/String; = "story_path_suffix"

.field public static KEY_SHOW_COMMENT_BAR:Ljava/lang/String; = "showComment"

.field public static KEY_SPECIFIC_PARAMS:Ljava/lang/String; = "specific_params"

.field public static KEY_SPECIFIC_PATH:Ljava/lang/String; = "specific_path"

.field public static KEY_TOPIC_ID:Ljava/lang/String; = "topic_id"

.field public static KEY_TYPE:Ljava/lang/String; = "type"

.field public static KEY_UID:Ljava/lang/String; = "profileUid"

.field private static final PAUSE_REASON_DIALOG:I = 0x3

.field private static final PAUSE_REASON_FORCE:I = -0x1

.field private static final PAUSE_REASON_LONG_CLICK:I = 0x2

.field private static final PAUSE_REASON_NOTHING:I = 0x0

.field private static final PAUSE_REASON_ON_ACTIVE_CHANGED:I = 0x1

.field public static SHOW_IN_SAME_ACTIVITY:Ljava/lang/String; = "showInSameActivity"

.field private static final TAG:Ljava/lang/String; = "StoryListFragment"

.field public static final VERTICAL:I = 0x0

.field private static VOLUME_WHEN_PLAY_POLL_QUIZ:F = 0.5f


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private active:Z

.field private autoLoadNextPage:Z

.field private bottomBgView:Landroid/view/View;

.field private bottomContainer:Lcom/narvii/widget/RoundFrameLayout;

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private bottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

.field bottomSheetFragment:Landroid/support/v4/app/Fragment;

.field private btnBack:Landroid/view/View;

.field private communityMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private communityService:Lcom/narvii/community/CommunityService;

.field private configService:Lcom/narvii/config/ConfigService;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private curStory:Lcom/narvii/model/Blog;

.field private currentPos:I

.field private defaultBottomLayout:Landroid/widget/FrameLayout;

.field private dummyRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private guideRunnable:Ljava/lang/Runnable;

.field private guideViewHelper:Lcom/narvii/story/widgets/GuideViewHelper;

.field private initFeed:Lcom/narvii/model/Blog;

.field private interstitialPageShow:Z

.field private isAtionBarShown:Z

.field private isImmersionMode:Z

.field private isPlayError:Z

.field private isPreview:Z

.field itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private itemTouchRunnable:Ljava/lang/Runnable;

.field private languageService:Lcom/narvii/language/ContentLanguageService;

.field private lastStoryItemView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/story/widgets/StoryItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Lcom/narvii/nvplayer/INVPlayer;

.field private mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

.field private manualSetPlayer:Z

.field private mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

.field private mediaSourceCached:Z

.field private needToSeekBeforePlay:Z

.field private orientation:I

.field private parentView:Landroid/view/View;

.field pendingClickNext:Z

.field private playBtnClicked:Z

.field private playerPauseSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private playerViewNull:Z

.field playingPollOrQuiz:Z

.field pollPlayRecordHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/scene/ScenePlayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private prefs:Landroid/content/SharedPreferences;

.field quizPlayRecordHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/scene/ScenePlayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private runnable:Ljava/lang/Runnable;

.field shareDialog:Lcom/narvii/share/ShareDialog;

.field private sharedDataSource:Lcom/narvii/paging/source/DataSource;

.field private showingQuizResult:Z

.field private singleStoryAdapter:Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;

.field private specificParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private specificPath:Ljava/lang/String;

.field private storyCommentFragment:Lcom/narvii/story/comment/StoryCommentListFragment;

.field private storyDownloadHelper:Lcom/narvii/story/StoryDownloadHelper;

.field storyItemPlayControlListener:Lcom/narvii/story/widgets/StoryItemPlayControlListener;

.field private storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

.field private storyLikeFragment:Lcom/narvii/story/vote/StoryVoteListFragment;

.field storyPageTurningListener:Lcom/narvii/story/widgets/StoryItemClickListener;

.field private storyType:Ljava/lang/String;

.field private targetPosInSharedDataSource:I

.field private topicId:I

.field type:I

.field private videoAutoPlay:Z

.field videoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

.field private visibleEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/story/StoryListVisibleChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private wifiActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 166
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->pendingClickNext:Z

    .line 196
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->playingPollOrQuiz:Z

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/narvii/story/StoryListFragment;->pollPlayRecordHashMap:Ljava/util/HashMap;

    .line 198
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/narvii/story/StoryListFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    .line 209
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/narvii/story/StoryListFragment;->playerPauseSet:Ljava/util/HashSet;

    const/4 v1, 0x1

    .line 399
    iput v1, p0, Lcom/narvii/story/StoryListFragment;->orientation:I

    .line 413
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/narvii/story/StoryListFragment;->communityMapping:Landroid/util/SparseArray;

    const/4 v2, -0x1

    .line 414
    iput v2, p0, Lcom/narvii/story/StoryListFragment;->currentPos:I

    .line 423
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->needToSeekBeforePlay:Z

    .line 424
    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->autoLoadNextPage:Z

    .line 426
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->mediaSourceCached:Z

    .line 428
    iput v2, p0, Lcom/narvii/story/StoryListFragment;->targetPosInSharedDataSource:I

    .line 429
    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->isAtionBarShown:Z

    const/4 v1, 0x0

    .line 430
    iput-object v1, p0, Lcom/narvii/story/StoryListFragment;->specificPath:Ljava/lang/String;

    .line 431
    iput-object v1, p0, Lcom/narvii/story/StoryListFragment;->specificParams:Ljava/util/HashMap;

    .line 443
    new-instance v3, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v3}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v3, p0, Lcom/narvii/story/StoryListFragment;->visibleEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 444
    new-instance v3, Lcom/narvii/story/StoryListFragment$2;

    invoke-direct {v3, p0}, Lcom/narvii/story/StoryListFragment$2;-><init>(Lcom/narvii/story/StoryListFragment;)V

    iput-object v3, p0, Lcom/narvii/story/StoryListFragment;->runnable:Ljava/lang/Runnable;

    .line 450
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->manualSetPlayer:Z

    .line 650
    new-instance v3, Lcom/narvii/story/StoryListFragment$4;

    invoke-direct {v3, p0}, Lcom/narvii/story/StoryListFragment$4;-><init>(Lcom/narvii/story/StoryListFragment;)V

    iput-object v3, p0, Lcom/narvii/story/StoryListFragment;->guideRunnable:Ljava/lang/Runnable;

    .line 896
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->playerViewNull:Z

    .line 1151
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->active:Z

    .line 1257
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->isPlayError:Z

    .line 2102
    new-instance v0, Lcom/narvii/story/StoryListFragment$9;

    invoke-direct {v0, p0}, Lcom/narvii/story/StoryListFragment$9;-><init>(Lcom/narvii/story/StoryListFragment;)V

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyPageTurningListener:Lcom/narvii/story/widgets/StoryItemClickListener;

    .line 2232
    new-instance v0, Lcom/narvii/story/StoryListFragment$10;

    invoke-direct {v0, p0}, Lcom/narvii/story/StoryListFragment$10;-><init>(Lcom/narvii/story/StoryListFragment;)V

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemPlayControlListener:Lcom/narvii/story/widgets/StoryItemPlayControlListener;

    .line 2401
    iput-object v1, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    .line 2406
    iput v2, p0, Lcom/narvii/story/StoryListFragment;->type:I

    .line 2486
    new-instance v0, Lcom/narvii/story/StoryListFragment$11;

    invoke-direct {v0, p0}, Lcom/narvii/story/StoryListFragment$11;-><init>(Lcom/narvii/story/StoryListFragment;)V

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/StoryListFragment;ZI)V
    .locals 0

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/narvii/story/StoryListFragment;->setPlayWhenReady(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/story/StoryListFragment;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->notifyItemChange()V

    return-void
.end method

.method static synthetic access$102(Lcom/narvii/story/StoryListFragment;Lcom/narvii/model/Blog;)Lcom/narvii/model/Blog;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/narvii/story/StoryListFragment;)Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lcom/narvii/story/StoryListFragment;->autoLoadNextPage:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/narvii/story/StoryListFragment;)Ljava/lang/String;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/app/NVFragment;->_pushTrackId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/narvii/story/StoryListFragment;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->resetPollQuiz()V

    return-void
.end method

.method static synthetic access$1600(Lcom/narvii/story/StoryListFragment;)Z
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->dismissCurrentPage()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/narvii/story/StoryListFragment;)I
    .locals 0

    .line 166
    iget p0, p0, Lcom/narvii/story/StoryListFragment;->currentPos:I

    return p0
.end method

.method static synthetic access$1900(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/source/DataSource;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->sharedDataSource:Lcom/narvii/paging/source/DataSource;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/StoryDownloadHelper;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->storyDownloadHelper:Lcom/narvii/story/StoryDownloadHelper;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/narvii/story/StoryListFragment;)Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lcom/narvii/story/StoryListFragment;->playerViewNull:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/narvii/story/StoryListFragment;Z)Z
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->playerViewNull:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->initFeed:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/narvii/story/StoryListFragment;)Ljava/lang/String;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->specificPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/narvii/story/StoryListFragment;)Ljava/util/HashMap;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->specificParams:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/narvii/story/StoryListFragment;)I
    .locals 0

    .line 166
    iget p0, p0, Lcom/narvii/story/StoryListFragment;->topicId:I

    return p0
.end method

.method static synthetic access$2500(Lcom/narvii/story/StoryListFragment;)Ljava/lang/String;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->storyType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/community/CommunityService;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->communityService:Lcom/narvii/community/CommunityService;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/narvii/story/StoryListFragment;I)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryListFragment;->preloadNextStories(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/narvii/story/StoryListFragment;)Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lcom/narvii/story/StoryListFragment;->manualSetPlayer:Z

    return p0
.end method

.method static synthetic access$2902(Lcom/narvii/story/StoryListFragment;Z)Z
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->manualSetPlayer:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->visibleEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/narvii/story/StoryListFragment;)Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lcom/narvii/story/StoryListFragment;->videoAutoPlay:Z

    return p0
.end method

.method static synthetic access$3300(Lcom/narvii/story/StoryListFragment;)Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lcom/narvii/story/StoryListFragment;->playBtnClicked:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/narvii/story/StoryListFragment;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->startPlay()V

    return-void
.end method

.method static synthetic access$3500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/nvplayer/INVPlayer;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/narvii/story/StoryListFragment;I)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryListFragment;->notifyItemChange(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/narvii/story/StoryListFragment;ILcom/narvii/model/Blog;Ljava/lang/String;Lcom/narvii/logging/ActType;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/story/StoryListFragment;->sendNextStoryLog(ILcom/narvii/model/Blog;Ljava/lang/String;Lcom/narvii/logging/ActType;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/story/StoryListFragment;)Z
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->isShowingPageAboveVideo()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/widget/recycleview/NVRecyclerView;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/narvii/story/StoryListFragment;I)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryListFragment;->preloadCurrentStory(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/widget/recycleview/NVRecyclerView;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/widget/recycleview/NVRecyclerView;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/widget/recycleview/NVRecyclerView;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/narvii/story/StoryListFragment;Z)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryListFragment;->hideInterstitialPage(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/narvii/story/StoryListFragment;)I
    .locals 0

    .line 166
    iget p0, p0, Lcom/narvii/story/StoryListFragment;->orientation:I

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/GuideViewHelper;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->guideViewHelper:Lcom/narvii/story/widgets/GuideViewHelper;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/narvii/story/StoryListFragment;)Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lcom/narvii/story/StoryListFragment;->isImmersionMode:Z

    return p0
.end method

.method static synthetic access$5100(Lcom/narvii/story/StoryListFragment;)Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lcom/narvii/story/StoryListFragment;->isPreview:Z

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->getCurrentBlog()Lcom/narvii/model/Blog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/story/StoryListFragment;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryListFragment;->showStoryGuide(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/story/StoryListFragment;)Landroid/util/SparseArray;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment;->communityMapping:Landroid/util/SparseArray;

    return-object p0
.end method

.method private changeBottomSheetBehaviorState(I)V
    .locals 2

    .line 1591
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 1592
    invoke-virtual {v0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/story/comment/StoryCommentListFragment;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1595
    check-cast v0, Lcom/narvii/story/comment/StoryCommentListFragment;

    invoke-virtual {v0}, Lcom/narvii/story/comment/StoryCommentListFragment;->tryToShowPost()V

    :cond_1
    return-void
.end method

.method private destroyStoryVoteAndCommentFragment()V
    .locals 1

    const/4 v0, 0x0

    .line 2534
    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyCommentFragment:Lcom/narvii/story/comment/StoryCommentListFragment;

    .line 2535
    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyLikeFragment:Lcom/narvii/story/vote/StoryVoteListFragment;

    const/4 v0, -0x1

    .line 2536
    iput v0, p0, Lcom/narvii/story/StoryListFragment;->type:I

    return-void
.end method

.method private dismissCurrentPage()Z
    .locals 4

    .line 1618
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->isAtionBarShown:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/narvii/story/StoryListFragment;->SHOW_IN_SAME_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1619
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    :cond_0
    const/4 v0, 0x0

    .line 1622
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setVisibleHint(Z)V

    .line 1623
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->visibleEventDispatcher:Lcom/narvii/util/EventDispatcher;

    sget-object v2, Lcom/narvii/story/-$$Lambda$StoryListFragment$NR9ARnt3jkU7Mv8QHx_sA7fCgAE;->INSTANCE:Lcom/narvii/story/-$$Lambda$StoryListFragment$NR9ARnt3jkU7Mv8QHx_sA7fCgAE;

    invoke-virtual {v1, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 1624
    sget-object v1, Lcom/narvii/story/StoryListFragment;->ACTIVITY_VISIBLE_HINT_EXCLUSIVE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1625
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1627
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    if-eq v3, p0, :cond_1

    .line 1629
    invoke-virtual {v3, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    goto :goto_0

    .line 1634
    :cond_2
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->containsPollOrQuiz()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1635
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iput v0, v1, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 1637
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/16 v3, 0x2002

    if-eqz v1, :cond_4

    .line 1638
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1639
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1640
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1641
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1642
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return v2

    .line 1644
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1645
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_5

    .line 1646
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1647
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1648
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1649
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1650
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return v2

    .line 1653
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1654
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6

    .line 1655
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finishAfterTransition()V

    goto :goto_1

    .line 1657
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_7
    :goto_1
    return v0
.end method

.method private findTargetPositionInSharedDatasource()V
    .locals 3

    .line 618
    iget v0, p0, Lcom/narvii/story/StoryListFragment;->targetPosInSharedDataSource:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->sharedDataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->initFeed:Lcom/narvii/model/Blog;

    if-nez v2, :cond_1

    goto :goto_1

    .line 624
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->sharedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 625
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->initFeed:Lcom/narvii/model/Blog;

    invoke-virtual {v0, v1}, Lcom/narvii/paging/storage/PageStorage;->getPosition(Lcom/narvii/model/NVObject;)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/narvii/story/StoryListFragment;->targetPosInSharedDataSource:I

    :cond_3
    :goto_1
    return-void
.end method

.method public static getAnimationBundles(Landroid/view/View;)Landroid/os/Bundle;
    .locals 5

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 220
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const-string v4, "cellWidth"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const-string v4, "cellHeight"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x0

    .line 223
    aget v3, v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    const-string v4, "centerX"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x1

    .line 224
    aget v2, v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v1

    add-int/2addr v2, v3

    const-string v1, "centerY"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    const-string v2, "targetWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0701e2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    sub-float/2addr v1, p0

    float-to-int p0, v1

    const-string v1, "targetHeight"

    .line 227
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method private getCurrentBlog()Lcom/narvii/model/Blog;
    .locals 3

    .line 1698
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1701
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1705
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getPlayerView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    .line 1709
    :cond_2
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 1710
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v2, v2, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    if-eqz v2, :cond_3

    .line 1711
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    invoke-virtual {v2, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v0

    .line 1712
    instance-of v2, v0, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_3

    .line 1713
    check-cast v0, Lcom/narvii/model/Blog;

    return-object v0

    :cond_3
    return-object v1
.end method

.method private getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;
    .locals 3

    .line 2265
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getPlayerView()Landroid/view/View;

    move-result-object v0

    .line 2267
    instance-of v1, v0, Lcom/narvii/app/NVContext;

    if-eqz v1, :cond_0

    .line 2268
    check-cast v0, Lcom/narvii/app/NVContext;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 2270
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/nvplayer/VideoLogHelper;->getStoryPlayId()Ljava/lang/String;

    move-result-object v1

    .line 2271
    iget-boolean v2, p0, Lcom/narvii/story/StoryListFragment;->isPreview:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v2, "storyPlayId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->getCurrentBlog()Lcom/narvii/model/Blog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "VideoArea"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private getParentMasterTabFragment()Lcom/narvii/master/MasterTabFragment;
    .locals 2

    move-object v0, p0

    .line 1477
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1478
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1479
    instance-of v1, v0, Lcom/narvii/master/MasterTabFragment;

    if-eqz v1, :cond_0

    .line 1480
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPlayRecord(Ljava/lang/String;Z)Lcom/narvii/scene/ScenePlayRecord;
    .locals 0

    if-eqz p2, :cond_0

    .line 289
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/ScenePlayRecord;

    return-object p1

    .line 291
    :cond_0
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->pollPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/ScenePlayRecord;

    return-object p1
.end method

.method private getScrollActType(II)Lcom/narvii/logging/ActType;
    .locals 1

    .line 889
    iget v0, p0, Lcom/narvii/story/StoryListFragment;->orientation:I

    if-nez v0, :cond_1

    if-ge p1, p2, :cond_0

    .line 890
    sget-object p1, Lcom/narvii/logging/ActType;->downScroll:Lcom/narvii/logging/ActType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/narvii/logging/ActType;->upScroll:Lcom/narvii/logging/ActType;

    :goto_0
    return-object p1

    :cond_1
    if-ge p1, p2, :cond_2

    .line 892
    sget-object p1, Lcom/narvii/logging/ActType;->rightScroll:Lcom/narvii/logging/ActType;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/narvii/logging/ActType;->leftScroll:Lcom/narvii/logging/ActType;

    :goto_1
    return-object p1
.end method

.method private handleLastStoryItemView()V
    .locals 3

    .line 1015
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->lastStoryItemView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->lastStoryItemView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryItemView;->getCoverImg()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1017
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->lastStoryItemView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryItemView;->getVideoView()Lcom/narvii/nvplayerview/NVVideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayerview/NVVideoView;->addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 1018
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->lastStoryItemView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryItemView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/narvii/story/widgets/StoryItemView;->setLoadingViewVisibility(I)V

    .line 1019
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->lastStoryItemView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v0, v2}, Lcom/narvii/story/widgets/StoryItemView;->setNexBtnVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->lastStoryItemView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v0, v2}, Lcom/narvii/story/widgets/StoryItemView;->setPreBtnVisibility(I)V

    .line 1021
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->videoAutoPlay:Z

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->lastStoryItemView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v0, v2}, Lcom/narvii/story/widgets/StoryItemView;->setPlayBtnVisibility(I)V

    .line 1024
    :cond_0
    iput-object v1, p0, Lcom/narvii/story/StoryListFragment;->lastStoryItemView:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method private hideInterstitialPage(Z)V
    .locals 1

    .line 2604
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2607
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->interstitialPageShow:Z

    .line 2608
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->reAttachItemTouch()V

    if-eqz p1, :cond_1

    .line 2610
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {p1, p0}, Lcom/narvii/story/widgets/StoryItemView;->hideInterstitialPage(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 2612
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryItemView;->hideInterstitialView()V

    :cond_2
    :goto_0
    return-void
.end method

.method private isShowingPageAboveVideo()Z
    .locals 1

    .line 2625
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->playingPollOrQuiz:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->showingQuizResult:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->interstitialPageShow:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$dismissCurrentPage$7(Lcom/narvii/story/StoryListVisibleChangeListener;)V
    .locals 0

    .line 1623
    invoke-interface {p0}, Lcom/narvii/story/StoryListVisibleChangeListener;->onStoryListDismissed()V

    return-void
.end method

.method private loopScene(I)V
    .locals 2

    .line 1316
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/nvplayer/VideoLogHelper;->setNoLoggingNextPlay()V

    .line 1317
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    sget v1, Lcom/narvii/story/StoryListFragment;->VOLUME_WHEN_PLAY_POLL_QUIZ:F

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 1318
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->seekToWindow(I)V

    .line 1319
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method private notifyItemChange()V
    .locals 2

    .line 1688
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1689
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 1690
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 1691
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v1, :cond_0

    .line 1692
    new-instance v1, Lcom/narvii/story/-$$Lambda$StoryListFragment$P7Cig6qHFlXwMw_M3zEGAFIFFfs;

    invoke-direct {v1, p0, v0}, Lcom/narvii/story/-$$Lambda$StoryListFragment$P7Cig6qHFlXwMw_M3zEGAFIFFfs;-><init>(Lcom/narvii/story/StoryListFragment;I)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private notifyItemChange(I)V
    .locals 2

    .line 2259
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    .line 2260
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    new-instance v1, Lcom/narvii/story/-$$Lambda$StoryListFragment$fRhpWC-M845H4bImSgdIve8jHJ8;

    invoke-direct {v1, p0, p1}, Lcom/narvii/story/-$$Lambda$StoryListFragment$fRhpWC-M845H4bImSgdIve8jHJ8;-><init>(Lcom/narvii/story/StoryListFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private onPlayPollQuizChanged()V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->reAttachItemTouch()V

    return-void
.end method

.method private pauseVideo()V
    .locals 2

    .line 1176
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method private preloadCurrentStory(I)V
    .locals 4

    .line 1113
    iget-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->videoAutoPlay:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1116
    :cond_0
    iget p1, p1, Lcom/narvii/model/Blog;->currentWindowIndex:I

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    .line 1117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1118
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget-object v1, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    iget v0, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Scene;

    iget-object v0, v0, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    instance-of v1, v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v1, :cond_1

    .line 1120
    sget-object v1, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    check-cast v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->startPreload(Ljava/util/List;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private preloadNextStories(I)V
    .locals 4

    .line 1128
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->videoAutoPlay:Z

    if-nez v0, :cond_0

    return-void

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getSize()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-void

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/Blog;

    if-nez v0, :cond_2

    return-void

    .line 1137
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 1139
    iget-object v2, p1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v1, :cond_3

    iget-object v2, p1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1140
    iget-object p1, p1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Scene;

    iget-object p1, p1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    :cond_3
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    instance-of v2, p1, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v2, :cond_4

    .line 1143
    sget-object v2, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    check-cast p1, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, p1, v3, v1}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->startPreload(Ljava/util/List;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;Z)V

    :cond_4
    return-void
.end method

.method private prepareVideoView(ILandroid/view/View;Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1029
    invoke-direct/range {p0 .. p0}, Lcom/narvii/story/StoryListFragment;->handleLastStoryItemView()V

    .line 1031
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/story/StoryListFragment;->resetDebugInfo()V

    .line 1033
    iget-object v4, v0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 1037
    :cond_0
    iget-object v4, v0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    instance-of v4, v4, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    if-eqz v4, :cond_d

    .line 1038
    iget-object v4, v0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    invoke-virtual {v4, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 1042
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v5

    iput-object v5, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 1043
    iget-object v5, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v5, v6}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 1044
    new-instance v5, Lcom/narvii/nvplayer/NVMediaSource;

    invoke-direct {v5}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    iput-object v5, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 1045
    iget-object v5, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-boolean v7, v0, Lcom/narvii/story/StoryListFragment;->isPreview:Z

    invoke-virtual {v5, v7}, Lcom/narvii/nvplayer/NVMediaSource;->setLoop(Z)V

    .line 1046
    iget-object v5, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    check-cast v4, Lcom/narvii/model/Blog;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/narvii/model/Blog;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object v8

    iput-object v8, v5, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 1047
    sget-object v5, Lcom/narvii/story/StoryListFragment;->KEY_LOAD_RAW_VIDEO:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    .line 1048
    :goto_0
    iget-object v9, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v9, v9, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 1049
    iget-object v9, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v9, v9, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1050
    iget-object v9, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v9, v9, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/model/Media;

    iget-object v10, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v10, v10, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/model/Media;

    iget-object v10, v10, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v10}, Lcom/narvii/util/Utils;->getRawVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1053
    :cond_3
    iget-object v5, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-virtual {v5, v8}, Lcom/narvii/nvplayer/NVMediaSource;->setNotCache(Z)V

    .line 1055
    :cond_4
    iget-object v5, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-virtual {v5, v4}, Lcom/narvii/nvplayer/NVMediaSource;->setNvObject(Lcom/narvii/model/NVObject;)V

    .line 1056
    iget-object v5, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    instance-of v9, v2, Lcom/narvii/app/NVContext;

    if-eqz v9, :cond_5

    move-object v10, v2

    check-cast v10, Lcom/narvii/app/NVContext;

    goto :goto_1

    :cond_5
    move-object v10, v0

    :goto_1
    invoke-virtual {v5, v10}, Lcom/narvii/nvplayer/NVMediaSource;->setNVContext(Lcom/narvii/app/NVContext;)V

    .line 1057
    iget-object v5, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    const-string v10, "VideoArea"

    invoke-virtual {v5, v10}, Lcom/narvii/nvplayer/NVMediaSource;->setAreaName(Ljava/lang/String;)V

    .line 1058
    iget-object v5, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->containsPollOrQuiz()Z

    move-result v11

    invoke-virtual {v5, v11}, Lcom/narvii/nvplayer/NVMediaSource;->setPollOrQuiz(Z)V

    .line 1059
    iget-object v5, v0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v5}, Lcom/narvii/story/widgets/StoryItemView;->getVideoView()Lcom/narvii/nvplayerview/NVVideoView;

    move-result-object v5

    iput-object v5, v0, Lcom/narvii/story/StoryListFragment;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 1060
    iget-object v5, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v5}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v5

    .line 1061
    iget-object v11, v0, Lcom/narvii/story/StoryListFragment;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v11}, Lcom/narvii/nvplayerview/NVVideoView;->getSurface()Landroid/view/Surface;

    move-result-object v11

    .line 1062
    iget-object v12, v0, Lcom/narvii/story/StoryListFragment;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v12, v0}, Lcom/narvii/nvplayerview/NVVideoView;->addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 1063
    iget-object v12, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v12, v0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 1064
    iget-object v12, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v12, v0}, Lcom/narvii/nvplayer/INVPlayer;->addWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V

    .line 1065
    iget-object v12, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v12, v6}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 1067
    iput-boolean v7, v0, Lcom/narvii/story/StoryListFragment;->mediaSourceCached:Z

    .line 1068
    iget-object v6, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    instance-of v6, v6, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v6, v6, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    iget-object v12, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    iget-object v6, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-interface {v12}, Lcom/narvii/nvplayer/INVPlayer;->isLoadLowResVideo()Z

    move-result v13

    invoke-virtual {v6, v7, v13}, Lcom/narvii/nvplayer/NVMediaSource;->getVideoUrlWithRes(IZ)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, 0x0

    iget-object v6, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v6}, Lcom/narvii/nvplayer/INVPlayer;->getPreCachedSize()J

    move-result-wide v16

    invoke-interface/range {v12 .. v17}, Lcom/narvii/nvplayer/INVPlayer;->isCached(Ljava/lang/String;JJ)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1069
    iput-boolean v8, v0, Lcom/narvii/story/StoryListFragment;->mediaSourceCached:Z

    .line 1071
    :cond_6
    iget-object v6, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-virtual {v6}, Lcom/narvii/nvplayer/NVMediaSource;->isPollOrQuiz()Z

    move-result v6

    const/4 v12, -0x1

    if-nez v6, :cond_a

    iget-object v6, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v6, v0, Lcom/narvii/story/StoryListFragment;->isImmersionMode:Z

    if-nez v6, :cond_a

    iget-object v6, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-virtual {v6}, Lcom/narvii/nvplayer/NVMediaSource;->isPollOrQuiz()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v6}, Lcom/narvii/nvplayer/INVPlayer;->getPlayerState()I

    move-result v6

    if-eq v6, v8, :cond_a

    if-eqz v5, :cond_8

    .line 1073
    invoke-virtual {v5, v4}, Lcom/narvii/nvplayer/NVMediaSource;->setNvObject(Lcom/narvii/model/NVObject;)V

    if-eqz v9, :cond_7

    .line 1074
    move-object v1, v2

    check-cast v1, Lcom/narvii/app/NVContext;

    goto :goto_2

    :cond_7
    move-object v1, v0

    :goto_2
    invoke-virtual {v5, v1}, Lcom/narvii/nvplayer/NVMediaSource;->setNVContext(Lcom/narvii/app/NVContext;)V

    .line 1075
    invoke-virtual {v5, v10}, Lcom/narvii/nvplayer/NVMediaSource;->setAreaName(Ljava/lang/String;)V

    .line 1076
    iget-object v1, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/nvplayer/VideoLogHelper;->resetIds()V

    .line 1079
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/narvii/story/StoryListFragment;->notifyItemChange()V

    if-eqz v11, :cond_c

    .line 1081
    iget-object v1, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v1, v11}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 1082
    iget-boolean v1, v0, Lcom/narvii/story/StoryListFragment;->needToSeekBeforePlay:Z

    if-eqz v1, :cond_9

    .line 1083
    iput-boolean v7, v0, Lcom/narvii/story/StoryListFragment;->needToSeekBeforePlay:Z

    .line 1084
    iget-object v1, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    move-result-wide v1

    .line 1085
    iget-object v5, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const-wide/16 v6, 0x3e8

    sub-long/2addr v1, v6

    const-wide/16 v6, 0x0

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-interface {v5, v1, v2, v8}, Lcom/narvii/nvplayer/INVPlayer;->seekTo(JZ)V

    .line 1087
    :cond_9
    invoke-direct {v0, v3, v12}, Lcom/narvii/story/StoryListFragment;->setPlayWhenReady(ZI)V

    goto :goto_4

    .line 1090
    :cond_a
    iget-object v2, v0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iput v7, v2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    if-eqz v11, :cond_b

    .line 1092
    iget-object v2, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v7, v0, Lcom/narvii/story/StoryListFragment;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v7}, Lcom/narvii/nvplayerview/NVVideoView;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lcom/narvii/nvplayer/INVPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 1093
    invoke-direct {v0, v3, v12}, Lcom/narvii/story/StoryListFragment;->setPlayWhenReady(ZI)V

    goto :goto_3

    .line 1095
    :cond_b
    iget-object v2, v0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v5, v0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6}, Lcom/narvii/nvplayer/INVPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    :goto_3
    add-int/lit8 v2, v1, 0x1

    .line 1097
    invoke-direct {v0, v2}, Lcom/narvii/story/StoryListFragment;->preloadNextStories(I)V

    .line 1098
    invoke-direct/range {p0 .. p1}, Lcom/narvii/story/StoryListFragment;->preloadCurrentStory(I)V

    .line 1100
    :cond_c
    :goto_4
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, v0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/narvii/story/StoryListFragment;->lastStoryItemView:Ljava/lang/ref/WeakReference;

    .line 1103
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1104
    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getStrategyInfo()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/StrategyInfo;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/StrategyInfo;

    if-eqz v1, :cond_d

    .line 1105
    iget-object v1, v1, Lcom/narvii/model/StrategyInfo;->debugInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_d

    .line 1106
    iget-object v2, v0, Lcom/narvii/story/StoryListFragment;->videoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    invoke-virtual {v2, v1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setStrategyInfoText(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    :cond_d
    return-void
.end method

.method private reAttachItemTouch()V
    .locals 1

    .line 2558
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->itemTouchRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2559
    new-instance v0, Lcom/narvii/story/-$$Lambda$StoryListFragment$FU4IvhGvkO2oxUNFYhE9Bx_wZRM;

    invoke-direct {v0, p0}, Lcom/narvii/story/-$$Lambda$StoryListFragment$FU4IvhGvkO2oxUNFYhE9Bx_wZRM;-><init>(Lcom/narvii/story/StoryListFragment;)V

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->itemTouchRunnable:Ljava/lang/Runnable;

    .line 2568
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->itemTouchRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeBottomSheetFragment()V
    .locals 3

    .line 2508
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2509
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 2510
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->defaultBottomLayout:Landroid/widget/FrameLayout;

    if-ne v0, v1, :cond_0

    .line 2511
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    .line 2513
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    goto :goto_1

    .line 2516
    :cond_1
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->defaultBottomLayout:Landroid/widget/FrameLayout;

    if-ne v0, v1, :cond_2

    const-string v0, "defaultBottomSheetFragment"

    goto :goto_0

    :cond_2
    const-string v0, "bottomSheetFragment"

    .line 2517
    :goto_0
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->defaultBottomLayout:Landroid/widget/FrameLayout;

    if-ne v1, v2, :cond_3

    .line 2518
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2520
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    .line 2523
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2525
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 2529
    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    :cond_5
    return-void
.end method

.method private resetPollQuiz()V
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->shuffleSceneQuizOptions()V

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 856
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->playingPollOrQuiz:Z

    .line 857
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->showingQuizResult:Z

    .line 858
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->onPlayPollQuizChanged()V

    return-void
.end method

.method private sendNextStoryLog(ILcom/narvii/model/Blog;Ljava/lang/String;Lcom/narvii/logging/ActType;)V
    .locals 2

    add-int/lit8 p1, p1, 0x1

    .line 2212
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2213
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 2214
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 2215
    check-cast p1, Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2219
    :goto_0
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->nextStory:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget v1, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 2220
    invoke-static {p2, v1}, Lcom/narvii/util/StoryUtils;->getSceneId(Lcom/narvii/model/Blog;I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "currentSceneId"

    invoke-virtual {v0, v1, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    const-string v0, "targetStoryId"

    .line 2221
    invoke-virtual {p2, v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 2224
    invoke-virtual {p1, p3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_1
    if-eqz p4, :cond_2

    .line 2227
    invoke-virtual {p1, p4}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 2229
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method private setPlayPreAndNextButtons()V
    .locals 11

    .line 1334
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-nez v0, :cond_0

    .line 1335
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1338
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f067f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 1339
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const v1, 0x7f09083e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/EasyButton;

    .line 1340
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v1}, Lcom/narvii/story/widgets/StoryItemView;->getCoverImg()Lcom/narvii/widget/NVImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1341
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/narvii/story/widgets/StoryItemView;->setLoadingViewVisibility(I)V

    .line 1342
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v1, v2}, Lcom/narvii/story/widgets/StoryItemView;->setPlayBtnVisibility(I)V

    .line 1343
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentWindowIndex()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentWindowIndex()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1345
    :goto_0
    iget-object v4, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v4}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    move-result-wide v4

    .line 1346
    iget-object v6, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v6}, Lcom/narvii/nvplayer/INVPlayer;->getDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-lez v10, :cond_2

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    sub-long/2addr v6, v4

    const-wide/16 v4, 0xc8

    cmp-long v8, v6, v4

    if-gez v8, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1350
    :cond_2
    iget-object v4, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v4, v1}, Lcom/narvii/story/widgets/StoryItemView;->setSceneIndex(I)V

    .line 1351
    new-instance v1, Lcom/narvii/story/-$$Lambda$StoryListFragment$TMZaAmPEJ52ryajGWeBbQuZcVKc;

    invoke-direct {v1, p0}, Lcom/narvii/story/-$$Lambda$StoryListFragment$TMZaAmPEJ52ryajGWeBbQuZcVKc;-><init>(Lcom/narvii/story/StoryListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1356
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1357
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 1359
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const v4, 0x7f09075c

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/EasyButton;

    .line 1360
    iget-object v4, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const v5, 0x7f0908bd

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/EasyButton;

    .line 1361
    iget-object v5, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v6, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget v6, v6, Lcom/narvii/model/Blog;->currentWindowIndex:I

    if-lez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x4

    :goto_1
    invoke-virtual {v5, v6}, Lcom/narvii/story/widgets/StoryItemView;->setPreBtnVisibility(I)V

    .line 1362
    iget-object v5, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v6, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget v7, v6, Lcom/narvii/model/Blog;->currentWindowIndex:I

    iget-object v6, v6, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v7, v6, :cond_4

    const/4 v2, 0x4

    :cond_4
    invoke-virtual {v5, v2}, Lcom/narvii/story/widgets/StoryItemView;->setNexBtnVisibility(I)V

    .line 1363
    new-instance v2, Lcom/narvii/story/-$$Lambda$StoryListFragment$Mcmy20C0z11iDPwdmb1EnNvC8zM;

    invoke-direct {v2, p0, v0}, Lcom/narvii/story/-$$Lambda$StoryListFragment$Mcmy20C0z11iDPwdmb1EnNvC8zM;-><init>(Lcom/narvii/story/StoryListFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1376
    new-instance v1, Lcom/narvii/story/-$$Lambda$StoryListFragment$oUc5ubg0-cMnsRUCmqj9dKqmnyo;

    invoke-direct {v1, p0, v0}, Lcom/narvii/story/-$$Lambda$StoryListFragment$oUc5ubg0-cMnsRUCmqj9dKqmnyo;-><init>(Lcom/narvii/story/StoryListFragment;I)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1391
    :cond_5
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->lastStoryItemView:Ljava/lang/ref/WeakReference;

    :cond_6
    return-void
.end method

.method private setPlayWhenReady(ZI)V
    .locals 1

    .line 2655
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 2659
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->playerPauseSet:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 2660
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p2, p1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 2664
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->playerPauseSet:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2666
    :cond_2
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->playerPauseSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2667
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 2668
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz p1, :cond_5

    .line 2669
    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryItemView;->resumeProgressAnimation()V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 2674
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->playerPauseSet:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2676
    :cond_4
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 2677
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz p1, :cond_5

    .line 2678
    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryItemView;->pauseProgressAnimation()V

    :cond_5
    :goto_0
    return-void
.end method

.method private showStoryGuide(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 635
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->isPreview:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 639
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 640
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->guideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 643
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->guideViewHelper:Lcom/narvii/story/widgets/GuideViewHelper;

    const-string v0, "has_story_double_tap_guide_shown"

    invoke-virtual {p1, v0}, Lcom/narvii/story/widgets/GuideViewHelper;->hasGuideShown(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/narvii/story/detail/StoryUserView;->isTooltipShown:Z

    if-eqz p1, :cond_2

    return-void

    .line 646
    :cond_2
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->guideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 647
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->guideRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private startPlay()V
    .locals 2

    .line 2647
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2648
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/narvii/story/widgets/StoryItemView;->setPlayBtnVisibility(I)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 2649
    invoke-direct {p0, v0, v1}, Lcom/narvii/story/StoryListFragment;->setPlayWhenReady(ZI)V

    .line 2650
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryItemView;->resumeProgressAnimation()V

    :cond_0
    return-void
.end method

.method private tryUploadQuizResult()V
    .locals 4

    .line 1572
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->isPreview:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->showingQuizResult:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1573
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1576
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/story/StoryListFragment;->getQuizQuestionResult()Ljava/util/List;

    move-result-object v0

    .line 1577
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget v2, v2, Lcom/narvii/model/Feed;->ndcId:I

    .line 1578
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    .line 1579
    invoke-virtual {v3}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/quiz/result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 1580
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1581
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mode"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 1582
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v2, "quizAnswerList"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1583
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->signature(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 1584
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 1585
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 1586
    sget-object v2, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_1
    return-void
.end method

.method private updateWifiActive()V
    .locals 3

    .line 2327
    :try_start_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 2328
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 2330
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2331
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->wifiActive:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public addStoryVisibleChangeListener(Lcom/narvii/story/StoryListVisibleChangeListener;)V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->visibleEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;
    .locals 2

    .line 1532
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->initFeed:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;-><init>(Lcom/narvii/story/StoryListFragment;)V

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->singleStoryAdapter:Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->sharedDataSource:Lcom/narvii/paging/source/DataSource;

    invoke-direct {v0, p0, v1}, Lcom/narvii/story/StoryListFragment$Adapter;-><init>(Lcom/narvii/story/StoryListFragment;Lcom/narvii/paging/source/DataSource;)V

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/narvii/story/StoryListFragment;->createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 1512
    iget v0, p0, Lcom/narvii/story/StoryListFragment;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1513
    new-instance v0, Lcom/narvii/story/StoryListFragment$7;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/narvii/story/StoryListFragment$7;-><init>(Lcom/narvii/story/StoryListFragment;Landroid/content/Context;IZ)V

    return-object v0

    .line 1520
    :cond_0
    new-instance v0, Lcom/narvii/story/StoryListFragment$8;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/story/StoryListFragment$8;-><init>(Lcom/narvii/story/StoryListFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method protected createSnapHelper()Landroid/support/v7/widget/SnapHelper;
    .locals 1

    .line 792
    new-instance v0, Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    return-object v0
.end method

.method protected firstShownPosition()I
    .locals 2

    .line 798
    iget v0, p0, Lcom/narvii/story/StoryListFragment;->targetPosInSharedDataSource:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->firstShownPosition()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getPollQuizPlayRecord(Ljava/lang/String;)Lcom/narvii/scene/ScenePlayRecord;
    .locals 1

    const/4 v0, 0x1

    .line 297
    invoke-direct {p0, p1, v0}, Lcom/narvii/story/StoryListFragment;->getPlayRecord(Ljava/lang/String;Z)Lcom/narvii/scene/ScenePlayRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, p1, v0}, Lcom/narvii/story/StoryListFragment;->getPlayRecord(Ljava/lang/String;Z)Lcom/narvii/scene/ScenePlayRecord;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getQuizQuestionResult()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/scene/quiz/QuizQuestionResult;",
            ">;"
        }
    .end annotation

    .line 1323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1325
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/scene/ScenePlayRecord;

    if-eqz v2, :cond_0

    .line 1326
    iget-object v2, v2, Lcom/narvii/scene/ScenePlayRecord;->result:Ljava/lang/Object;

    instance-of v3, v2, Lcom/narvii/scene/quiz/QuizQuestionResult;

    if-eqz v3, :cond_0

    .line 1327
    check-cast v2, Lcom/narvii/scene/quiz/QuizQuestionResult;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 2618
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getPlayerView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/paging/PageView;

    if-eqz v0, :cond_0

    .line 2619
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getPlayerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/paging/PageView;

    invoke-virtual {v0}, Lcom/narvii/paging/PageView;->getStrategyInfo()Ljava/lang/String;

    .line 2621
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getStrategyInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isRefreshEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowingPopupViews()Z
    .locals 3

    .line 2629
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return v1

    .line 2633
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2634
    instance-of v2, v0, Lcom/narvii/app/NVActivity;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/narvii/app/NVActivity;

    invoke-static {v2}, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->isFragmentShowing(Lcom/narvii/app/NVActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    .line 2639
    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$notifyItemChange$8$StoryListFragment(I)V
    .locals 1

    .line 1692
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public synthetic lambda$notifyItemChange$9$StoryListFragment(I)V
    .locals 1

    .line 2260
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public synthetic lambda$onBottomSheetShow$10$StoryListFragment()V
    .locals 1

    .line 2457
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz v0, :cond_0

    .line 2458
    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryItemView;->performVote()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onPlayerViewChanged$1$StoryListFragment(ILandroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 955
    iget-object p3, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget p3, p3, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 956
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 959
    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->playBtnClicked:Z

    const/4 v2, 0x4

    .line 960
    invoke-virtual {v0, v2}, Lcom/narvii/story/widgets/StoryItemView;->setPlayBtnVisibility(I)V

    .line 961
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/narvii/story/widgets/StoryItemView;->setLoadingViewVisibility(I)V

    .line 962
    invoke-direct {p0, p1, p2, v2}, Lcom/narvii/story/StoryListFragment;->prepareVideoView(ILandroid/view/View;Z)V

    .line 963
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, p3}, Lcom/narvii/nvplayer/INVPlayer;->seekToWindow(I)V

    const/4 p1, -0x1

    .line 964
    invoke-direct {p0, v1, p1}, Lcom/narvii/story/StoryListFragment;->setPlayWhenReady(ZI)V

    return-void
.end method

.method public synthetic lambda$onPlayerViewChanged$2$StoryListFragment(ILandroid/view/View;)V
    .locals 2

    .line 976
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-nez p2, :cond_0

    return-void

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget v1, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 980
    iget v0, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    invoke-virtual {p2, v0}, Lcom/narvii/story/widgets/StoryItemView;->setSceneIndex(I)V

    .line 981
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget p2, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/lit8 p1, p1, -0x1

    if-lt p2, p1, :cond_1

    .line 982
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/narvii/story/widgets/StoryItemView;->setNexBtnVisibility(I)V

    .line 984
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget p1, p1, Lcom/narvii/model/Blog;->currentWindowIndex:I

    if-lez p1, :cond_2

    .line 985
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/story/widgets/StoryItemView;->setPreBtnVisibility(I)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$onPlayerViewChanged$3$StoryListFragment(ILandroid/view/View;)V
    .locals 2

    .line 989
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-nez p2, :cond_0

    return-void

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget v1, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 993
    iget v0, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    invoke-virtual {p2, v0}, Lcom/narvii/story/widgets/StoryItemView;->setSceneIndex(I)V

    .line 994
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget p2, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    if-gtz p2, :cond_1

    .line 995
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/narvii/story/widgets/StoryItemView;->setPreBtnVisibility(I)V

    .line 997
    :cond_1
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget p2, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/lit8 p1, p1, -0x1

    if-ge p2, p1, :cond_2

    .line 998
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/story/widgets/StoryItemView;->setNexBtnVisibility(I)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$onStoryLongClicked$12$StoryListFragment(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x2

    .line 2581
    invoke-direct {p0, p1, v0}, Lcom/narvii/story/StoryListFragment;->setPlayWhenReady(ZI)V

    .line 2582
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryItemView;->resumeProgressAnimation()V

    .line 2583
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/narvii/story/widgets/StoryItemView;->setPlayBtnVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$0$StoryListFragment(Landroid/view/View;)V
    .locals 0

    .line 755
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public synthetic lambda$reAttachItemTouch$11$StoryListFragment()V
    .locals 2

    .line 2560
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    if-eqz v0, :cond_0

    .line 2561
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->dummyRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 2562
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->isShowingPageAboveVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2563
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setPlayPreAndNextButtons$4$StoryListFragment(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 1352
    iput-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->playBtnClicked:Z

    .line 1353
    iget p1, p0, Lcom/narvii/story/StoryListFragment;->currentPos:I

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/story/StoryListFragment;->onPlayerViewChanged(ILandroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setPlayPreAndNextButtons$5$StoryListFragment(ILandroid/view/View;)V
    .locals 2

    .line 1364
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-nez p2, :cond_0

    return-void

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget v1, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 1368
    iget v0, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    invoke-virtual {p2, v0}, Lcom/narvii/story/widgets/StoryItemView;->setSceneIndex(I)V

    .line 1369
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget p2, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/lit8 p1, p1, -0x1

    if-lt p2, p1, :cond_1

    .line 1370
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/narvii/story/widgets/StoryItemView;->setNexBtnVisibility(I)V

    .line 1372
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget p1, p1, Lcom/narvii/model/Blog;->currentWindowIndex:I

    if-lez p1, :cond_2

    .line 1373
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/story/widgets/StoryItemView;->setPreBtnVisibility(I)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$setPlayPreAndNextButtons$6$StoryListFragment(ILandroid/view/View;)V
    .locals 2

    .line 1377
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-nez p2, :cond_0

    return-void

    .line 1380
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget v1, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 1381
    iget v0, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    invoke-virtual {p2, v0}, Lcom/narvii/story/widgets/StoryItemView;->setSceneIndex(I)V

    .line 1382
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget p2, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    if-gtz p2, :cond_1

    .line 1383
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/narvii/story/widgets/StoryItemView;->setPreBtnVisibility(I)V

    .line 1385
    :cond_1
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget p2, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/lit8 p1, p1, -0x1

    if-ge p2, p1, :cond_2

    .line 1386
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/story/widgets/StoryItemView;->setNexBtnVisibility(I)V

    :cond_2
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 4

    .line 1411
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->active:Z

    if-eq v0, p1, :cond_d

    .line 1412
    iput-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->active:Z

    .line 1416
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-nez v0, :cond_0

    return-void

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz v0, :cond_1

    .line 1420
    invoke-virtual {v0, p1}, Lcom/narvii/story/widgets/StoryItemView;->onActiveChanged(Z)V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    .line 1423
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_3

    .line 1424
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->isShowingPageAboveVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v0, Lcom/narvii/story/StoryListFragment;->VOLUME_WHEN_PLAY_POLL_QUIZ:F

    :cond_2
    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 1425
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->addWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V

    .line 1426
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 1428
    :cond_3
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 1429
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->videoAutoPlay:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->playBtnClicked:Z

    if-eqz v0, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v2, :cond_a

    .line 1430
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayer/NVMediaSource;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1431
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1432
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoView;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 1433
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->isShowingPageAboveVideo()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1434
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/nvplayer/VideoLogHelper;->setNoLoggingNextPlay()V

    .line 1436
    :cond_6
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentWindowIndex()I

    move-result p1

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    if-eq p1, v0, :cond_7

    .line 1437
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->seekToWindow(I)V

    .line 1439
    :cond_7
    invoke-direct {p0, v1, v1}, Lcom/narvii/story/StoryListFragment;->setPlayWhenReady(ZI)V

    goto :goto_1

    .line 1442
    :cond_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_d

    .line 1443
    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->needToSeekBeforePlay:Z

    goto :goto_1

    .line 1447
    :cond_9
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v3}, Lcom/narvii/nvplayerview/NVVideoView;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/narvii/nvplayer/INVPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 1448
    invoke-direct {p0, v1, v1}, Lcom/narvii/story/StoryListFragment;->setPlayWhenReady(ZI)V

    .line 1449
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_d

    .line 1450
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    iget p1, p1, Lcom/narvii/model/Blog;->currentWindowIndex:I

    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->seekToWindow(I)V

    goto :goto_1

    .line 1455
    :cond_a
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->setPlayPreAndNextButtons()V

    goto :goto_1

    .line 1458
    :cond_b
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_c

    .line 1459
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->getParentMasterTabFragment()Lcom/narvii/master/MasterTabFragment;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 1461
    invoke-virtual {p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 1462
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eq p1, v2, :cond_c

    .line 1463
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object p1

    sget-object v2, Lcom/narvii/nvplayer/BufferingQuit;->TAB:Lcom/narvii/nvplayer/BufferingQuit;

    invoke-virtual {p1, v2}, Lcom/narvii/nvplayer/VideoLogHelper;->storyQuitOnBuffering(Lcom/narvii/nvplayer/BufferingQuit;)V

    .line 1467
    :cond_c
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_d

    .line 1468
    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    const/4 p1, 0x0

    .line 1469
    invoke-direct {p0, p1, v1}, Lcom/narvii/story/StoryListFragment;->setPlayWhenReady(ZI)V

    .line 1470
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->removeWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V

    :cond_d
    :goto_1
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 3

    .line 1538
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->guideViewHelper:Lcom/narvii/story/widgets/GuideViewHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/story/widgets/GuideViewHelper;->pressBackKey(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1542
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v2, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1543
    instance-of v2, v0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;

    if-nez v2, :cond_1

    .line 1544
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1547
    :cond_1
    instance-of p1, v0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;

    if-eqz p1, :cond_2

    .line 1548
    check-cast v0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;

    invoke-virtual {v0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->dismiss()V

    return v1

    .line 1552
    :cond_2
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetBehavior;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    .line 1553
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryListFragment;->changeBottomSheetBehaviorState(I)V

    return v1

    .line 1556
    :cond_3
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_4

    .line 1557
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->removeBottomSheetFragment()V

    .line 1560
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object p1

    sget-object v0, Lcom/narvii/nvplayer/BufferingQuit;->BACK:Lcom/narvii/nvplayer/BufferingQuit;

    invoke-virtual {p1, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->storyQuitOnBuffering(Lcom/narvii/nvplayer/BufferingQuit;)V

    .line 1562
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->tryUploadQuizResult()V

    .line 1564
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz p1, :cond_5

    .line 1565
    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryItemView;->hidePollQuiz()V

    .line 1568
    :cond_5
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->dismissCurrentPage()Z

    move-result p1

    return p1
.end method

.method public onBottomSheetHide()V
    .locals 1

    const/4 v0, 0x4

    .line 2483
    invoke-direct {p0, v0}, Lcom/narvii/story/StoryListFragment;->changeBottomSheetBehaviorState(I)V

    return-void
.end method

.method public onBottomSheetShow(I)V
    .locals 7

    .line 2410
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryItemView;->isFansOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2411
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryItemView;->performBecomeFansClick()V

    return-void

    .line 2415
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 2416
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->parentView:Landroid/view/View;

    const v1, 0x7f090158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/narvii/story/StoryListFragment;->setBottomSheetLayout(Landroid/widget/FrameLayout;)V

    .line 2418
    :cond_1
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->getCurrentBlog()Lcom/narvii/model/Blog;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 2422
    :cond_2
    iget v1, p0, Lcom/narvii/story/StoryListFragment;->type:I

    const/4 v2, 0x3

    if-ne v1, p1, :cond_3

    .line 2423
    invoke-direct {p0, v2}, Lcom/narvii/story/StoryListFragment;->changeBottomSheetBehaviorState(I)V

    return-void

    .line 2426
    :cond_3
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->removeBottomSheetFragment()V

    .line 2427
    iput p1, p0, Lcom/narvii/story/StoryListFragment;->type:I

    .line 2429
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->defaultBottomLayout:Landroid/widget/FrameLayout;

    if-ne v1, v3, :cond_4

    const v1, 0x7f09033a

    goto :goto_0

    :cond_4
    const v1, 0x7f09014c

    .line 2430
    :goto_0
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/narvii/story/StoryListFragment;->defaultBottomLayout:Landroid/widget/FrameLayout;

    if-ne v3, v4, :cond_5

    const-string v3, "defaultBottomSheetFragment"

    goto :goto_1

    :cond_5
    const-string v3, "bottomSheetFragment"

    :goto_1
    const-string v4, "community"

    const-string v5, "blog"

    if-eqz p1, :cond_9

    const/4 v6, 0x1

    if-eq p1, v6, :cond_6

    goto/16 :goto_2

    .line 2433
    :cond_6
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyCommentFragment:Lcom/narvii/story/comment/StoryCommentListFragment;

    if-nez p1, :cond_7

    .line 2434
    new-instance p1, Lcom/narvii/story/comment/StoryCommentListFragment;

    invoke-direct {p1}, Lcom/narvii/story/comment/StoryCommentListFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyCommentFragment:Lcom/narvii/story/comment/StoryCommentListFragment;

    .line 2436
    :cond_7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2440
    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->takeLogContextInfoWhenStartPage(Landroid/os/Bundle;)V

    .line 2441
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    iget-object v5, p0, Lcom/narvii/story/StoryListFragment;->communityMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyCommentFragment:Lcom/narvii/story/comment/StoryCommentListFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2444
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyCommentFragment:Lcom/narvii/story/comment/StoryCommentListFragment;

    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    .line 2445
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->defaultBottomLayout:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_8

    .line 2446
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v1, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_2

    .line 2448
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v1, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_2

    .line 2453
    :cond_9
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyLikeFragment:Lcom/narvii/story/vote/StoryVoteListFragment;

    if-nez p1, :cond_a

    .line 2454
    new-instance p1, Lcom/narvii/story/vote/StoryVoteListFragment;

    invoke-direct {p1}, Lcom/narvii/story/vote/StoryVoteListFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyLikeFragment:Lcom/narvii/story/vote/StoryVoteListFragment;

    .line 2455
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyLikeFragment:Lcom/narvii/story/vote/StoryVoteListFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/story/vote/StoryVoteListFragment;->setBottomSheetListener(Lcom/narvii/story/IStoryBottomSheetListener;)V

    .line 2456
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyLikeFragment:Lcom/narvii/story/vote/StoryVoteListFragment;

    new-instance v6, Lcom/narvii/story/-$$Lambda$StoryListFragment$kfZoMnuUjzOEt9MPDXL9FocCxWs;

    invoke-direct {v6, p0}, Lcom/narvii/story/-$$Lambda$StoryListFragment$kfZoMnuUjzOEt9MPDXL9FocCxWs;-><init>(Lcom/narvii/story/StoryListFragment;)V

    invoke-virtual {p1, v6}, Lcom/narvii/story/vote/StoryVoteListFragment;->setStoryVoteListener(Lcom/narvii/story/vote/StoryVoteListFragment$IStoryVoteListener;)V

    .line 2461
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2462
    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->takeLogContextInfoWhenStartPage(Landroid/os/Bundle;)V

    .line 2463
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    iget-object v5, p0, Lcom/narvii/story/StoryListFragment;->communityMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyLikeFragment:Lcom/narvii/story/vote/StoryVoteListFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2467
    :cond_a
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyLikeFragment:Lcom/narvii/story/vote/StoryVoteListFragment;

    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    .line 2468
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->defaultBottomLayout:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_b

    .line 2469
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v1, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_2

    .line 2471
    :cond_b
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v1, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2478
    :goto_2
    invoke-direct {p0, v2}, Lcom/narvii/story/StoryListFragment;->changeBottomSheetBehaviorState(I)V

    return-void
.end method

.method public onCachedBytesRead(JJ)V
    .locals 0

    .line 1213
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1214
    new-instance p1, Lcom/narvii/story/StoryListFragment$6;

    invoke-direct {p1, p0}, Lcom/narvii/story/StoryListFragment$6;-><init>(Lcom/narvii/story/StoryListFragment;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1601
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090102

    if-eq p1, v0, :cond_1

    const v0, 0x7f090148

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1606
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetBehavior;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 p1, 0x4

    .line 1607
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryListFragment;->changeBottomSheetBehaviorState(I)V

    goto :goto_0

    .line 1603
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0, p1}, Lcom/narvii/story/StoryListFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 481
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "content_language"

    .line 483
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    const-string v0, "config"

    .line 484
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->configService:Lcom/narvii/config/ConfigService;

    const-string v0, "account"

    .line 485
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "community"

    .line 486
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 487
    sget-object v0, Lcom/narvii/story/StoryListFragment;->KEY_FEED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Blog;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->initFeed:Lcom/narvii/model/Blog;

    .line 488
    sget-object v0, Lcom/narvii/story/StoryListFragment;->KEY_FEED_COMMUNITY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Community;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 490
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->communityMapping:Landroid/util/SparseArray;

    iget v2, v0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 492
    :goto_0
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->communityMapping:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 493
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->communityMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 494
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->communityMapping:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Community;

    if-eqz v2, :cond_1

    .line 496
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->communityService:Lcom/narvii/community/CommunityService;

    invoke-virtual {v3, v2}, Lcom/narvii/community/CommunityService;->updateLiteCommunity(Lcom/narvii/model/Community;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    :cond_2
    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/story/StoryListFragment;->storyType:Ljava/lang/String;

    .line 501
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->storyType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "discover-list"

    .line 502
    iput-object v1, p0, Lcom/narvii/story/StoryListFragment;->storyType:Ljava/lang/String;

    .line 504
    :cond_3
    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_IMMERSION_MODE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->isImmersionMode:Z

    const-string v1, "preview"

    .line 505
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->isPreview:Z

    .line 506
    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_TOPIC_ID:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/narvii/story/StoryListFragment;->topicId:I

    .line 507
    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_AUTO_LOAD_NEXT_PAGE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->autoLoadNextPage:Z

    .line 508
    iget-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->isPreview:Z

    if-eqz v1, :cond_4

    .line 509
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->autoLoadNextPage:Z

    :cond_4
    const/4 v1, 0x0

    .line 511
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 512
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->findTargetPositionInSharedDatasource()V

    .line 515
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 516
    sget-object v1, Lcom/narvii/story/StoryListFragment;->SHOW_IN_SAME_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 517
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->isAtionBarShown:Z

    .line 519
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    :cond_6
    if-eqz p1, :cond_7

    .line 523
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->runnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 525
    :cond_7
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 528
    :goto_1
    sget-object v1, Lcom/narvii/story/StoryListFragment;->ACTIVITY_VISIBLE_HINT_EXCLUSIVE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 529
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 531
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    if-eq v3, p0, :cond_8

    .line 533
    invoke-virtual {v3, v0}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    goto :goto_2

    .line 540
    :cond_9
    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_FORCE_VIDEO_AUTO_PLAY:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 542
    iput-boolean v2, p0, Lcom/narvii/story/StoryListFragment;->videoAutoPlay:Z

    goto :goto_3

    .line 544
    :cond_a
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->updateWifiActive()V

    .line 545
    invoke-virtual {p0}, Lcom/narvii/story/StoryListFragment;->updateVideoAutoPlay()V

    .line 546
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->registerWifiStateChangeListener(Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;)V

    .line 547
    sget-object v1, Lcom/narvii/setting/VideoAutoPlayService;->INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

    invoke-virtual {v1, p0}, Lcom/narvii/setting/VideoAutoPlayService;->registerVideoAutoPlayChangeListener(Lcom/narvii/setting/VideoAutoPlayChangeListener;)V

    .line 549
    :goto_3
    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_SPECIFIC_PATH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/story/StoryListFragment;->specificPath:Ljava/lang/String;

    .line 550
    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_SPECIFIC_PARAMS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/narvii/util/JacksonUtils;->readMapAs(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/story/StoryListFragment;->specificParams:Ljava/util/HashMap;

    .line 551
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v1, v3, :cond_b

    const/4 v1, 0x1

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->needToSeekBeforePlay:Z

    .line 552
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    new-instance v1, Lcom/narvii/story/widgets/GuideViewHelper;

    invoke-direct {v1, p0}, Lcom/narvii/story/widgets/GuideViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/story/StoryListFragment;->guideViewHelper:Lcom/narvii/story/widgets/GuideViewHelper;

    if-eqz p1, :cond_c

    const-string v1, "isAtionBarShown"

    .line 556
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->isAtionBarShown:Z

    const-string v1, "manualSetPlayer"

    .line 557
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->manualSetPlayer:Z

    .line 559
    :cond_c
    sget-object p1, Lcom/narvii/story/StoryListFragment;->KEY_JUST_CREATED:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 560
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "scenario_create_post"

    .line 561
    invoke-virtual {p1, v0}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    .line 563
    :cond_d
    new-instance p1, Lcom/narvii/story/StoryDownloadHelper;

    invoke-direct {p1, p0}, Lcom/narvii/story/StoryDownloadHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyDownloadHelper:Lcom/narvii/story/StoryDownloadHelper;

    .line 564
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyDownloadHelper:Lcom/narvii/story/StoryDownloadHelper;

    new-instance v0, Lcom/narvii/story/StoryListFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/story/StoryListFragment$3;-><init>(Lcom/narvii/story/StoryListFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryDownloadHelper;->setDownloadClickListener(Lcom/narvii/story/StoryDownloadHelper$OnStoryDownloadClickListener;)V

    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const-string v3, "targetWidth"

    .line 694
    invoke-virtual {v0, v3, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "targetHeight"

    .line 695
    invoke-virtual {v0, v4, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "cellWidth"

    .line 696
    invoke-virtual {v0, v5, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "cellHeight"

    .line 697
    invoke-virtual {v0, v6, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "centerX"

    .line 698
    invoke-virtual {v0, v7, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "centerY"

    .line 699
    invoke-virtual {v0, v8, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v8

    int-to-float v9, v5

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v9, v9, v10

    int-to-float v11, v3

    div-float/2addr v9, v11

    int-to-float v12, v6

    mul-float v12, v12, v10

    int-to-float v13, v4

    div-float/2addr v12, v13

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    if-nez v8, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x1001

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/4 v4, 0x2

    if-ne v1, v3, :cond_1

    if-eqz p2, :cond_2

    .line 707
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v4, [F

    aput v9, v3, v2

    aput v10, v3, v16

    invoke-static {v15, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 708
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v4, [F

    aput v12, v9, v2

    aput v10, v9, v16

    invoke-static {v15, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 709
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v4, [F

    int-to-float v7, v7

    div-float/2addr v11, v14

    sub-float/2addr v7, v11

    aput v7, v10, v2

    aput v6, v10, v16

    invoke-static {v15, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 710
    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v4, [F

    int-to-float v8, v8

    div-float/2addr v13, v14

    sub-float/2addr v8, v13

    aput v8, v10, v2

    aput v6, v10, v16

    invoke-static {v15, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 711
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v9, 0x12c

    .line 712
    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v2

    aput-object v3, v5, v16

    aput-object v7, v5, v4

    const/4 v1, 0x3

    aput-object v6, v5, v1

    .line 713
    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v8

    :cond_1
    const/16 v3, 0x2002

    if-ne v1, v3, :cond_2

    if-nez p2, :cond_2

    .line 718
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v4, [F

    aput v10, v3, v2

    aput v9, v3, v16

    invoke-static {v15, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 719
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v4, [F

    aput v10, v9, v2

    aput v12, v9, v16

    invoke-static {v15, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 720
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v4, [F

    aput v6, v10, v2

    int-to-float v7, v7

    div-float/2addr v11, v14

    sub-float/2addr v7, v11

    aput v7, v10, v16

    invoke-static {v15, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 721
    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v4, [F

    aput v6, v10, v2

    int-to-float v6, v8

    div-float/2addr v13, v14

    sub-float/2addr v6, v13

    aput v6, v10, v16

    invoke-static {v15, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 722
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v9, 0xc8

    .line 723
    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v2

    aput-object v3, v5, v16

    aput-object v7, v5, v4

    const/4 v1, 0x3

    aput-object v6, v5, v1

    .line 724
    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v8

    .line 728
    :cond_2
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    .line 703
    :cond_3
    :goto_0
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02f5

    const/4 v0, 0x0

    .line 734
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->parentView:Landroid/view/View;

    .line 735
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->parentView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1488
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroy()V

    .line 1489
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    .line 1490
    invoke-interface {v0, p0}, Lcom/narvii/nvplayer/INVPlayer;->removeWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V

    .line 1491
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, p0}, Lcom/narvii/nvplayer/INVPlayer;->clearVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 1493
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->unRegisterWifiStateChangeListener(Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;)V

    .line 1494
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

    invoke-virtual {v0, p0}, Lcom/narvii/setting/VideoAutoPlayService;->unRegisterVideoAutoPlayChangeListener(Lcom/narvii/setting/VideoAutoPlayChangeListener;)V

    .line 1495
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 1496
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->removeBottomSheetFragment()V

    .line 1498
    :cond_1
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->destroyStoryVoteAndCommentFragment()V

    return-void
.end method

.method public onErrorDebug(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 1

    .line 1268
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->videoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setErrorText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 1

    const/4 v0, 0x0

    .line 1261
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->playBtnClicked:Z

    const/4 v0, 0x1

    .line 1262
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->isPlayError:Z

    .line 1263
    invoke-virtual {p0, p1}, Lcom/narvii/story/StoryListFragment;->onErrorDebug(Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 4

    .line 1225
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->videoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    invoke-virtual {v0, p2}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setPlayerStatus(I)V

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz v0, :cond_8

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne p2, v1, :cond_2

    if-eqz p1, :cond_4

    .line 1231
    iget-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->mediaSourceCached:Z

    if-eqz p1, :cond_1

    .line 1232
    iput-boolean v3, p0, Lcom/narvii/story/StoryListFragment;->mediaSourceCached:Z

    return-void

    .line 1235
    :cond_1
    invoke-virtual {v0, v3}, Lcom/narvii/story/widgets/StoryItemView;->setLoadingViewVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    if-ne p2, v2, :cond_3

    .line 1238
    invoke-virtual {v0, p1}, Lcom/narvii/story/widgets/StoryItemView;->setLoadingViewVisibility(I)V

    goto :goto_0

    :cond_3
    if-ne p2, p1, :cond_4

    .line 1239
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/narvii/nvplayer/NVMediaSource;->isPollOrQuiz()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/narvii/story/StoryListFragment;->currentPos:I

    if-ltz p1, :cond_4

    .line 1240
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryListFragment;->preloadCurrentStory(I)V

    :cond_4
    :goto_0
    if-ne p2, v2, :cond_5

    .line 1243
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1244
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryItemView;->resumeProgressAnimation()V

    goto :goto_1

    .line 1247
    :cond_5
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryItemView;->pauseProgressAnimation()V

    :cond_6
    :goto_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_7

    .line 1249
    iget-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->isPlayError:Z

    if-eqz p1, :cond_7

    .line 1250
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->setPlayPreAndNextButtons()V

    goto :goto_2

    .line 1252
    :cond_7
    iput-boolean v3, p0, Lcom/narvii/story/StoryListFragment;->isPlayError:Z

    :cond_8
    :goto_2
    return-void
.end method

.method protected onPlayerViewChanged(ILandroid/view/View;)V
    .locals 8

    .line 900
    iput p1, p0, Lcom/narvii/story/StoryListFragment;->currentPos:I

    const/4 v0, 0x0

    .line 901
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->playerViewNull:Z

    .line 902
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onPlayerViewChanged(ILandroid/view/View;)V

    .line 904
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->destroyStoryVoteAndCommentFragment()V

    const/4 v1, 0x1

    .line 905
    invoke-direct {p0, v1}, Lcom/narvii/story/StoryListFragment;->hideInterstitialPage(Z)V

    .line 907
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->pendingClickNext:Z

    if-nez p2, :cond_0

    .line 909
    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->playerViewNull:Z

    return-void

    :cond_0
    const v2, 0x7f090ae3

    .line 913
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/story/widgets/StoryItemView;

    iput-object v3, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    .line 914
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz v3, :cond_1

    .line 915
    invoke-virtual {v3, p0}, Lcom/narvii/story/widgets/StoryItemView;->setBottomSheetListener(Lcom/narvii/story/IStoryBottomSheetListener;)V

    .line 916
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v3, p0}, Lcom/narvii/story/widgets/StoryItemView;->setStoryShareListener(Lcom/narvii/story/IStoryShareListener;)V

    .line 917
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v3, p0}, Lcom/narvii/story/widgets/StoryItemView;->setStoryLongClickListener(Lcom/narvii/story/IStoryLongClickListener;)V

    .line 918
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v3, v3, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    invoke-virtual {v3, p0}, Lcom/narvii/widgets/StoryProgressBar;->setStoryQuizPollPlayListener(Lcom/narvii/widgets/IStoryPollQuizPlayListener;)V

    .line 920
    :cond_1
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-nez v3, :cond_2

    .line 921
    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->playerViewNull:Z

    return-void

    .line 925
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/story/widgets/StoryItemView;->pauseProgressAnimation()V

    .line 926
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    .line 927
    invoke-direct {p0, v0, v3}, Lcom/narvii/story/StoryListFragment;->setPlayWhenReady(ZI)V

    .line 928
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v3}, Lcom/narvii/nvplayer/INVPlayer;->reset()V

    .line 932
    :cond_3
    iget-object v3, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    .line 933
    :goto_0
    iget-object v4, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 934
    iget-object v4, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 935
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 936
    instance-of v5, v4, Lcom/narvii/story/widgets/StoryItemView;

    if-eqz v5, :cond_4

    .line 937
    iget-object v5, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eq v4, v5, :cond_4

    .line 938
    check-cast v4, Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v4, v0}, Lcom/narvii/story/widgets/StoryItemView;->changeInterstitialPageId(Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 943
    :cond_5
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v2, v1}, Lcom/narvii/story/widgets/StoryItemView;->changeInterstitialPageId(Z)V

    .line 945
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/narvii/story/widgets/StoryItemView;->setPlayBtnVisibility(I)V

    .line 946
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v2, v3}, Lcom/narvii/story/widgets/StoryItemView;->setLoadingViewVisibility(I)V

    .line 947
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz v2, :cond_7

    iget-boolean v4, v2, Lcom/narvii/model/Feed;->needHidden:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/narvii/story/StoryListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/narvii/model/Blog;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    .line 948
    :goto_1
    iget-boolean v4, p0, Lcom/narvii/story/StoryListFragment;->videoAutoPlay:Z

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/narvii/story/StoryListFragment;->playBtnClicked:Z

    if-eqz v4, :cond_9

    :cond_8
    if-eqz v2, :cond_a

    :cond_9
    const/4 v2, 0x1

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    .line 949
    :goto_2
    iget-object v4, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    xor-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lcom/narvii/story/widgets/StoryItemView;->setStoryPlayEnable(Z)V

    if-eqz v2, :cond_10

    .line 951
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->handleLastStoryItemView()V

    .line 952
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const v4, 0x7f09083e

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/EasyButton;

    .line 953
    iget-object v4, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v4, v0}, Lcom/narvii/story/widgets/StoryItemView;->setPlayBtnVisibility(I)V

    .line 954
    new-instance v4, Lcom/narvii/story/-$$Lambda$StoryListFragment$ah8YdqHcRqmMd2ED0lracUpkGNY;

    invoke-direct {v4, p0, p1, p2}, Lcom/narvii/story/-$$Lambda$StoryListFragment$ah8YdqHcRqmMd2ED0lracUpkGNY;-><init>(Lcom/narvii/story/StoryListFragment;ILandroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 966
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-nez p1, :cond_b

    goto :goto_4

    .line 969
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_e

    .line 971
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const v2, 0x7f09075c

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/EasyButton;

    .line 972
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const v4, 0x7f0908bd

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/EasyButton;

    .line 973
    iget-object v4, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v5, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget v5, v5, Lcom/narvii/model/Blog;->currentWindowIndex:I

    if-lez v5, :cond_c

    const/4 v5, 0x0

    goto :goto_3

    :cond_c
    const/4 v5, 0x4

    :goto_3
    invoke-virtual {v4, v5}, Lcom/narvii/story/widgets/StoryItemView;->setPreBtnVisibility(I)V

    .line 974
    iget-object v4, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v5, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget v6, v5, Lcom/narvii/model/Blog;->currentWindowIndex:I

    iget-object v5, v5, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-lt v6, v5, :cond_d

    const/4 v0, 0x4

    :cond_d
    invoke-virtual {v4, v0}, Lcom/narvii/story/widgets/StoryItemView;->setNexBtnVisibility(I)V

    .line 975
    new-instance v0, Lcom/narvii/story/-$$Lambda$StoryListFragment$ofMm0YkrBcEBycl-ViwDvXrK8Ic;

    invoke-direct {v0, p0, p1}, Lcom/narvii/story/-$$Lambda$StoryListFragment$ofMm0YkrBcEBycl-ViwDvXrK8Ic;-><init>(Lcom/narvii/story/StoryListFragment;I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    new-instance p2, Lcom/narvii/story/-$$Lambda$StoryListFragment$8GGHf7IIWlfzRmQD14mhT0GkHqc;

    invoke-direct {p2, p0, p1}, Lcom/narvii/story/-$$Lambda$StoryListFragment$8GGHf7IIWlfzRmQD14mhT0GkHqc;-><init>(Lcom/narvii/story/StoryListFragment;I)V

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1002
    :cond_e
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->lastStoryItemView:Ljava/lang/ref/WeakReference;

    :cond_f
    :goto_4
    return-void

    .line 1005
    :cond_10
    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/story/StoryListFragment;->prepareVideoView(ILandroid/view/View;Z)V

    .line 1006
    iget-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->autoLoadNextPage:Z

    if-eqz p1, :cond_11

    iget p1, p0, Lcom/narvii/story/StoryListFragment;->currentPos:I

    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getSize()I

    move-result p2

    sub-int/2addr p2, v1

    if-ge p1, p2, :cond_11

    const/4 v6, 0x1

    goto :goto_5

    :cond_11
    const/4 v6, 0x0

    .line 1008
    :goto_5
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1009
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v4, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->communityMapping:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/narvii/model/Community;

    invoke-virtual {p0}, Lcom/narvii/story/StoryListFragment;->isShowingPopupViews()Z

    move-result p1

    xor-int/lit8 v7, p1, 0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/story/widgets/StoryItemView;->initInterstitialPage(Landroid/support/v4/app/Fragment;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;ZZ)V

    :cond_12
    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onPositionDiscontinuity(Lcom/narvii/nvplayer/IVideoListener;I)V

    return-void
.end method

.method public onPreloadStrategyChanged(Ljava/lang/String;)V
    .locals 1

    .line 1397
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->videoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setPreloadText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRenderFirstFrameInterval(J)V
    .locals 1

    .line 1196
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->videoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setFromSettingToFirstFrameText(J)V

    :cond_0
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .line 1183
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryItemView;->getCoverImg()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    if-eqz v0, :cond_1

    .line 1188
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->getCurrentBlog()Lcom/narvii/model/Blog;

    move-result-object v0

    .line 1189
    invoke-direct {p0, v0}, Lcom/narvii/story/StoryListFragment;->showStoryGuide(Lcom/narvii/model/Feed;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 630
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onResume()V

    .line 631
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 583
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 584
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->isAtionBarShown:Z

    const-string v1, "isAtionBarShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 585
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 586
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->seekToWindow(I)V

    :cond_0
    const/4 v0, 0x1

    const-string v1, "manualSetPlayer"

    .line 588
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onScenePlayEnd(Ljava/lang/String;)V
    .locals 9

    const/4 p1, 0x0

    .line 251
    iput-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->playingPollOrQuiz:Z

    .line 252
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->onPlayPollQuizChanged()V

    .line 253
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryItemView;->hidePollQuiz()V

    .line 257
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 260
    :cond_1
    iget v0, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v0, v1, :cond_2

    .line 261
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, v3}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 262
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->seekToWindow(I)V

    .line 263
    invoke-direct {p0, v2, p1}, Lcom/narvii/story/StoryListFragment;->setPlayWhenReady(ZI)V

    goto/16 :goto_1

    .line 264
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->isPreview:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget v1, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    iget-object v0, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne v1, v0, :cond_5

    .line 265
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    sget v1, Lcom/narvii/story/StoryListFragment;->VOLUME_WHEN_PLAY_POLL_QUIZ:F

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 266
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->containsSceneQuiz()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {p0}, Lcom/narvii/story/StoryListFragment;->getQuizQuestionResult()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/story/StoryListFragment;->isShowingPopupViews()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/narvii/story/widgets/StoryItemView;->showQuizResult(Ljava/util/List;Z)V

    .line 268
    iput-boolean v2, p0, Lcom/narvii/story/StoryListFragment;->showingQuizResult:Z

    .line 269
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->onPlayPollQuizChanged()V

    goto :goto_1

    .line 271
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->autoLoadNextPage:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/narvii/story/StoryListFragment;->currentPos:I

    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getSize()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    .line 272
    :goto_0
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v5, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->communityMapping:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/narvii/model/Community;

    invoke-virtual {p0}, Lcom/narvii/story/StoryListFragment;->isShowingPopupViews()Z

    move-result p1

    xor-int/lit8 v8, p1, 0x1

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/narvii/story/widgets/StoryItemView;->showInterstitialPage(Landroid/support/v4/app/Fragment;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;ZZ)V

    .line 273
    iput-boolean v2, p0, Lcom/narvii/story/StoryListFragment;->interstitialPageShow:Z

    .line 274
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->reAttachItemTouch()V

    goto :goto_1

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, v3}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 278
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->seekToWindow(I)V

    .line 279
    invoke-direct {p0, v2, p1}, Lcom/narvii/story/StoryListFragment;->setPlayWhenReady(ZI)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onScenePlayRecordGenerated(Ljava/lang/String;Lcom/narvii/scene/ScenePlayRecord;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 235
    iget v0, p2, Lcom/narvii/scene/ScenePlayRecord;->interactionType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->pollPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->quizPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {p1}, Lcom/narvii/widgets/StoryProgressBar;->updatePlayedPollQuiz()V

    :cond_2
    return-void
.end method

.method protected onScrollNext(Landroid/view/View;Landroid/view/View;II)V
    .locals 3

    .line 863
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/paging/NVRecyclerViewFragment;->onScrollNext(Landroid/view/View;Landroid/view/View;II)V

    .line 864
    iget-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->pendingClickNext:Z

    if-nez p1, :cond_5

    .line 867
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    if-eqz p1, :cond_5

    .line 868
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    .line 869
    invoke-virtual {p1, p3}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    .line 870
    instance-of v0, p2, Lcom/narvii/model/Blog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 871
    check-cast p2, Lcom/narvii/model/Blog;

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 874
    :goto_0
    invoke-virtual {p1, p4}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    .line 875
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    .line 876
    check-cast p1, Lcom/narvii/model/Blog;

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 879
    :goto_1
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-direct {p0, p4, p3}, Lcom/narvii/story/StoryListFragment;->getScrollActType(II)Lcom/narvii/logging/ActType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    if-le p4, p3, :cond_2

    sget-object p3, Lcom/narvii/logging/ActSemantic;->nextStory:Lcom/narvii/logging/ActSemantic;

    goto :goto_2

    :cond_2
    sget-object p3, Lcom/narvii/logging/ActSemantic;->preStory:Lcom/narvii/logging/ActSemantic;

    :goto_2
    invoke-virtual {v0, p3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p3

    if-nez p2, :cond_3

    const/4 p4, 0x0

    goto :goto_3

    :cond_3
    iget p4, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 880
    :goto_3
    invoke-static {p2, p4}, Lcom/narvii/util/StoryUtils;->getSceneId(Lcom/narvii/model/Blog;I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "currentSceneId"

    invoke-virtual {p3, p4, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    if-eqz p1, :cond_4

    .line 881
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string p1, "targetStoryId"

    invoke-virtual {p2, p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 882
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_5
    return-void
.end method

.method public onShareStory(Lcom/narvii/model/Blog;)V
    .locals 1

    .line 306
    new-instance v0, Lcom/narvii/story/StoryListFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/narvii/story/StoryListFragment$1;-><init>(Lcom/narvii/story/StoryListFragment;Lcom/narvii/app/NVContext;)V

    invoke-static {p0, p1, v0}, Lcom/narvii/share/ShareDialog;->getShareDialogFromStory(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/share/ShareButtonSaveStory;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->shareDialog:Lcom/narvii/share/ShareDialog;

    .line 318
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->shareDialog:Lcom/narvii/share/ShareDialog;

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    return-void
.end method

.method protected onSnapPotionChanged(IILjava/lang/Object;)V
    .locals 2

    .line 803
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/NVRecyclerViewFragment;->onSnapPotionChanged(IILjava/lang/Object;)V

    .line 804
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->tryUploadQuizResult()V

    const/4 v0, 0x0

    .line 806
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->isPlayError:Z

    .line 807
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->pauseVideo()V

    .line 808
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz v1, :cond_0

    .line 809
    iput v0, v1, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 811
    :cond_0
    instance-of v0, p3, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    .line 812
    check-cast p3, Lcom/narvii/model/Blog;

    iput-object p3, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    .line 814
    :cond_1
    iget-object p3, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {p3, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/narvii/model/Blog;

    if-eqz p3, :cond_2

    .line 815
    iget-object p3, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {p3, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Blog;

    iput-object p3, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    .line 818
    :cond_2
    iget-object p3, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz p3, :cond_4

    .line 819
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->communityMapping:Landroid/util/SparseArray;

    invoke-virtual {p3}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    if-nez p3, :cond_3

    .line 820
    iget-object p3, p0, Lcom/narvii/story/StoryListFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p3

    if-nez p3, :cond_3

    .line 821
    iget-object p3, p0, Lcom/narvii/story/StoryListFragment;->communityService:Lcom/narvii/community/CommunityService;

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v0

    new-instance v1, Lcom/narvii/story/StoryListFragment$5;

    invoke-direct {v1, p0}, Lcom/narvii/story/StoryListFragment$5;-><init>(Lcom/narvii/story/StoryListFragment;)V

    invoke-virtual {p3, v0, v1}, Lcom/narvii/community/CommunityService;->fetchLiteCommunity(ILcom/narvii/util/Callback;)V

    .line 832
    :cond_3
    iget-object p3, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget-object p3, p3, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->pollPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/narvii/scene/poll/PollExtensionKt;->initPollPlayRecord(Ljava/util/List;Ljava/util/HashMap;Z)V

    .line 835
    :cond_4
    invoke-direct {p0, p2}, Lcom/narvii/story/StoryListFragment;->notifyItemChange(I)V

    .line 836
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {p2}, Lcom/narvii/widget/recycleview/NVRecyclerView;->getFirstVisiblePosition()I

    move-result p2

    sub-int/2addr p1, p2

    if-ltz p1, :cond_5

    .line 837
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 838
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090ae3

    .line 839
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 840
    instance-of p2, p1, Lcom/narvii/story/widgets/StoryItemView;

    if-eqz p2, :cond_5

    .line 841
    check-cast p1, Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryItemView;->resetIndex()V

    .line 844
    :cond_5
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz p1, :cond_6

    .line 845
    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryItemView;->resetIndex()V

    .line 846
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    iget-object p1, p1, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    invoke-virtual {p1}, Lcom/narvii/widgets/StoryProgressBar;->updatePlayedPollQuiz()V

    .line 848
    :cond_6
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->resetPollQuiz()V

    return-void
.end method

.method public onStoryLongClicked()V
    .locals 3

    .line 2573
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryItemView;->isPlayBtnVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2576
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryItemView;->pauseProgressAnimation()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2577
    invoke-direct {p0, v1, v0}, Lcom/narvii/story/StoryListFragment;->setPlayWhenReady(ZI)V

    .line 2578
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const v2, 0x7f09083e

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/EasyButton;

    .line 2579
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2580
    new-instance v1, Lcom/narvii/story/-$$Lambda$StoryListFragment$cScypPf4iWPft7yYSBCOHY34nfI;

    invoke-direct {v1, p0}, Lcom/narvii/story/-$$Lambda$StoryListFragment$cScypPf4iWPft7yYSBCOHY34nfI;-><init>(Lcom/narvii/story/StoryListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onSurfaceSizeChanged(Lcom/narvii/nvplayer/IVideoListener;II)V

    return-void
.end method

.method public onSwipeDown()V
    .locals 0

    .line 2554
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->reAttachItemTouch()V

    return-void
.end method

.method public onSwipeUp()V
    .locals 5

    .line 2541
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    .line 2542
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getStoryLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2544
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getPlayerView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget-boolean v3, p0, Lcom/narvii/story/StoryListFragment;->isPreview:Z

    invoke-static {v1, v2, v3}, Lcom/narvii/util/StoryUtils;->getLogEventClickBuilder(Landroid/view/View;Lcom/narvii/model/Blog;Z)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v2, "VideoArea"

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/narvii/logging/ActType;->upScroll:Lcom/narvii/logging/ActType;

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 2545
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getPlayerView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/paging/PageViewUtils;->getPageViewParent(Landroid/view/View;)Lcom/narvii/paging/PageView;

    move-result-object v1

    .line 2546
    new-instance v2, Lcom/narvii/story/StoryLinkHelper;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-direct {v2, v1}, Lcom/narvii/story/StoryLinkHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->isPreview:Z

    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->communityMapping:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Community;

    invoke-virtual {v2, v0, v1, v3}, Lcom/narvii/story/StoryLinkHelper;->openLink(Lcom/narvii/model/LinkSummary;ZLcom/narvii/model/Community;)V

    .line 2549
    :cond_1
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->reAttachItemTouch()V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->setVideoSize(II)V

    .line 1206
    :cond_0
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->videoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setResolutionText(II)V

    :cond_1
    return-void
.end method

.method public synthetic onVideoSizeChanged(IIIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onVideoSizeChanged(Lcom/narvii/nvplayer/IVideoListener;IIIF)V

    return-void
.end method

.method public onVideoSupportLowResVideo(Z)V
    .locals 1

    .line 1404
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->videoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    invoke-virtual {v0, p1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setSupportLowResText(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 741
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0903b1

    .line 742
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->dummyRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/high16 v0, -0x1000000

    .line 743
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 744
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 746
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollingTouchSlop(I)V

    :cond_0
    const v0, 0x7f090102

    .line 748
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->btnBack:Landroid/view/View;

    .line 749
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->btnBack:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->isPreview:Z

    if-eqz v0, :cond_2

    const v0, 0x7f090048

    .line 751
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f090b5b

    .line 752
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0f0275

    .line 753
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 754
    sget-object v4, Lcom/narvii/story/StoryListFragment;->KEY_BACK_DIRECTLY:Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 755
    new-instance v4, Lcom/narvii/story/-$$Lambda$StoryListFragment$FlPq08sn_QIHlJlw2Fqukomq7DM;

    invoke-direct {v4, p0}, Lcom/narvii/story/-$$Lambda$StoryListFragment$FlPq08sn_QIHlJlw2Fqukomq7DM;-><init>(Lcom/narvii/story/StoryListFragment;)V

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/narvii/app/NVActivity;->BACK_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->btnBack:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 760
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_3

    .line 761
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    const-string v3, "renderView"

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTransitionName(Ljava/lang/String;)V

    .line 763
    :cond_3
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    .line 764
    iget v0, p0, Lcom/narvii/story/StoryListFragment;->targetPosInSharedDataSource:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 765
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 767
    :cond_4
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->parentView:Landroid/view/View;

    const v2, 0x7f090158

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->defaultBottomLayout:Landroid/widget/FrameLayout;

    .line 768
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->defaultBottomLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 769
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment;->initFeed:Lcom/narvii/model/Blog;

    if-nez v2, :cond_5

    const v2, 0x7f0b0664

    .line 770
    invoke-virtual {v0, v2}, Lcom/narvii/paging/state/PageStatusView;->setErrorView(I)Landroid/view/View;

    .line 771
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    const v2, -0x7f000001

    invoke-virtual {v0, v2}, Lcom/narvii/paging/state/PageStatusView;->setDarkThemeColor(I)V

    :cond_5
    if-eqz p2, :cond_6

    .line 775
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/master/MasterTabFragment;

    if-eqz p2, :cond_6

    .line 776
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/narvii/master/MasterTabFragment;

    iget-object p2, p2, Lcom/narvii/master/MasterTabFragment;->bottomSheetLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Lcom/narvii/story/StoryListFragment;->setBottomSheetLayout(Landroid/widget/FrameLayout;)V

    .line 779
    :cond_6
    new-instance p2, Lcom/narvii/story/swipe/StoryItemTouchCallback;

    invoke-direct {p2}, Lcom/narvii/story/swipe/StoryItemTouchCallback;-><init>()V

    .line 780
    invoke-virtual {p2, p0}, Lcom/narvii/story/swipe/StoryItemTouchCallback;->setSwipeListener(Lcom/narvii/story/swipe/IStorySwipeListener;)V

    .line 781
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v0, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 782
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    const p2, 0x7f090c57

    .line 783
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/nvplayerview/NVVideoDebugView;

    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->videoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    .line 784
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 785
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->videoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public onWifiStateChange(Z)V
    .locals 1

    .line 2367
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->wifiActive:Z

    if-eq p1, v0, :cond_0

    .line 2368
    iput-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->wifiActive:Z

    .line 2369
    invoke-virtual {p0}, Lcom/narvii/story/StoryListFragment;->updateVideoAutoPlay()V

    :cond_0
    return-void
.end method

.method public onWindowIndexChanged(I)V
    .locals 2

    .line 1666
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1667
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Scene;

    .line 1668
    invoke-virtual {v0}, Lcom/narvii/model/Scene;->getQuizQuestion()Lcom/narvii/model/QuizQuestion;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1670
    invoke-virtual {v0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1672
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/QuizOption;

    .line 1673
    invoke-virtual {v1}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1674
    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1675
    invoke-static {v1}, Lcom/narvii/util/ImagePreloadUtils;->preloadImageUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 1681
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget v1, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    if-eq p1, v1, :cond_2

    .line 1682
    iput p1, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 1683
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->notifyItemChange()V

    :cond_2
    return-void
.end method

.method public removeStoryVisibleChangeListener(Lcom/narvii/story/StoryListVisibleChangeListener;)V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->visibleEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public resetDebugInfo()V
    .locals 1

    .line 1274
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->videoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->reset()V

    :cond_0
    return-void
.end method

.method public setBottomSheetLayout(Landroid/widget/FrameLayout;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 2388
    :cond_0
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomLayout:Landroid/widget/FrameLayout;

    .line 2389
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->defaultBottomLayout:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1

    const p1, 0x7f09033a

    goto :goto_0

    :cond_1
    const p1, 0x7f09014c

    .line 2390
    :goto_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/RoundFrameLayout;

    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomContainer:Lcom/narvii/widget/RoundFrameLayout;

    .line 2391
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    .line 2392
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomContainer:Lcom/narvii/widget/RoundFrameLayout;

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p1, v1, v3

    const/4 v3, 0x2

    aput p1, v1, v3

    const/4 v3, 0x3

    aput p1, v1, v3

    const/4 p1, 0x4

    const/4 v3, 0x0

    aput v3, v1, p1

    const/4 p1, 0x5

    aput v3, v1, p1

    const/4 p1, 0x6

    aput v3, v1, p1

    const/4 p1, 0x7

    aput v3, v1, p1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/RoundFrameLayout;->setCornerRadius([F)V

    .line 2393
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomContainer:Lcom/narvii/widget/RoundFrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2394
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f090148

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomBgView:Landroid/view/View;

    .line 2395
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomBgView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2396
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-static {p1}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 2397
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {p1, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 2398
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->bottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V

    return-void
.end method

.method public setSharedDataSource(Lcom/narvii/paging/source/DataSource;)V
    .locals 4

    .line 605
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment;->sharedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 606
    instance-of v0, p1, Lcom/narvii/story/base/StoryDataSource;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/narvii/story/base/StoryDataSource;

    invoke-virtual {p1}, Lcom/narvii/story/base/StoryDataSource;->getCommunityInfoMapping()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {p1}, Lcom/narvii/story/base/StoryDataSource;->getCommunityInfoMapping()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 608
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->communityMapping:Landroid/util/SparseArray;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 609
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment;->communityService:Lcom/narvii/community/CommunityService;

    if-eqz v1, :cond_0

    .line 610
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityService;->updateLiteCommunity(Lcom/narvii/model/Community;)V

    goto :goto_0

    .line 614
    :cond_1
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->findTargetPositionInSharedDatasource()V

    return-void
.end method

.method public shouldPauseForPageAboveVideo(I)Z
    .locals 10

    .line 1281
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->isShowingPageAboveVideo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1282
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryListFragment;->loopScene(I)V

    return v1

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_5

    if-ltz p1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 1286
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Scene;

    if-eqz v0, :cond_5

    .line 1287
    iget-object v3, v0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1288
    invoke-virtual {v0}, Lcom/narvii/model/Scene;->containsPollOrQuiz()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1289
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->guideViewHelper:Lcom/narvii/story/widgets/GuideViewHelper;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/narvii/story/widgets/GuideViewHelper;->hideGuideViewIfExist(Landroid/app/Activity;Z)V

    .line 1290
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v4, v0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/narvii/model/Scene;->getQuizQuestion()Lcom/narvii/model/QuizQuestion;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-direct {p0, v4, v2}, Lcom/narvii/story/StoryListFragment;->getPlayRecord(Ljava/lang/String;Z)Lcom/narvii/scene/ScenePlayRecord;

    move-result-object v2

    invoke-virtual {v3, v0, v2, p0}, Lcom/narvii/story/widgets/StoryItemView;->showPollQuiz(Lcom/narvii/model/Scene;Lcom/narvii/scene/ScenePlayRecord;Lcom/narvii/scene/ScenePlayListener;)V

    .line 1291
    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->playingPollOrQuiz:Z

    .line 1292
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->onPlayPollQuizChanged()V

    .line 1293
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryListFragment;->loopScene(I)V

    return v1

    .line 1295
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->isPreview:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->containsSceneQuiz()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_3

    .line 1296
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->guideViewHelper:Lcom/narvii/story/widgets/GuideViewHelper;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/narvii/story/widgets/GuideViewHelper;->hideGuideViewIfExist(Landroid/app/Activity;Z)V

    .line 1297
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {p0}, Lcom/narvii/story/StoryListFragment;->getQuizQuestionResult()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/narvii/story/StoryListFragment;->isShowingPopupViews()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/narvii/story/widgets/StoryItemView;->showQuizResult(Ljava/util/List;Z)V

    .line 1298
    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->showingQuizResult:Z

    .line 1299
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->onPlayPollQuizChanged()V

    .line 1300
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryListFragment;->loopScene(I)V

    return v1

    .line 1302
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->isPreview:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_5

    .line 1303
    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->interstitialPageShow:Z

    .line 1304
    invoke-direct {p0}, Lcom/narvii/story/StoryListFragment;->reAttachItemTouch()V

    .line 1305
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->autoLoadNextPage:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/narvii/story/StoryListFragment;->currentPos:I

    iget-object v3, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v3}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getSize()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_4

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    .line 1306
    :goto_0
    iget-object v4, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v6, p0, Lcom/narvii/story/StoryListFragment;->curStory:Lcom/narvii/model/Blog;

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->communityMapping:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/narvii/model/Community;

    invoke-virtual {p0}, Lcom/narvii/story/StoryListFragment;->isShowingPopupViews()Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/narvii/story/widgets/StoryItemView;->showInterstitialPage(Landroid/support/v4/app/Fragment;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;ZZ)V

    .line 1307
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryListFragment;->loopScene(I)V

    return v1

    :cond_5
    return v2
.end method

.method protected showGlobalPageStatus()Z
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->initFeed:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 2589
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getPlayerView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/paging/PageView;

    if-eqz v0, :cond_0

    .line 2590
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getPlayerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/paging/PageView;

    invoke-virtual {v0}, Lcom/narvii/paging/PageView;->takeLogContextInfo()V

    .line 2592
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 2597
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getPlayerView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/paging/PageView;

    if-eqz v0, :cond_0

    .line 2598
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getPlayerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/paging/PageView;

    invoke-virtual {v0}, Lcom/narvii/paging/PageView;->takeLogContextInfo()V

    .line 2600
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .locals 6

    .line 1157
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 1158
    iget-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->needToSeekBeforePlay:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1159
    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->needToSeekBeforePlay:Z

    .line 1160
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    move-result-wide v2

    .line 1161
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-interface {p1, v2, v3, v0}, Lcom/narvii/nvplayer/INVPlayer;->seekTo(JZ)V

    .line 1163
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->storyItemViewSnapShot:Lcom/narvii/story/widgets/StoryItemView;

    if-eqz p1, :cond_1

    .line 1164
    invoke-direct {p0, v0, v1}, Lcom/narvii/story/StoryListFragment;->setPlayWhenReady(ZI)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .locals 2

    .line 1170
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getPlayerState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1171
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public synthetic surfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/narvii/nvplayerview/ISurfaceListener$-CC;->$default$surfaceSizeChanged(Lcom/narvii/nvplayerview/ISurfaceListener;Landroid/view/Surface;II)V

    return-void
.end method

.method public updateVideoAutoPlay()V
    .locals 3

    .line 2338
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "prefs"

    .line 2339
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment;->prefs:Landroid/content/SharedPreferences;

    .line 2341
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "video_auto_play"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2343
    iput-boolean v2, p0, Lcom/narvii/story/StoryListFragment;->videoAutoPlay:Z

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    .line 2345
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->wifiActive:Z

    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->videoAutoPlay:Z

    goto :goto_0

    .line 2347
    :cond_2
    iput-boolean v1, p0, Lcom/narvii/story/StoryListFragment;->videoAutoPlay:Z

    :goto_0
    return-void
.end method

.method public updateViews()V
    .locals 4

    .line 2353
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    .line 2354
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->initFeed:Lcom/narvii/model/Blog;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->singleStoryAdapter:Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;

    if-eqz v0, :cond_2

    .line 2355
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->singleStoryAdapter:Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;

    .line 2356
    invoke-static {v0}, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->access$1300(Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;)Lcom/narvii/model/Blog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment;->singleStoryAdapter:Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;

    .line 2357
    invoke-static {v0}, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->access$1300(Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;)Lcom/narvii/model/Blog;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/Feed;->status:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2358
    :goto_0
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz v0, :cond_1

    const v3, -0xaeb4ad

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    if-eqz v0, :cond_2

    .line 2360
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public videoAutoPlayChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2376
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment;->videoAutoPlay:Z

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 2378
    iget-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->wifiActive:Z

    iput-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->videoAutoPlay:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2380
    iput-boolean p1, p0, Lcom/narvii/story/StoryListFragment;->videoAutoPlay:Z

    :goto_0
    return-void
.end method
