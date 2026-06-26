.class public Lcom/narvii/blog/detail/BlogDetailFragment;
.super Lcom/narvii/detail/FeedDetailFragment;
.source "BlogDetailFragment.java"

# interfaces
.implements Lcom/narvii/widget/PromoteStoryView$OnPromoteListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/theme/IFakeActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;,
        Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;,
        Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/FeedDetailFragment<",
        "Lcom/narvii/model/Blog;",
        ">;",
        "Lcom/narvii/widget/PromoteStoryView$OnPromoteListener;",
        "Lcom/narvii/app/FragmentOnBackListener;",
        "Lcom/narvii/theme/IFakeActionBar;"
    }
.end annotation


# static fields
.field static final ADDRESS:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final ADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;"
        }
    .end annotation
.end field

.field static final AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field static final LINK_CUSTOM_CONTENT_PADDING:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final PAGE_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final QUIZ:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final READ_IT:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final REF_DISABLE:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final REF_NULL:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final RELATED_AMINOS:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final REQUEST_CHANGE_CATELOG:I = 0xc9

.field static final STORY:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private actionBarOverlay:Landroid/view/View;

.field advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation
.end field

.field commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

.field private draftManager:Lcom/narvii/post/DraftManager;

.field private entryManager:Lcom/narvii/modulization/entry/EntryManager;

.field fakeActionBar:Landroid/view/View;

.field isAnnouncement:Z

.field private justCreated:Z

.field private longClickVote:Landroid/view/View$OnLongClickListener;

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field public onFinishListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation
.end field

.field optinPaidAds:Z

.field private promoteStoryView:Lcom/narvii/widget/PromoteStoryView;

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

.field private relatedCommunities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private sceneTemplateService:Lcom/narvii/scene/service/ChooseSceneTemplateService;

.field private showingBlogTitle:Z

.field stated:Z

.field private topAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;

.field voteIconView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 161
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.title"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 162
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.user-vote"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 163
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.address"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->ADDRESS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 164
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.quiz"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->QUIZ:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 165
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.ref-null"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_NULL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 166
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.ref-disable"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->REF_DISABLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 167
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    const-string v1, "detail.likes"

    const v2, 0x7f0f0ae5

    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 168
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.snippet"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->PAGE_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 169
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.readit"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->READ_IT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 170
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.link.custom.title"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->LINK_CUSTOM_CONTENT_PADDING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 171
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.related.aminos"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->RELATED_AMINOS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 172
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.story"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->STORY:Lcom/narvii/detail/DetailAdapter$CellType;

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/narvii/detail/DetailAdapter$CellType;

    .line 659
    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v2, 0x0

    const-string v3, "adbanner1"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner2"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner3"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner4"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner5"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner6"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner7"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner8"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner9"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner10"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner11"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner12"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner13"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner14"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner15"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner16"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner17"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner18"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner19"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v3, "adbanner20"

    invoke-direct {v1, v3, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->ADS:Ljava/util/List;

    .line 681
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "adbanner_abovecomment"

    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 157
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment;-><init>()V

    .line 2066
    new-instance v0, Lcom/narvii/blog/detail/BlogDetailFragment$5;

    invoke-direct {v0, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$5;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->longClickVote:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/widget/PromoteStoryView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->promoteStoryView:Lcom/narvii/widget/PromoteStoryView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->updateteBottomLayout(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->showPromoteStoryView(Lcom/narvii/model/Blog;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/scene/service/ChooseSceneTemplateService;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->sceneTemplateService:Lcom/narvii/scene/service/ChooseSceneTemplateService;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->tippingTooltipDone()V

    return-void
.end method

.method static synthetic access$1500(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->showingBlogTitle:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->tryReportActiveStatus()V

    return-void
.end method

.method static synthetic access$202(Lcom/narvii/blog/detail/BlogDetailFragment;Z)Z
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->showingBlogTitle:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->sendFeedUpdateGlobalNotification(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->justCreated:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/narvii/blog/detail/BlogDetailFragment;Z)Z
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->justCreated:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->afterPromoteStoryViewProcessed()V

    return-void
.end method

.method static synthetic access$2400(Lcom/narvii/blog/detail/BlogDetailFragment;)Ljava/util/List;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->relatedCommunities:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/narvii/blog/detail/BlogDetailFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->relatedCommunities:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/narvii/blog/detail/BlogDetailFragment;Z)Z
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/narvii/blog/detail/BlogDetailFragment;Z)Z
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_isBackgroundDark:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/narvii/blog/detail/BlogDetailFragment;I)I
    .locals 0

    .line 157
    iput p1, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    return p1
.end method

.method static synthetic access$2900(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->updateBackground()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->setTypeTitle(Lcom/narvii/model/Blog;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListViewContentBackground()V

    return-void
.end method

.method static synthetic access$3102(Lcom/narvii/blog/detail/BlogDetailFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->categories:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/narvii/blog/detail/BlogDetailFragment;)I
    .locals 0

    .line 157
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    return p0
.end method

.method static synthetic access$3500(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    return p0
.end method

.method static synthetic access$3600(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->checkCommunityJoined()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->updateteBottomLayout(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->newPreview()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    return p0
.end method

.method static synthetic access$4100(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/narvii/blog/detail/BlogDetailFragment;)I
    .locals 0

    .line 157
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    return p0
.end method

.method static synthetic access$4400(Lcom/narvii/blog/detail/BlogDetailFragment;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->longClickVote:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/narvii/blog/detail/BlogDetailFragment;)I
    .locals 0

    .line 157
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    return p0
.end method

.method static synthetic access$4700(Lcom/narvii/blog/detail/BlogDetailFragment;)I
    .locals 0

    .line 157
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    return p0
.end method

.method static synthetic access$4800(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->checkCommunityJoined()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->fromHeadline:Z

    return p0
.end method

.method static synthetic access$5200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->checkCommunityJoined()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5500(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    return p0
.end method

.method static synthetic access$6000(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)Landroid/content/Intent;
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->getStoryDetailPageIntent(Lcom/narvii/model/Blog;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/blog/detail/BlogDetailFragment;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    return p0
.end method

.method private afterPromoteStoryViewProcessed()V
    .locals 2

    const-string v0, "justCreated"

    const/4 v1, 0x0

    .line 2429
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2430
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    const-string v1, "scenario_create_post"

    invoke-virtual {v0, v1}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private changeListViewMargin()V
    .locals 2

    .line 438
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->getListViewMarginTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->setMarginTop(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private getListViewMarginTop()I
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFloatingSwipeable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getTotalOverlaySize()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getStoryDetailPageIntent(Lcom/narvii/model/Blog;)Landroid/content/Intent;
    .locals 1

    .line 1961
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    const/4 p1, 0x0

    .line 1962
    invoke-virtual {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->autoLoadNextPage(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const-string v0, "community-player"

    .line 1963
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 1964
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->showCommentBarInStoryDetail()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private initPromoteStoryView()V
    .locals 4

    .line 2309
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->promoteStoryView:Lcom/narvii/widget/PromoteStoryView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2310
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x1020002

    .line 2311
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2313
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b06d3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0908d7

    .line 2314
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/PromoteStoryView;

    iput-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->promoteStoryView:Lcom/narvii/widget/PromoteStoryView;

    .line 2315
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->promoteStoryView:Lcom/narvii/widget/PromoteStoryView;

    invoke-virtual {v1, p0}, Lcom/narvii/widget/PromoteStoryView;->setOnPromoteListener(Lcom/narvii/widget/PromoteStoryView$OnPromoteListener;)V

    .line 2316
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->promoteStoryView:Lcom/narvii/widget/PromoteStoryView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private isStoryEnable()Z
    .locals 4

    .line 2331
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "story"

    .line 2333
    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->entryManager:Lcom/narvii/modulization/entry/EntryManager;

    invoke-virtual {v2, v0, v1}, Lcom/narvii/modulization/entry/EntryManager;->canCurUserPost(Lcom/narvii/model/User;Ljava/lang/String;)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    move-result-object v2

    .line 2334
    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->entryManager:Lcom/narvii/modulization/entry/EntryManager;

    invoke-virtual {v3, v0, v1}, Lcom/narvii/modulization/entry/EntryManager;->isEntryEnabled(Lcom/narvii/model/User;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2335
    iget-boolean v0, v2, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method static synthetic lambda$onPromoteStory$2(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method private setTypeTitle(Lcom/narvii/model/Blog;)V
    .locals 1

    .line 1977
    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    if-eqz v0, :cond_0

    const p1, 0x7f0f0112

    .line 1978
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    .line 1980
    :cond_0
    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0f036f

    .line 2003
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0f0e0c

    .line 2000
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0f0374

    .line 1994
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0f0e06

    .line 1997
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0f037a

    .line 1991
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    :pswitch_4
    const p1, 0x7f0f0dc0

    .line 1988
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    :pswitch_5
    const p1, 0x7f0f0378

    .line 1982
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    :pswitch_6
    const p1, 0x7f0f0379

    .line 1985
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showPromoteStoryView(Lcom/narvii/model/Blog;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2321
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isStoryEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2324
    :cond_0
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->initPromoteStoryView()V

    .line 2325
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->promoteStoryView:Lcom/narvii/widget/PromoteStoryView;

    if-eqz v0, :cond_1

    .line 2326
    invoke-virtual {v0, p1}, Lcom/narvii/widget/PromoteStoryView;->show(Lcom/narvii/model/Blog;)V

    :cond_1
    return-void
.end method

.method private showTemplateList()V
    .locals 2

    .line 2369
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->sceneTemplateService:Lcom/narvii/scene/service/ChooseSceneTemplateService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/scene/service/ChooseSceneTemplateService;->setFrom(I)V

    .line 2370
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->sceneTemplateService:Lcom/narvii/scene/service/ChooseSceneTemplateService;

    new-instance v1, Lcom/narvii/blog/detail/BlogDetailFragment$9;

    invoke-direct {v1, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$9;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/scene/service/ChooseSceneTemplateService;->setOnChooseTemplateListener(Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;)V

    const/4 v0, 0x0

    .line 2399
    invoke-virtual {p0, v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->onActiveChanged(Z)V

    .line 2400
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->sceneTemplateService:Lcom/narvii/scene/service/ChooseSceneTemplateService;

    invoke-virtual {v0}, Lcom/narvii/scene/service/ChooseSceneTemplateService;->show()V

    return-void
.end method

.method private updateBackground()V
    .locals 4

    .line 2010
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->updateFakeActionBarThemeUI()V

    .line 2012
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_2

    .line 2013
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 2014
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->shouldShowPageBackground()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2017
    :cond_2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->topAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;

    if-eqz v0, :cond_3

    .line 2018
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2021
    :cond_3
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    if-nez v0, :cond_4

    return-void

    .line 2026
    :cond_4
    iget-object v1, p0, Lcom/narvii/detail/DetailFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/narvii/image/BackgroundSource;

    aput-object v0, v3, v2

    .line 2027
    invoke-virtual {v1, v3}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    .line 2031
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 2032
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/narvii/detail/FeedDetailFragment;->updateSBB(I)V

    .line 2034
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    if-eqz v0, :cond_7

    .line 2035
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result v1

    iget v3, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    invoke-virtual {v0, v1, v3}, Lcom/narvii/list/NVAdapter;->setDarkTheme(ZI)V

    .line 2038
    :cond_7
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->access$400(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)Lcom/narvii/poll/PollAdapter;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2039
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->access$400(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)Lcom/narvii/poll/PollAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result v1

    iget v3, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    invoke-virtual {v0, v1, v3}, Lcom/narvii/poll/PollAdapter;->setDarkTheme(ZI)V

    .line 2042
    :cond_8
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    if-eqz v0, :cond_9

    .line 2043
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result v1

    iget v3, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    invoke-virtual {v0, v1, v3}, Lcom/narvii/list/NVAdapter;->setDarkTheme(ZI)V

    .line 2046
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    .line 2049
    :cond_a
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->actionBarOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 2047
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->actionBarOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method


# virtual methods
.method protected bookmark(Ljava/lang/String;)V
    .locals 2

    .line 2274
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->bookmark(Ljava/lang/String;)V

    .line 2275
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    new-instance v1, Lcom/narvii/blog/detail/BlogDetailFragment$8;

    invoke-direct {v1, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$8;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/FeedHelper;->bookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method protected bottomComment()V
    .locals 2

    .line 2295
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    if-eqz v0, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 2297
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->commentNew()V

    :cond_0
    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 1

    .line 570
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 571
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 572
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_0

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ObjectType;->blog:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 317
    new-instance p1, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 318
    new-instance p1, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    .line 319
    new-instance p1, Lcom/narvii/blog/detail/BlogDetailFragment$2;

    invoke-direct {p1, p0, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$2;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 340
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->setFlags(I)V

    .line 341
    new-instance p1, Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/blog/detail/BlogDetailFragment$1;)V

    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->topAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;

    .line 342
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->topAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;

    new-array v1, v0, [Landroid/view/View;

    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 343
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->topAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 346
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->newPreview()Z

    move-result p1

    if-nez p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->commentAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$CommentAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 348
    iget-boolean p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    if-nez p1, :cond_0

    .line 349
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    new-instance v1, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;-><init>(Lcom/narvii/detail/FeedDetailFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->newPreview()Z

    move-result p1

    if-nez p1, :cond_1

    .line 354
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    new-array v0, v0, [I

    const v1, 0x7f0b0063

    aput v1, v0, v3

    .line 355
    invoke-virtual {p1, v0}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 356
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 359
    :cond_1
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method protected disableOptinAds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getDisableStrId(Lcom/narvii/model/NVObject;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 555
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_2

    .line 556
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    .line 557
    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 559
    invoke-virtual {p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUserItSelf(Lcom/narvii/model/User;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f040f

    return p1

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->getDetailObjectDisableStrId()I

    move-result p1

    return p1

    .line 565
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->getDisableStrId(Lcom/narvii/model/NVObject;)I

    move-result p1

    return p1
.end method

.method public getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/detail/FeedDetailAdapter<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    return-object v0
.end method

.method protected getHoveFrameMarginTop()I
    .locals 1

    .line 2063
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->getListViewMarginTop()I

    move-result v0

    return v0
.end method

.method public getLinkedStoryDraftId()Ljava/lang/String;
    .locals 6

    .line 2415
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->draftManager:Lcom/narvii/post/DraftManager;

    const-string v2, "story"

    invoke-virtual {v0, v2}, Lcom/narvii/post/DraftManager;->hasDraft(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2418
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {v0, v2}, Lcom/narvii/post/DraftManager;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2419
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/post/DraftInfo;

    .line 2420
    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v4, v2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    const-class v5, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {v3, v4, v5}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object v3

    check-cast v3, Lcom/narvii/blog/post/BlogPost;

    .line 2421
    iget-object v3, v3, Lcom/narvii/blog/post/BlogPost;->promotedFrom:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Blog;

    iget-object v4, v4, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2422
    iget-object v0, v2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method protected getLiveLayerTopic()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "users-browsing-blog-at"

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "BlogDetail"

    return-object v0
.end method

.method public getTransferIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 272
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 273
    invoke-virtual {p0, v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v1, "__savedInstanceState"

    .line 274
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 275
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->getTransferIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected hoverBelowOverlayPlaceHolder()Z
    .locals 2

    .line 2055
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFloatingSwipeable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2058
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isGlobalInteractionScope()Z
    .locals 1

    .line 2303
    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

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

.method public isHover(I)Z
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 634
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFloatingSwipeable()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isPageBackgroundEnabled()Z
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$onPromoteStory$0$BlogDetailFragment(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 2351
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/narvii/blog/post/StoryPostActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "draftId"

    .line 2352
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2355
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onPromoteStory$1$BlogDetailFragment(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2358
    iget-object p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {p2, p1}, Lcom/narvii/post/DraftManager;->deleteDraft(Ljava/lang/String;)V

    .line 2359
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->showTemplateList()V

    return-void
.end method

.method protected objectType()I
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x83

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected observeThemeDownloadFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->sceneTemplateService:Lcom/narvii/scene/service/ChooseSceneTemplateService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 611
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->onActiveChanged(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 617
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->access$400(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)Lcom/narvii/poll/PollAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0xf601

    if-ne p1, v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->access$400(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)Lcom/narvii/poll/PollAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/poll/PollAdapter;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    const/16 v0, 0xc9

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f01c3

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 624
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    const-string v1, "collectionId"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->commentNew(Ljava/lang/String;)V

    .line 626
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 642
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->sceneTemplateService:Lcom/narvii/scene/service/ChooseSceneTemplateService;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 643
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->sceneTemplateService:Lcom/narvii/scene/service/ChooseSceneTemplateService;

    invoke-virtual {p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    .line 204
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "__savedInstanceState"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 207
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const-string v1, "isAnnouncement"

    .line 208
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    const-string v1, "justCreated"

    .line 209
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->justCreated:Z

    .line 210
    iget-boolean v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0f0112

    .line 211
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0f036f

    .line 213
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    :goto_0
    if-eqz p1, :cond_2

    const-string v1, "stated"

    .line 216
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->stated:Z

    .line 218
    :cond_2
    iget-object p1, p0, Lcom/narvii/detail/DetailFragment;->actions:Ljava/util/List;

    sget-object v1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance p1, Lcom/narvii/modulization/entry/EntryManager;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->entryManager:Lcom/narvii/modulization/entry/EntryManager;

    const-string p1, "draft"

    .line 226
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/DraftManager;

    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->draftManager:Lcom/narvii/post/DraftManager;

    const-string p1, "account"

    .line 227
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string p1, "chooseSceneTemplate"

    .line 228
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/service/ChooseSceneTemplateService;

    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->sceneTemplateService:Lcom/narvii/scene/service/ChooseSceneTemplateService;

    .line 229
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->sceneTemplateService:Lcom/narvii/scene/service/ChooseSceneTemplateService;

    new-instance v0, Lcom/narvii/blog/detail/BlogDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$1;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/scene/service/ChooseSceneTemplateService;->setOnChooseTemplateListener(Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;)V

    .line 256
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 454
    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    const v0, 0x7f0f02f5

    .line 455
    invoke-interface {p1, v1, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 456
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void

    .line 459
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 p2, 0x7

    const v0, 0x7f0f0170

    .line 460
    invoke-interface {p1, v1, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 461
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0f10fb

    .line 462
    invoke-interface {p1, v1, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 463
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 p2, 0xa

    const v0, 0x7f0f0094

    .line 464
    invoke-interface {p1, v1, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 465
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 378
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 380
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->changeListViewMargin()V

    .line 382
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    if-eqz p2, :cond_0

    .line 383
    move-object p2, p1

    check-cast p2, Lcom/narvii/widget/NVListView;

    new-instance v0, Lcom/narvii/blog/detail/BlogDetailFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$3;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;Landroid/widget/ListView;)V

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 2097
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "voteFromBottom"

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo p1, "voteValue"

    .line 2099
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 2100
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 2102
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, v2, p2}, Lcom/narvii/blog/detail/BlogDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    return-void

    .line 2105
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 496
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0094

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x7f0f0170

    if-eq v0, v1, :cond_2

    const v1, 0x7f0f10fb

    if-eq v0, v1, :cond_1

    .line 521
    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    if-eqz v0, :cond_0

    .line 522
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f02f5

    if-ne v0, v1, :cond_0

    .line 524
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 525
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Feed;->shareURLFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0fb2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2

    .line 532
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 505
    :cond_1
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    new-instance v1, Lcom/narvii/blog/detail/BlogDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/narvii/blog/detail/BlogDetailFragment$4;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/FeedHelper;->unBookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    return v2

    .line 501
    :cond_2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->save:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->sendHeaderAreaLog(Lcom/narvii/logging/ActSemantic;)V

    const-string p1, "Post Detail Menu"

    .line 502
    invoke-virtual {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->bookmark(Ljava/lang/String;)V

    return v2

    .line 498
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->showModerationDialog()V

    return v2
.end method

.method public onPause()V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 603
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    return-void
.end method

.method public onPlayStory(Lcom/narvii/model/Blog;)V
    .locals 2

    .line 2405
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "LinkedStory"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 2406
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    const-string p1, "community-player"

    .line 2407
    invoke-virtual {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const/4 v0, 0x0

    .line 2408
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->autoLoadNextPage(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 2409
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 2410
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->loadRawVideo(Ljava/lang/Boolean;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 2411
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    .line 472
    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f0f02f5

    .line 473
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 476
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 477
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    const v2, 0x7f0f0170

    const v3, 0x7f0f10fb

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    move-result v0

    if-nez v0, :cond_3

    .line 478
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iget-boolean v5, v3, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    const/16 v6, 0x9

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {v3}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Blog;

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->status()I

    move-result v3

    if-eq v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 479
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iget-boolean v3, v2, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->status()I

    move-result v2

    if-eq v2, v6, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 481
    :cond_3
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 482
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    const-string v0, "account"

    .line 484
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 485
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 486
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    const v0, 0x7f0f0094

    .line 487
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onPromoteStory()V
    .locals 4

    .line 2340
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "Promote"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 2341
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isStoryEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2344
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->getLinkedStoryDraftId()Ljava/lang/String;

    move-result-object v0

    .line 2345
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2346
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->showTemplateList()V

    goto :goto_0

    .line 2348
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0d93

    .line 2349
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f0d92

    .line 2350
    new-instance v3, Lcom/narvii/blog/detail/-$$Lambda$BlogDetailFragment$lZdQkUHkHHPtySBtIGc2e3a8UuQ;

    invoke-direct {v3, p0, v0}, Lcom/narvii/blog/detail/-$$Lambda$BlogDetailFragment$lZdQkUHkHHPtySBtIGc2e3a8UuQ;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f0d91

    .line 2357
    new-instance v3, Lcom/narvii/blog/detail/-$$Lambda$BlogDetailFragment$_QRm8chzof1wUOlhvoOGXDRDwhg;

    invoke-direct {v3, p0, v0}, Lcom/narvii/blog/detail/-$$Lambda$BlogDetailFragment$_QRm8chzof1wUOlhvoOGXDRDwhg;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0f0193

    .line 2361
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2362
    sget-object v0, Lcom/narvii/blog/detail/-$$Lambda$BlogDetailFragment$oDr2PlPWC5pkN60ZwPn-nGBGkNM;->INSTANCE:Lcom/narvii/blog/detail/-$$Lambda$BlogDetailFragment$oDr2PlPWC5pkN60ZwPn-nGBGkNM;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2364
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 266
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 267
    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->stated:Z

    const-string v1, "stated"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f090416

    .line 364
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->fakeActionBar:Landroid/view/View;

    const v0, 0x7f090031

    .line 365
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->actionBarOverlay:Landroid/view/View;

    .line 366
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 367
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Feed;

    .line 368
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->updateteBottomLayout(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method public setDisabledStatus(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 429
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->setDisabledStatus(Lcom/narvii/model/NVObject;)V

    .line 430
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFloatingSwipeable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->changeListViewMargin()V

    .line 433
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->resetHover()V

    :cond_0
    return-void
.end method

.method protected setListContentBgWhenHasPageBackground()Z
    .locals 1

    .line 595
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldBlockClick(Ljava/lang/Object;)Z
    .locals 2

    .line 280
    iget-boolean v0, p0, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 281
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->READ_IT:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_0

    return v1

    .line 284
    :cond_0
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_1

    return v1

    .line 287
    :cond_1
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 290
    :cond_2
    instance-of v0, p1, Lcom/narvii/model/Comment;

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    return v1

    .line 294
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->isMeAccessibleToThisPost()Z

    move-result v0

    if-nez v0, :cond_7

    .line 295
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->USER_VOTE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_5

    return v1

    .line 298
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 299
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    const-string v0, "Page Detailed View"

    invoke-static {p0, p1, v0}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x1

    return p1

    .line 303
    :cond_7
    sget-object v0, Lcom/narvii/blog/detail/BlogDetailFragment;->STORY:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_8

    return v1

    .line 306
    :cond_8
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected shouldShowDisableBar(Lcom/narvii/model/NVObject;)Z
    .locals 1

    .line 581
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 582
    check-cast p1, Lcom/narvii/model/Blog;

    const/4 v0, 0x0

    .line 583
    invoke-virtual {p1, v0}, Lcom/narvii/model/Blog;->isAccessibleByUserIgnoreRefObject(Lcom/narvii/model/User;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 585
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldShowDisableBar(Lcom/narvii/model/NVObject;)Z

    move-result p1

    return p1
.end method

.method protected shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z
    .locals 3

    .line 537
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 538
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    .line 539
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string p1, "account"

    .line 540
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 541
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    .line 542
    invoke-virtual {v0, p1}, Lcom/narvii/model/Blog;->isAccessibleByUserIgnoreRefObject(Lcom/narvii/model/User;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 545
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z

    move-result p1

    return p1
.end method

.method protected showBottomBar()Z
    .locals 1

    .line 491
    invoke-super {p0}, Lcom/narvii/detail/FeedDetailFragment;->showBottomBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->isAnnouncement:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected showCommentBarInStoryDetail()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showModerationDialog()V
    .locals 2

    .line 2267
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->categories:Ljava/util/List;

    .line 2268
    invoke-virtual {v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->attachBlogCateLog(Ljava/util/List;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 2269
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->advancedOptionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    return-void
.end method

.method protected showSearchBarInStoryDetail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected unVote()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2261
    invoke-virtual {p0, v0, v0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    return-void
.end method

.method public updateFakeActionBarThemeUI()V
    .locals 3

    .line 2436
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->fakeActionBar:Landroid/view/View;

    if-eqz v0, :cond_4

    const-string v0, "config"

    .line 2437
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 2438
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->fakeActionbarBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2439
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->fakeActionBar:Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->shouldShowPageBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/NVActivity;

    invoke-virtual {v2}, Lcom/narvii/app/NVActivity;->hasPageBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2440
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 2441
    :goto_1
    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->fakeActionBar:Landroid/view/View;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method protected vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V
    .locals 6

    .line 2111
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    .line 2113
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Feed;Z)I

    move-result v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    if-nez v1, :cond_0

    .line 2117
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f1105

    .line 2118
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v1, 0x7f0f029c

    const/4 v2, 0x0

    .line 2119
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 2120
    new-instance v1, Lcom/narvii/blog/detail/BlogDetailFragment$6;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/narvii/blog/detail/BlogDetailFragment$6;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/util/http/ApiService;ZLcom/narvii/model/Blog;)V

    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 2132
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 2136
    sget-object p1, Lcom/narvii/logging/ActSemantic;->dislike:Lcom/narvii/logging/ActSemantic;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->like:Lcom/narvii/logging/ActSemantic;

    :goto_0
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    if-eqz p3, :cond_2

    const-string v3, "BottomArea"

    goto :goto_1

    :cond_2
    const-string v3, "EngagementArea"

    :goto_1
    invoke-virtual {p1, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    if-eqz p3, :cond_4

    .line 2139
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoaderListener:Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    if-eqz p1, :cond_4

    const v3, 0x7f090165

    .line 2140
    invoke-virtual {p0}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;->onStart(ILjava/lang/Object;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 2144
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->SBB:Lcom/narvii/util/logging/LoggingSource;

    goto :goto_3

    :cond_5
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    .line 2155
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/narvii/util/LiveLayerUtils;->reportVoting(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)V

    .line 2159
    new-instance v3, Lcom/narvii/story/detail/VoteHelper;

    invoke-direct {v3, p0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 2160
    iput-object p1, v3, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    const-string p1, "loggingOrigin"

    .line 2161
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    .line 2162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v4, Lcom/narvii/blog/detail/BlogDetailFragment$7;

    invoke-direct {v4, p0, p3, v0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$7;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;ZLcom/narvii/model/Blog;I)V

    invoke-virtual {v3, v0, p1, p2, v4}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    .line 2194
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-static {p1, v2}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->access$5402(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Z)Z

    .line 2195
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method
