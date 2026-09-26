.class public Lcom/narvii/user/profile/UserProfileFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentAddAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$MySwitchAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$BioDividerAdapter;
    }
.end annotation


# static fields
.field static final ACTIVATION_REQUEST:I = 0x5

.field static final BIO_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

.field private static final CONSECUTIVE_CHECKIN_DAY_LIMIT:I = 0x2

.field public static final GRADIENT_RATIO:F = 0.3f

.field static final ITEM_PAGE_SIZE:I = 0x19

.field static final PICK_CATALOG_REQUEST:I = 0x3

.field public static final SEND_NOTIFICATION:Ljava/lang/String; = "send_notification"

.field static final SWITCH:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private addBlogAdapter:Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;

.field bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

.field private bioDividerAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioDividerAdapter;

.field bioMedias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public bookmarkAdapter:Lcom/narvii/bookmark/BookmarkAdapter;

.field public bookmarkDividerAdapter:Lcom/narvii/list/DividerAdapter;

.field private brokenStreaks:I

.field commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

.field commentAddAdapter:Lcom/narvii/user/profile/adapter/CommentAddAdapter;

.field public commentDividerAdapter:Lcom/narvii/list/DividerAdapter;

.field commentHeaderAdapter:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field configService:Lcom/narvii/config/ConfigService;

.field private consecutiveCheckInDays:I

.field dateFmt:Ljava/text/DateFormat;

.field datetime:Lcom/narvii/util/DateTimeFormatter;

.field disableSwitchListener:Z

.field private fanClubAdapter:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

.field favoriteAdapter:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

.field header:Lcom/narvii/list/overlay/OverlayLayout;

.field private final headerClickListener:Landroid/view/View$OnClickListener;

.field private headerLayoutHeight:I

.field private headerPlaceHolder:Landroid/view/View;

.field instagramInstalled:Z

.field private isAccessible:Z

.field private itemListener:Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;

.field localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field membershipService:Lcom/narvii/wallet/MembershipService;

.field private final menuClickListener:Landroid/view/View$OnClickListener;

.field notActivated:Landroid/view/View;

.field public onFinishListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field postAdapter:Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

.field public postDividerAdapter:Lcom/narvii/list/DividerAdapter;

.field profileListener:Lcom/narvii/account/AccountService$ProfileListener;

.field receiver:Landroid/content/BroadcastReceiver;

.field sendingFollow:Z

.field slideShowMedias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field switchAdapter:Lcom/narvii/list/SwitchAdapter;

.field private switchListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field tab1Adapter:Lcom/narvii/list/NVAdapter;

.field tab2Adapter:Lcom/narvii/list/NVAdapter;

.field tab3Adapter:Lcom/narvii/list/NVAdapter;

.field tabAdapter:Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;

.field public topAdapter:Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

.field userBlockService:Lcom/narvii/userblock/UserBlockService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "user.bio.snippet"

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/user/profile/UserProfileFragment;->BIO_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "user.switch"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    sput-object v0, Lcom/narvii/user/profile/UserProfileFragment;->SWITCH:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->isAccessible:Z

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$2;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$2;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$5;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$5;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$11;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$11;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->headerClickListener:Landroid/view/View$OnClickListener;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$12;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$12;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->itemListener:Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$14;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$14;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 42
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/user/profile/UserProfileFragment;)Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/user/profile/UserProfileFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->brokenStreaks:I

    return-void
.end method

.method static bridge synthetic C(Lcom/narvii/user/profile/UserProfileFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    return-void
.end method

.method static bridge synthetic D(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->headerPlaceHolder:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->goAchievements(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->gotoFavorites()V

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->onCommunityUpdate()V

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/user/profile/UserProfileFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->shareUserProfile(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->showAminoStaffDialog()V

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/user/profile/UserProfileFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->showNotActivated()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic K(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateAccessible()V

    return-void
.end method

.method static bridge synthetic L(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateBackground()V

    return-void
.end method

.method static bridge synthetic M(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeaderPlaceHolder()V

    return-void
.end method

.method static bridge synthetic N(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateStreakInfo()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/detail/DetailFragment;->setTextColor(Landroid/view/View;II)V

    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/detail/DetailFragment;->setTextColor(Landroid/view/View;II)V

    .line 4
    return-void
.end method

.method static synthetic access$1002(Lcom/narvii/user/profile/UserProfileFragment;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 3
    return p1
.end method

.method static synthetic access$1100(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListViewContentBackground()V

    .line 4
    return-void
.end method

.method static synthetic access$1200(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/detail/DetailFragment;->setTextColor(Landroid/view/View;II)V

    .line 4
    return-void
.end method

.method static synthetic access$1300(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/detail/DetailFragment;->setTextColor(Landroid/view/View;III)V

    .line 4
    return-void
.end method

.method static synthetic access$1400(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$1500(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$1600(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$1700(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$1800(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$1900(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$802(Lcom/narvii/user/profile/UserProfileFragment;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    .line 3
    return p1
.end method

.method static synthetic access$902(Lcom/narvii/user/profile/UserProfileFragment;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_isBackgroundDark:Z

    .line 3
    return p1
.end method

.method private canChat()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    const-string v0, "account"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_5

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    return v1

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/model/User;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    const-string v2, "privilegeOfChatInviteRequest"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v4, 0x3

    .line 52
    const/4 v5, 0x2

    .line 53
    .line 54
    if-eq v2, v5, :cond_3

    .line 55
    .line 56
    if-eq v2, v4, :cond_2

    .line 57
    return v1

    .line 58
    :cond_2
    return v3

    .line 59
    .line 60
    :cond_3
    iget v0, v0, Lcom/narvii/model/User;->membershipStatus:I

    .line 61
    .line 62
    if-eq v0, v5, :cond_5

    .line 63
    .line 64
    if-ne v0, v4, :cond_4

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    move v1, v3

    .line 67
    :cond_5
    :goto_0
    return v1
.end method

.method private createAvatar()V
    .locals 0

    return-void
.end method

.method private goAchievements(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    const-class v0, Lcom/narvii/achievements/AchievementsFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "id"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/model/User;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v2, v1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    const-string v3, "mediaList"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string/jumbo v2, "user"

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    :cond_0
    const-string v1, "Source"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method private gotoFavorites()V
    .locals 4

    .line 1
    .line 2
    const-class v0, Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "id"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "uid"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/model/User;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    const/4 v2, 0x1

    .line 30
    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    .line 32
    const/4 v3, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    aput-object v1, v2, v3

    .line 39
    .line 40
    .line 41
    const v1, 0x7f121252

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    const-string/jumbo v2, "title"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    :cond_0
    const-string v1, "fromMyCatalog"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 57
    move-result v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    .line 62
    const-string v1, "Source"

    .line 63
    .line 64
    const-string v2, "User Profile"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public static intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    const-string v0, "config"

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, Lcom/narvii/config/ConfigService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 16
    move-result p0

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move p0, v0

    .line 23
    .line 24
    :goto_0
    iget-boolean v1, p1, Lcom/narvii/model/User;->isGlobal:Z

    .line 25
    .line 26
    .line 27
    const-string/jumbo v2, "user"

    .line 28
    .line 29
    const-string v3, "id"

    .line 30
    .line 31
    if-nez v1, :cond_6

    .line 32
    .line 33
    iget v1, p1, Lcom/narvii/model/User;->ndcId:I

    .line 34
    .line 35
    if-eqz v1, :cond_6

    .line 36
    const/4 v4, -0x1

    .line 37
    .line 38
    if-ne v1, v4, :cond_2

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    goto :goto_2

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSystem()Z

    .line 45
    move-result p0

    .line 46
    .line 47
    if-nez p0, :cond_5

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/model/User;->isModerator()Z

    .line 51
    move-result p0

    .line 52
    .line 53
    if-eqz p0, :cond_3

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_3
    const-class p0, Lcom/narvii/user/profile/UserProfileFragment;

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    const-string v1, "prefetch"

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    const-string v1, "__interactionScope"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    .line 81
    iget p1, p1, Lcom/narvii/model/User;->ndcId:I

    .line 82
    .line 83
    if-lez p1, :cond_4

    .line 84
    .line 85
    const-string v0, "__communityId"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    :cond_4
    return-object p0

    .line 90
    .line 91
    :cond_5
    :goto_1
    const-class p0, Lcom/narvii/user/profile/AccountUserProfileFragment;

    .line 92
    .line 93
    .line 94
    invoke-static {p0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    move-result-object p0

    .line 96
    .line 97
    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    return-object p0

    .line 109
    .line 110
    :cond_6
    :goto_2
    const-class p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 111
    .line 112
    .line 113
    invoke-static {p0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    move-result-object p0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    return-object p0
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->activateAccount()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0f36

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    .line 25
    if-ge v0, p1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 34
    :cond_0
    return-void
.end method

.method private synthetic lambda$updateStreakInfo$2(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->goAchievements(Ljava/lang/String;)V

    .line 5
    return-void
.end method

.method private onCommunityUpdate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->addBlogAdapter:Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 21
    :cond_1
    return-void
.end method

.method private resetDarkTheme(Lcom/narvii/list/NVAdapter;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 10
    :cond_0
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendStreakStatusRequest()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 12
    move-result v1

    .line 13
    .line 14
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v4, "/check-in/stats/"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    const-string/jumbo v3, "timezone"

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    new-instance v2, Lcom/narvii/user/profile/UserProfileFragment$13;

    .line 60
    .line 61
    const-class v3, Lcom/narvii/achievements/StreakStatusResponse;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, p0, v3}, Lcom/narvii/user/profile/UserProfileFragment$13;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/Class;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 68
    return-void
.end method

.method private shareImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "profile"

    .line 7
    .line 8
    const-string v2, "png"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/narvii/util/image/Screenshot;->getNewScreenshotFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v1, Ljava/io/FileOutputStream;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 18
    .line 19
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 20
    .line 21
    const/16 v3, 0x64

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 31
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    new-instance v0, Landroid/content/Intent;

    .line 34
    .line 35
    const-string v1, "android.intent.action.SEND"

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    const-string v1, "image/*"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    const-string v1, "android.intent.extra.STREAM"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    .line 50
    new-instance p1, Lcom/narvii/util/PackageUtils;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    if-eqz p2, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/narvii/util/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    .line 63
    move-result p1

    .line 64
    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    :cond_0
    :try_start_1
    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    :catch_0
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    .line 83
    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    .line 87
    const p1, 0x7f120e3a

    .line 88
    goto :goto_0

    .line 89
    .line 90
    .line 91
    :cond_1
    const p1, 0x7f120d77

    .line 92
    :goto_0
    const/4 v0, 0x0

    .line 93
    .line 94
    .line 95
    invoke-static {p2, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 100
    return-void
.end method

.method private shareUserProfile(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0f57

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/user/profile/HeaderLayout;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    .line 18
    const/4 v2, 0x2

    .line 19
    .line 20
    if-lt v1, v2, :cond_0

    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/user/profile/HeaderLayout;->screenshotForSharing(Z)Landroid/graphics/Bitmap;

    .line 27
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .line 31
    const-string v1, "OutOfMemory when create profile image"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/share/ShareDarkRoomHelper;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 49
    .line 50
    const-class v0, Lcom/narvii/user/profile/UserProfileShareFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    sget-object v1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    .line 57
    .line 58
    const-string v2, "User Profile"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    sget-object v1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileShareFragment;->saveDynamicProfileImg(Landroid/graphics/Bitmap;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 83
    :cond_2
    return-void
.end method

.method private showAminoStaffDialog()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f120143

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    .line 18
    const v1, 0x104000a

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 26
    return-void
.end method

.method private showDisabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/User;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->shouldShowDisableBar(Lcom/narvii/model/NVObject;)Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method private showNotActivated()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasActivation()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->showDisabled()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method

.method public static synthetic t(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->lambda$updateStreakInfo$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method private updateAccessible()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/User;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v1, Lcom/narvii/util/FilterHelper;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/narvii/util/FilterHelper;->isAccessible(Lcom/narvii/model/NVObject;)Z

    .line 26
    move-result v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    .line 30
    :goto_1
    iget-boolean v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->isAccessible:Z

    .line 31
    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->isAccessible:Z

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->notifyDataSetChanged()V

    .line 42
    :cond_2
    return-void
.end method

.method private updateBackground()V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Lcom/narvii/model/User;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/model/User;->getBackgroundColor()I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    const v4, 0x7f0a062a

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    .line 39
    if-eqz v3, :cond_4

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    .line 45
    move-result v6

    .line 46
    .line 47
    if-nez v6, :cond_2

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_2
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    .line 51
    .line 52
    new-instance v7, Landroid/graphics/drawable/shapes/RectShape;

    .line 53
    .line 54
    .line 55
    invoke-direct {v7}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-direct {v6, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v7

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object v7

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 70
    move-result-object v7

    .line 71
    .line 72
    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 76
    move-result-object v8

    .line 77
    .line 78
    .line 79
    const v9, 0x7f070532

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 83
    move-result v8

    .line 84
    .line 85
    div-int/lit8 v8, v8, 0x4

    .line 86
    int-to-float v8, v8

    .line 87
    .line 88
    .line 89
    const v9, 0x3e99999a    # 0.3f

    .line 90
    mul-float/2addr v9, v8

    .line 91
    .line 92
    mul-float v10, v9, v9

    .line 93
    .line 94
    mul-int v11, v7, v7

    .line 95
    .line 96
    div-int/lit8 v11, v11, 0x4

    .line 97
    int-to-float v11, v11

    .line 98
    add-float/2addr v10, v11

    .line 99
    .line 100
    const/high16 v11, 0x40000000    # 2.0f

    .line 101
    mul-float/2addr v11, v9

    .line 102
    div-float/2addr v10, v11

    .line 103
    sub-float/2addr v8, v9

    .line 104
    .line 105
    add-float v14, v10, v8

    .line 106
    .line 107
    .line 108
    const v8, 0xffffff

    .line 109
    and-int/2addr v8, v2

    .line 110
    .line 111
    .line 112
    filled-new-array {v8, v8, v2}, [I

    .line 113
    move-result-object v15

    .line 114
    const/4 v8, 0x3

    .line 115
    .line 116
    new-array v8, v8, [F

    .line 117
    const/4 v11, 0x0

    .line 118
    .line 119
    aput v11, v8, v5

    .line 120
    .line 121
    div-float v11, v10, v14

    .line 122
    .line 123
    aput v11, v8, v4

    .line 124
    .line 125
    const/high16 v11, 0x3f800000    # 1.0f

    .line 126
    const/4 v12, 0x2

    .line 127
    .line 128
    aput v11, v8, v12

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 132
    move-result-object v13

    .line 133
    .line 134
    new-instance v11, Landroid/graphics/RadialGradient;

    .line 135
    div-int/2addr v7, v12

    .line 136
    int-to-float v12, v7

    .line 137
    sub-float/2addr v10, v9

    .line 138
    neg-float v7, v10

    .line 139
    .line 140
    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 141
    move-object v9, v11

    .line 142
    move-object v10, v13

    .line 143
    move v13, v7

    .line 144
    .line 145
    move-object/from16 v16, v8

    .line 146
    .line 147
    .line 148
    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    goto :goto_1

    .line 156
    :cond_3
    :goto_0
    const/4 v6, 0x0

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    .line 161
    :cond_4
    :goto_1
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 162
    .line 163
    if-eqz v3, :cond_6

    .line 164
    .line 165
    if-eqz v2, :cond_5

    .line 166
    .line 167
    .line 168
    invoke-static {v2}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    .line 169
    move-result v2

    .line 170
    .line 171
    if-eqz v2, :cond_5

    .line 172
    .line 173
    .line 174
    const v2, 0x7f080a11

    .line 175
    goto :goto_2

    .line 176
    .line 177
    .line 178
    :cond_5
    const v2, 0x7f080a10

    .line 179
    .line 180
    :goto_2
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 181
    .line 182
    .line 183
    const v6, 0x7f0a0f5a

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    move-result-object v3

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 191
    .line 192
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 193
    .line 194
    .line 195
    const v6, 0x7f0a0f43

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    move-result-object v3

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 203
    .line 204
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 205
    .line 206
    .line 207
    const v6, 0x7f0a0f44

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    move-result-object v3

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 215
    .line 216
    :cond_6
    iget-object v2, v0, Lcom/narvii/detail/DetailFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 217
    .line 218
    new-array v3, v4, [Lcom/narvii/image/BackgroundSource;

    .line 219
    .line 220
    aput-object v1, v3, v5

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v3}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 227
    move-result v1

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 231
    .line 232
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->tabAdapter:Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;

    .line 233
    .line 234
    .line 235
    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 236
    .line 237
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->favoriteAdapter:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    .line 238
    .line 239
    .line 240
    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 241
    .line 242
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->postAdapter:Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

    .line 243
    .line 244
    .line 245
    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 246
    .line 247
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentDividerAdapter:Lcom/narvii/list/DividerAdapter;

    .line 248
    .line 249
    .line 250
    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 251
    .line 252
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->postDividerAdapter:Lcom/narvii/list/DividerAdapter;

    .line 253
    .line 254
    .line 255
    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 256
    .line 257
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkDividerAdapter:Lcom/narvii/list/DividerAdapter;

    .line 258
    .line 259
    .line 260
    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 261
    .line 262
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentHeaderAdapter:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;

    .line 263
    .line 264
    .line 265
    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 266
    .line 267
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAddAdapter:Lcom/narvii/user/profile/adapter/CommentAddAdapter;

    .line 268
    .line 269
    .line 270
    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 271
    .line 272
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 273
    .line 274
    .line 275
    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 276
    .line 277
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 278
    .line 279
    .line 280
    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 281
    .line 282
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->addBlogAdapter:Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;

    .line 283
    .line 284
    .line 285
    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 286
    .line 287
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkAdapter:Lcom/narvii/bookmark/BookmarkAdapter;

    .line 288
    .line 289
    .line 290
    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 291
    .line 292
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->fanClubAdapter:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    .line 293
    .line 294
    .line 295
    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 296
    .line 297
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioDividerAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioDividerAdapter;

    .line 298
    .line 299
    .line 300
    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 301
    return-void
.end method

.method private updateBadge(Lcom/narvii/model/User;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result p1

    .line 10
    .line 11
    xor-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a010b

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    const/16 p1, 0x8

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_1
    return-void
.end method

.method private updateBottomMargin(IILandroid/view/ViewGroup;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object p3

    .line 9
    .line 10
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    .line 12
    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    return-void
.end method

.method private updateHeaderPlaceHolder()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->headerPlaceHolder:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->headerLayoutHeight:I

    .line 12
    .line 13
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->headerPlaceHolder:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    return-void
.end method

.method private updateStreakInfo()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0a0057

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/user/profile/c;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/narvii/user/profile/c;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 33
    .line 34
    .line 35
    const v1, 0x7f0a0058

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget v2, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    .line 47
    const/4 v3, 0x2

    .line 48
    .line 49
    if-lt v2, v3, :cond_2

    .line 50
    const/4 v3, 0x1

    .line 51
    .line 52
    new-array v3, v3, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    aput-object v2, v3, v1

    .line 59
    .line 60
    .line 61
    const v2, 0x7f120d25

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    goto :goto_0

    .line 67
    .line 68
    .line 69
    :cond_2
    const v2, 0x7f120067

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    :cond_3
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 79
    .line 80
    .line 81
    const v2, 0x7f0a0dd6

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    iget v2, p0, Lcom/narvii/user/profile/UserProfileFragment;->brokenStreaks:I

    .line 88
    .line 89
    if-lez v2, :cond_4

    .line 90
    .line 91
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 95
    move-result v2

    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_4
    const/16 v1, 0x8

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_5
    :goto_2
    return-void
.end method

.method private userDisabled()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/User;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    return v1

    .line 16
    .line 17
    :cond_1
    iget v0, v0, Lcom/narvii/model/User;->status:I

    .line 18
    .line 19
    const/16 v2, 0x9

    .line 20
    .line 21
    if-eq v0, v2, :cond_2

    .line 22
    .line 23
    const/16 v2, 0xa

    .line 24
    .line 25
    if-ne v0, v2, :cond_3

    .line 26
    :cond_2
    const/4 v1, 0x1

    .line 27
    :cond_3
    return v1
.end method

.method public static synthetic v(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/user/profile/UserProfileFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/profile/UserProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/user/profile/UserProfileFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/profile/UserProfileFragment;->headerPlaceHolder:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/user/profile/UserProfileFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/user/profile/UserProfileFragment;->isAccessible:Z

    return p0
.end method

.method static bridge synthetic z(Lcom/narvii/user/profile/UserProfileFragment;)Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/profile/UserProfileFragment;->itemListener:Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public activateAccount()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/prefs/AccountSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "Source"

    .line 9
    .line 10
    const-string v2, "My User Profile"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    const/4 v1, 0x5

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 18
    return-void
.end method

.method public addToFavoriteMembers()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/User;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    new-instance v2, Lcom/narvii/user/profile/UserProfileFragment$20;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$20;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/model/User;)V

    .line 26
    .line 27
    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    const-string v4, "/user-group/quick-access/"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    const-string v2, "api"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 79
    return-void
.end method

.method public blockUser(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->blockUser(ZZ)V

    return-void
.end method

.method public blockUser(ZZ)V
    .locals 3

    if-nez p2, :cond_1

    .line 2
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const v0, 0x7f121206

    goto :goto_0

    :cond_0
    const v0, 0x7f1201b4

    .line 3
    :goto_0
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$18;

    invoke-direct {v0, p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$18;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Z)V

    const p1, 0x7f12033f

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 5
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 7
    :cond_1
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/userblock/BlockListResponse;

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$19;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$19;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 9
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v0, "config"

    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    if-eqz p1, :cond_2

    .line 11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 13
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/block/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "id"

    .line 14
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "api"

    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_2
    return-void
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v0, "self"

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    const-string v0, "other"

    .line 15
    .line 16
    :goto_0
    const-string/jumbo v1, "status"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 20
    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    sget-object p2, Lcom/narvii/logging/ObjectType;->user:Lcom/narvii/logging/ObjectType;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 37
    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->topAdapter:Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->favoriteAdapter:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->tabAdapter:Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->postAdapter:Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 39
    .line 40
    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->addBlogAdapter:Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->addBlogAdapter:Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    .line 53
    :cond_0
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->favoriteAdapter:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->postAdapter:Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

    .line 59
    const/4 v2, 0x1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 63
    .line 64
    new-instance v1, Lcom/narvii/list/DividerAdapter;

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 68
    .line 69
    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->postDividerAdapter:Lcom/narvii/list/DividerAdapter;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->postDividerAdapter:Lcom/narvii/list/DividerAdapter;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->tab1Adapter:Lcom/narvii/list/NVAdapter;

    .line 77
    .line 78
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 82
    .line 83
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 84
    .line 85
    new-instance v0, Lcom/narvii/list/DividerAdapter;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 89
    .line 90
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentDividerAdapter:Lcom/narvii/list/DividerAdapter;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    .line 97
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 101
    move-result v1

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;Z)V

    .line 105
    .line 106
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentHeaderAdapter:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;

    .line 107
    .line 108
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentAddAdapter;

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, p0, p0}, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentAddAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V

    .line 112
    .line 113
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentAddAdapter:Lcom/narvii/user/profile/adapter/CommentAddAdapter;

    .line 114
    .line 115
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 116
    .line 117
    .line 118
    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 119
    .line 120
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentHeaderAdapter:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    .line 125
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentAddAdapter:Lcom/narvii/user/profile/adapter/CommentAddAdapter;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    .line 130
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 134
    .line 135
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->tab2Adapter:Lcom/narvii/list/NVAdapter;

    .line 136
    .line 137
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 141
    .line 142
    new-instance v1, Lcom/narvii/list/DividerAdapter;

    .line 143
    .line 144
    .line 145
    invoke-direct {v1, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 146
    .line 147
    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkDividerAdapter:Lcom/narvii/list/DividerAdapter;

    .line 148
    .line 149
    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$3;

    .line 150
    .line 151
    .line 152
    invoke-direct {v1, p0, p0}, Lcom/narvii/user/profile/UserProfileFragment$3;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V

    .line 153
    .line 154
    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkAdapter:Lcom/narvii/bookmark/BookmarkAdapter;

    .line 155
    .line 156
    iget-object v3, p0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkDividerAdapter:Lcom/narvii/list/DividerAdapter;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    .line 161
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkDividerAdapter:Lcom/narvii/list/DividerAdapter;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    .line 166
    new-instance v1, Lcom/narvii/list/StaticViewAdapter;

    .line 167
    .line 168
    .line 169
    invoke-direct {v1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 170
    .line 171
    .line 172
    const v3, 0x7f0d04e2

    .line 173
    .line 174
    .line 175
    filled-new-array {v3}, [I

    .line 176
    move-result-object v3

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v3}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    .line 184
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->tab3Adapter:Lcom/narvii/list/NVAdapter;

    .line 185
    .line 186
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 190
    .line 191
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 192
    .line 193
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$MySwitchAdapter;

    .line 194
    .line 195
    .line 196
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$MySwitchAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 197
    .line 198
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 199
    .line 200
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->tab1Adapter:Lcom/narvii/list/NVAdapter;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 204
    .line 205
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 206
    .line 207
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->tab2Adapter:Lcom/narvii/list/NVAdapter;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 214
    move-result v0

    .line 215
    .line 216
    if-eqz v0, :cond_1

    .line 217
    .line 218
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 219
    .line 220
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->tab3Adapter:Lcom/narvii/list/NVAdapter;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 224
    .line 225
    :cond_1
    if-nez p1, :cond_2

    .line 226
    .line 227
    .line 228
    const-string/jumbo p1, "tab"

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    move-result-object p1

    .line 233
    .line 234
    const-string v0, "comment"

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    move-result p1

    .line 239
    .line 240
    if-eqz p1, :cond_2

    .line 241
    .line 242
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v2}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    .line 246
    .line 247
    :cond_2
    new-instance p1, Lcom/narvii/user/profile/UserProfileFragment$4;

    .line 248
    .line 249
    .line 250
    invoke-direct {p1, p0, p0}, Lcom/narvii/user/profile/UserProfileFragment$4;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V

    .line 251
    .line 252
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->topAdapter:Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    .line 257
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 261
    .line 262
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    .line 263
    .line 264
    .line 265
    invoke-direct {v0, p0, p0}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V

    .line 266
    .line 267
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->fanClubAdapter:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 271
    .line 272
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$BioDividerAdapter;

    .line 273
    .line 274
    .line 275
    invoke-direct {v0, p0, p0}, Lcom/narvii/user/profile/UserProfileFragment$BioDividerAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V

    .line 276
    .line 277
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioDividerAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioDividerAdapter;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 281
    .line 282
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->tabAdapter:Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    .line 287
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 291
    .line 292
    const-string v0, "id"

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    move-result-object v0

    .line 297
    .line 298
    .line 299
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 300
    move-result v1

    .line 301
    .line 302
    if-nez v1, :cond_3

    .line 303
    .line 304
    new-instance v1, Lcom/narvii/master/home/profile/UserBlockHintAdapter;

    .line 305
    const/4 v2, 0x0

    .line 306
    .line 307
    .line 308
    invoke-direct {v1, p0, v0, v2}, Lcom/narvii/master/home/profile/UserBlockHintAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 312
    :cond_3
    return-object p1
.end method

.method public editProfile(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/user/profile/UserProfileFragment;->openUserProfilePostActivity(Ljava/lang/String;ZZ)V

    .line 5
    return-void
.end method

.method public flagForReview()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 28
    return-void
.end method

.method public follow(Z)V
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->sendingFollow:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/model/User;

    .line 14
    .line 15
    iget v0, v0, Lcom/narvii/model/User;->membershipStatus:I

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    const/4 v2, 0x3

    .line 20
    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    move v0, v1

    .line 26
    .line 27
    :goto_1
    const-string v2, "User Profile"

    .line 28
    .line 29
    const-string v3, "Number of Friends"

    .line 30
    .line 31
    const-string/jumbo v4, "statistics"

    .line 32
    .line 33
    const-string v5, "id"

    .line 34
    .line 35
    const-string v6, "/user-profile/"

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    const v0, 0x7f121250

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$15;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$15;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 66
    return-void

    .line 67
    .line 68
    :cond_3
    const-string p1, "account"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 78
    move-result-object v7

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    move-result-object v7

    .line 83
    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v5

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v5, "/member/"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    move-result-object v4

    .line 126
    .line 127
    check-cast v4, Lcom/narvii/util/statistics/StatisticsService;

    .line 128
    .line 129
    const-string v5, "Unfollow User"

    .line 130
    .line 131
    .line 132
    invoke-interface {v4, v5}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 133
    move-result-object v4

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropDec(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 137
    move-result-object v3

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 141
    goto :goto_2

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    move-result-object v5

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v5, "/member"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v5

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 177
    move-result-object p1

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 181
    move-result-object p1

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    move-result-object v4

    .line 186
    .line 187
    check-cast v4, Lcom/narvii/util/statistics/StatisticsService;

    .line 188
    .line 189
    const-string v5, "Follow User"

    .line 190
    .line 191
    .line 192
    invoke-interface {v4, v5}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 193
    move-result-object v4

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 197
    move-result-object v3

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 201
    .line 202
    :goto_2
    const-string v2, "api"

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    move-result-object v2

    .line 207
    .line 208
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 209
    .line 210
    new-instance v3, Lcom/narvii/user/profile/UserProfileFragment$16;

    .line 211
    .line 212
    const-class v4, Lcom/narvii/model/api/ApiResponse;

    .line 213
    .line 214
    .line 215
    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/user/profile/UserProfileFragment$16;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/Class;Z)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, p1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 219
    .line 220
    iput-boolean v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->sendingFollow:Z

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    .line 224
    return-void
.end method

.method public gallery(Lcom/narvii/model/Media;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Lcom/narvii/model/User;

    .line 14
    .line 15
    new-instance v2, Lcom/narvii/model/Media;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2}, Lcom/narvii/model/Media;-><init>()V

    .line 19
    .line 20
    const/16 v3, 0x64

    .line 21
    .line 22
    iput v3, v2, Lcom/narvii/model/Media;->type:I

    .line 23
    .line 24
    iget-object v3, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    iget-object v2, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    return-void

    .line 35
    .line 36
    :cond_0
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment;->slideShowMedias:Ljava/util/ArrayList;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 45
    move-result p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    .line 49
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    const-class v4, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    .line 56
    .line 57
    .line 58
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .line 60
    const-string v3, "parent"

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    const-string v1, "parentClass"

    .line 70
    .line 71
    const-class v3, Lcom/narvii/model/User;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    .line 76
    const-string v1, "list"

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    if-lez p1, :cond_2

    .line 86
    .line 87
    const-string v0, "position"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    .line 92
    :cond_2
    const-string p1, "preview"

    .line 93
    .line 94
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    invoke-static {p0, v2}, Lcom/narvii/user/profile/UserProfileFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public galleryBioMedias(Lcom/narvii/model/Media;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioMedias:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 8
    move-result p1

    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-class v2, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    const-string v2, "parent"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    const-string v1, "parentClass"

    .line 39
    .line 40
    const-class v2, Lcom/narvii/model/User;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 44
    .line 45
    :cond_0
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioMedias:Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    const-string v2, "list"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    if-lez p1, :cond_1

    .line 57
    .line 58
    const-string v1, "position"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    .line 63
    :cond_1
    const-string p1, "preview"

    .line 64
    .line 65
    iget-boolean v1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 72
    :cond_2
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getDetailNVObject()Lcom/narvii/model/NVObject;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method protected getDisableStrId(Lcom/narvii/model/NVObject;)I
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/User;

    .line 7
    .line 8
    iget p1, p1, Lcom/narvii/model/User;->status:I

    .line 9
    .line 10
    const/16 v0, 0xa

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    .line 15
    const p1, 0x7f1203c8

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    const/16 v0, 0x9

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    .line 23
    const p1, 0x7f1203cb

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    const p1, 0x7f1203ca

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailFragment;->setDisabledText(Ljava/lang/CharSequence;)V

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method public getMood()Lcom/narvii/model/Sticker;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isOnline()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    move-object v0, v1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/model/User;

    .line 20
    .line 21
    :goto_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const-string v0, "account"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    :cond_1
    if-nez v0, :cond_2

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    .line 46
    move-result-object v1

    .line 47
    :cond_3
    :goto_1
    return-object v1
.end method

.method public getOnlineStatus()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "account"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getOnlineStatus()I

    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    const/4 v0, 0x0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/model/User;

    .line 32
    .line 33
    :goto_0
    if-nez v0, :cond_2

    .line 34
    const/4 v0, 0x0

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_2
    iget v0, v0, Lcom/narvii/model/User;->onlineStatus:I

    .line 38
    :goto_1
    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "user_profile"

    return-object v0
.end method

.method protected hasVisitorBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    .line 10
    return-object v0
.end method

.method public isGlobalInteractionScope()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMe()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "id"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public isOnline()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->getOnlineStatus()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    const-string v0, "liveLayer"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v2, "user-profile/"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    .line 45
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, -0x1

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    if-ne p2, v1, :cond_0

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    const-string v0, "itemList"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-class v2, Lcom/narvii/model/Item;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    move-result v2

    .line 27
    .line 28
    if-lez v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->tagFavorites(Ljava/util/List;)V

    .line 32
    :cond_0
    const/4 v0, 0x5

    .line 33
    .line 34
    if-ne p1, v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    .line 38
    .line 39
    :cond_1
    const/16 v0, 0x6f

    .line 40
    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    if-ne p2, v1, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 46
    .line 47
    const-string v1, "collectionId"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->commentNew(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    const-string v0, "account"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->datetime:Lcom/narvii/util/DateTimeFormatter;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 42
    return-void

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    const v2, 0x7f070532

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 53
    move-result v1

    .line 54
    .line 55
    iput v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->headerLayoutHeight:I

    .line 56
    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    new-instance v1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 60
    .line 61
    .line 62
    invoke-direct {v1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 63
    .line 64
    new-instance v2, Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 68
    .line 69
    const-string v3, "User Profile"

    .line 70
    .line 71
    const-string v4, "Source"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    const-string v3, "chatInvite"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 95
    .line 96
    const-string/jumbo v1, "statistics"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    check-cast v1, Lcom/narvii/util/statistics/StatisticsService;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 106
    move-result v2

    .line 107
    .line 108
    if-eqz v2, :cond_1

    .line 109
    .line 110
    const-string v2, "My Profile Page Opened"

    .line 111
    .line 112
    .line 113
    invoke-interface {v1, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    const-string v2, "My Profile Page Opened Total"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 128
    goto :goto_0

    .line 129
    .line 130
    .line 131
    :cond_1
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    const-string v3, "Other Profile Page Opened"

    .line 135
    .line 136
    .line 137
    invoke-interface {v1, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    const-string v3, "Other Profile Page Opened Total"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 144
    move-result-object v1

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 148
    .line 149
    .line 150
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 151
    move-result v1

    .line 152
    .line 153
    if-eqz v1, :cond_3

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 160
    .line 161
    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$1;

    .line 162
    .line 163
    .line 164
    invoke-direct {v1, p0}, Lcom/narvii/user/profile/UserProfileFragment$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 165
    .line 166
    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 170
    .line 171
    const-string/jumbo v0, "selectMood"

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 175
    move-result v0

    .line 176
    .line 177
    if-eqz v0, :cond_3

    .line 178
    .line 179
    if-nez p1, :cond_3

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->popupOnlineStatusMenu()V

    .line 183
    .line 184
    :cond_3
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 185
    .line 186
    .line 187
    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 188
    .line 189
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 190
    .line 191
    const-string v0, "config"

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 198
    .line 199
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    const-string v1, "block"

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    check-cast v0, Lcom/narvii/userblock/UserBlockService;

    .line 212
    .line 213
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    .line 214
    .line 215
    const-string v0, "membership"

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    move-result-object v0

    .line 220
    .line 221
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 222
    .line 223
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 224
    const/4 v1, 0x1

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 228
    .line 229
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 230
    .line 231
    if-nez v0, :cond_4

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 235
    .line 236
    :cond_4
    if-eqz p1, :cond_5

    .line 237
    .line 238
    const-string v0, "consecutiveCheckInDays"

    .line 239
    const/4 v1, -0x1

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 243
    move-result v0

    .line 244
    .line 245
    iput v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    .line 246
    .line 247
    const-string v0, "brokenStreaks"

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 251
    move-result p1

    .line 252
    .line 253
    iput p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->brokenStreaks:I

    .line 254
    .line 255
    .line 256
    :cond_5
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->sendStreakStatusRequest()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 260
    move-result-object p1

    .line 261
    .line 262
    .line 263
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 264
    move-result-object p1

    .line 265
    .line 266
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 267
    .line 268
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 269
    .line 270
    new-instance v1, Landroid/content/IntentFilter;

    .line 271
    .line 272
    const-string v2, "com.narvii.action.COMMUNITY_CHANGED"

    .line 273
    .line 274
    .line 275
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 279
    .line 280
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 281
    .line 282
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 283
    .line 284
    new-instance v1, Landroid/content/IntentFilter;

    .line 285
    .line 286
    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 287
    .line 288
    .line 289
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 293
    .line 294
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 295
    .line 296
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 297
    .line 298
    new-instance v1, Landroid/content/IntentFilter;

    .line 299
    .line 300
    const-string v2, "com.narvii.action.ACTION_STREAK_REPAIR_SUCCESS"

    .line 301
    .line 302
    .line 303
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 307
    .line 308
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 309
    .line 310
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 311
    .line 312
    new-instance v1, Landroid/content/IntentFilter;

    .line 313
    .line 314
    const-string v2, "com.narvii.action.WALLET_CHANGED"

    .line 315
    .line 316
    .line 317
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 321
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0968

    .line 7
    .line 8
    .line 9
    const v0, 0x7f120e1b

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0d077d

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 21
    move-result-object p2

    .line 22
    const/4 v0, 0x2

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    const v2, 0x7f0a04d9

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 46
    .line 47
    const/high16 v2, 0x3f800000    # 1.0f

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    const v3, 0x7f0a04da

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const p2, 0x7f0a0969

    .line 61
    .line 62
    .line 63
    const v2, 0x7f120cd0

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v1, p2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    const v2, 0x7f0d059d

    .line 71
    .line 72
    .line 73
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    .line 77
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    .line 81
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 91
    move-result v0

    .line 92
    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 97
    .line 98
    .line 99
    :cond_0
    const p2, 0x7f121248

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 103
    .line 104
    .line 105
    const p2, 0x7f121228

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    new-instance v2, Landroid/text/SpannableString;

    .line 112
    .line 113
    .line 114
    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 117
    .line 118
    .line 119
    const v4, -0x1eb9b7

    .line 120
    .line 121
    .line 122
    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 126
    move-result v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3, v1, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v1, p2, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 133
    .line 134
    .line 135
    const p2, 0x7f1210bb

    .line 136
    .line 137
    .line 138
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 139
    .line 140
    .line 141
    const p2, 0x7f1210ad

    .line 142
    .line 143
    .line 144
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 145
    .line 146
    .line 147
    const p2, 0x7f12122b

    .line 148
    .line 149
    .line 150
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 151
    .line 152
    .line 153
    const p2, 0x7f121233

    .line 154
    .line 155
    .line 156
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 157
    move-result-object p2

    .line 158
    .line 159
    new-instance v0, Lcom/narvii/util/ActionBarIcon;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 163
    move-result-object v2

    .line 164
    .line 165
    .line 166
    const v3, 0x7f12064c

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, v2, v3}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 170
    .line 171
    .line 172
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 173
    .line 174
    .line 175
    const p2, 0x7f120781

    .line 176
    .line 177
    .line 178
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 179
    move-result-object p2

    .line 180
    .line 181
    .line 182
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 183
    .line 184
    .line 185
    const p2, 0x7f12122c

    .line 186
    .line 187
    .line 188
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 189
    move-result-object p2

    .line 190
    .line 191
    .line 192
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 193
    .line 194
    .line 195
    const p2, 0x7f12124f

    .line 196
    .line 197
    .line 198
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 199
    move-result-object p2

    .line 200
    .line 201
    .line 202
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 203
    .line 204
    .line 205
    const p2, 0x7f12009d

    .line 206
    .line 207
    .line 208
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    .line 212
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 213
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d04ed

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "account"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 30
    :cond_1
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v0, "follow"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->follow(Z)V

    .line 19
    return-void

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 23
    return-void
.end method

.method protected onNotAvailableChanged(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onNotAvailableChanged(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0a0f57

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 16
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->fanClubAdapter:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->getCount()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    instance-of v1, v0, Lcom/narvii/influencer/FanClub;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    const-string/jumbo v1, "update"

    .line 22
    .line 23
    if-eq p1, v1, :cond_0

    .line 24
    .line 25
    const-string v1, "new"

    .line 26
    .line 27
    if-ne p1, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    check-cast v0, Lcom/narvii/influencer/FanClub;

    .line 30
    .line 31
    iget-object p1, v0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->fanClubAdapter:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->onFanClubSubscriptionChanged()V

    .line 47
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    .line 9
    sparse-switch v0, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    .line 16
    .line 17
    :sswitch_0
    invoke-virtual {p0, v2, v1}, Lcom/narvii/user/profile/UserProfileFragment;->blockUser(ZZ)V

    .line 18
    return v2

    .line 19
    .line 20
    .line 21
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->startChat()V

    .line 22
    return v2

    .line 23
    .line 24
    :sswitch_2
    const-string p1, "Action Sheet"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v1}, Lcom/narvii/user/profile/UserProfileFragment;->editProfile(Ljava/lang/String;Z)V

    .line 28
    return v2

    .line 29
    .line 30
    .line 31
    :sswitch_3
    invoke-virtual {p0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->blockUser(Z)V

    .line 32
    return v2

    .line 33
    .line 34
    .line 35
    :sswitch_4
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->addToFavoriteMembers()V

    .line 36
    return v2

    .line 37
    .line 38
    .line 39
    :sswitch_5
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->activateAccount()V

    .line 40
    return v2

    .line 41
    .line 42
    :sswitch_6
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 46
    .line 47
    const-string v0, "User Profile"

    .line 48
    .line 49
    iput-object v0, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    .line 59
    return v2

    .line 60
    :sswitch_7
    const/4 p1, 0x0

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->shareUserProfile(Landroid/graphics/Bitmap;)V

    .line 64
    return v2

    .line 65
    .line 66
    .line 67
    :sswitch_8
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->flagForReview()V

    .line 68
    return v2

    .line 69
    .line 70
    .line 71
    :sswitch_9
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    const/16 v0, 0x6d

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    const-string v0, "android.permission.CAMERA"

    .line 85
    .line 86
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 87
    .line 88
    .line 89
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 98
    return v2

    .line 99
    .line 100
    :sswitch_a
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    check-cast p1, Lcom/narvii/model/User;

    .line 107
    .line 108
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 123
    return v2

    .line 124
    nop

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    :sswitch_data_0
    .sparse-switch
        0x7f12009d -> :sswitch_a
        0x7f120365 -> :sswitch_9
        0x7f120781 -> :sswitch_8
        0x7f1210ad -> :sswitch_7
        0x7f1210bb -> :sswitch_6
        0x7f121228 -> :sswitch_5
        0x7f12122b -> :sswitch_4
        0x7f12122c -> :sswitch_3
        0x7f121233 -> :sswitch_2
        0x7f121248 -> :sswitch_1
        0x7f12124f -> :sswitch_0
    .end sparse-switch
.end method

.method public onPermissionGranted(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onPermissionGranted(I)V

    .line 4
    .line 5
    const/16 v0, 0x6d

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->createAvatar()V

    .line 11
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    const-string v0, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-boolean v4, p0, Lcom/narvii/user/profile/UserProfileFragment;->instagramInstalled:Z

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v4, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move v4, v2

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasActivation()Z

    .line 31
    move-result v5

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 35
    move-result v6

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isOnline()Z

    .line 39
    move-result v7

    .line 40
    .line 41
    iget-object v8, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 42
    .line 43
    if-nez v8, :cond_2

    .line 44
    const/4 v8, 0x0

    .line 45
    goto :goto_2

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {v8}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 49
    move-result-object v8

    .line 50
    .line 51
    check-cast v8, Lcom/narvii/model/User;

    .line 52
    .line 53
    :goto_2
    if-eqz v8, :cond_4

    .line 54
    .line 55
    iget v9, v8, Lcom/narvii/model/User;->role:I

    .line 56
    .line 57
    const/16 v10, 0xfd

    .line 58
    .line 59
    if-ne v9, v10, :cond_4

    .line 60
    move v0, v3

    .line 61
    .line 62
    .line 63
    :goto_3
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    .line 64
    move-result v1

    .line 65
    .line 66
    if-ge v0, v1, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    return-void

    .line 78
    .line 79
    .line 80
    :cond_4
    const v9, 0x7f0a0968

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 84
    move-result-object v10

    .line 85
    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->getOnlineStatus()I

    .line 90
    move-result v11

    .line 91
    .line 92
    if-eqz v11, :cond_5

    .line 93
    move v11, v2

    .line 94
    goto :goto_4

    .line 95
    :cond_5
    move v11, v3

    .line 96
    .line 97
    .line 98
    :goto_4
    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 99
    .line 100
    .line 101
    const v10, 0x7f0a0969

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 105
    move-result-object v10

    .line 106
    .line 107
    xor-int/lit8 v11, v4, 0x1

    .line 108
    .line 109
    .line 110
    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 111
    .line 112
    if-eqz v1, :cond_8

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 116
    move-result-object v9

    .line 117
    .line 118
    .line 119
    invoke-interface {v9}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 120
    move-result-object v9

    .line 121
    .line 122
    .line 123
    const v10, 0x7f0a0a5f

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object v10

    .line 128
    .line 129
    check-cast v10, Landroid/widget/TextView;

    .line 130
    .line 131
    if-eqz v7, :cond_6

    .line 132
    .line 133
    .line 134
    const v11, 0x7f120e1b

    .line 135
    goto :goto_5

    .line 136
    .line 137
    .line 138
    :cond_6
    const v11, 0x7f120e1a

    .line 139
    .line 140
    .line 141
    :goto_5
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 142
    .line 143
    .line 144
    const v10, 0x7f0a0a5e

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object v9

    .line 149
    .line 150
    if-eqz v7, :cond_7

    .line 151
    .line 152
    .line 153
    const v7, 0x7f08083b

    .line 154
    goto :goto_6

    .line 155
    .line 156
    .line 157
    :cond_7
    const v7, 0x7f08083c

    .line 158
    .line 159
    .line 160
    :goto_6
    invoke-virtual {v9, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 161
    .line 162
    .line 163
    :cond_8
    const v7, 0x7f121248

    .line 164
    .line 165
    .line 166
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 167
    move-result-object v7

    .line 168
    .line 169
    .line 170
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->canChat()Z

    .line 171
    move-result v9

    .line 172
    .line 173
    if-eqz v9, :cond_9

    .line 174
    .line 175
    iget-object v9, p0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 179
    move-result v9

    .line 180
    .line 181
    if-eqz v9, :cond_9

    .line 182
    .line 183
    if-eqz v4, :cond_9

    .line 184
    .line 185
    if-nez v1, :cond_9

    .line 186
    move v9, v2

    .line 187
    goto :goto_7

    .line 188
    :cond_9
    move v9, v3

    .line 189
    .line 190
    .line 191
    :goto_7
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 192
    .line 193
    .line 194
    const v7, 0x7f1210ad

    .line 195
    .line 196
    .line 197
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 198
    move-result-object v7

    .line 199
    .line 200
    if-eqz v4, :cond_a

    .line 201
    .line 202
    if-nez v1, :cond_a

    .line 203
    move v9, v2

    .line 204
    goto :goto_8

    .line 205
    :cond_a
    move v9, v3

    .line 206
    .line 207
    .line 208
    :goto_8
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 209
    .line 210
    .line 211
    const v7, 0x7f120781

    .line 212
    .line 213
    .line 214
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 215
    move-result-object v7

    .line 216
    .line 217
    if-eqz v4, :cond_b

    .line 218
    .line 219
    if-nez v1, :cond_b

    .line 220
    move v9, v2

    .line 221
    goto :goto_9

    .line 222
    :cond_b
    move v9, v3

    .line 223
    .line 224
    .line 225
    :goto_9
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    .line 227
    .line 228
    const v7, 0x7f12122c

    .line 229
    .line 230
    .line 231
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 232
    move-result-object v7

    .line 233
    .line 234
    if-eqz v4, :cond_c

    .line 235
    .line 236
    if-nez v1, :cond_c

    .line 237
    .line 238
    if-eqz v6, :cond_c

    .line 239
    .line 240
    iget-object v9, p0, Lcom/narvii/user/profile/UserProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 244
    move-result-object v10

    .line 245
    .line 246
    .line 247
    invoke-interface {v9, v10}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    .line 248
    move-result v9

    .line 249
    .line 250
    if-nez v9, :cond_c

    .line 251
    move v9, v2

    .line 252
    goto :goto_a

    .line 253
    :cond_c
    move v9, v3

    .line 254
    .line 255
    .line 256
    :goto_a
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 257
    .line 258
    .line 259
    const v7, 0x7f12124f

    .line 260
    .line 261
    .line 262
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 263
    move-result-object v7

    .line 264
    .line 265
    if-eqz v4, :cond_d

    .line 266
    .line 267
    if-nez v1, :cond_d

    .line 268
    .line 269
    if-eqz v6, :cond_d

    .line 270
    .line 271
    iget-object v6, p0, Lcom/narvii/user/profile/UserProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 275
    move-result-object v9

    .line 276
    .line 277
    .line 278
    invoke-interface {v6, v9}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    .line 279
    move-result v6

    .line 280
    .line 281
    if-eqz v6, :cond_d

    .line 282
    move v6, v2

    .line 283
    goto :goto_b

    .line 284
    :cond_d
    move v6, v3

    .line 285
    .line 286
    .line 287
    :goto_b
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 288
    .line 289
    .line 290
    const v6, 0x7f121228

    .line 291
    .line 292
    .line 293
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 294
    move-result-object v6

    .line 295
    .line 296
    if-eqz v4, :cond_e

    .line 297
    .line 298
    if-eqz v1, :cond_e

    .line 299
    .line 300
    if-nez v5, :cond_e

    .line 301
    move v5, v2

    .line 302
    goto :goto_c

    .line 303
    :cond_e
    move v5, v3

    .line 304
    .line 305
    .line 306
    :goto_c
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 307
    .line 308
    .line 309
    const v5, 0x7f1210bb

    .line 310
    .line 311
    .line 312
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 313
    move-result-object v5

    .line 314
    .line 315
    .line 316
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 317
    .line 318
    .line 319
    const v5, 0x7f12122b

    .line 320
    .line 321
    .line 322
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 323
    move-result-object v5

    .line 324
    .line 325
    if-eqz v4, :cond_f

    .line 326
    .line 327
    if-nez v1, :cond_f

    .line 328
    move v6, v2

    .line 329
    goto :goto_d

    .line 330
    :cond_f
    move v6, v3

    .line 331
    .line 332
    .line 333
    :goto_d
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 334
    .line 335
    .line 336
    const v5, 0x7f121233

    .line 337
    .line 338
    .line 339
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 340
    move-result-object v5

    .line 341
    .line 342
    if-eqz v4, :cond_10

    .line 343
    .line 344
    if-eqz v1, :cond_10

    .line 345
    move v1, v2

    .line 346
    goto :goto_e

    .line 347
    :cond_10
    move v1, v3

    .line 348
    .line 349
    .line 350
    :goto_e
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 354
    move-result-object v0

    .line 355
    .line 356
    if-eqz v0, :cond_12

    .line 357
    .line 358
    iget v1, v0, Lcom/narvii/model/User;->role:I

    .line 359
    .line 360
    const/16 v5, 0x65

    .line 361
    .line 362
    if-ne v1, v5, :cond_12

    .line 363
    .line 364
    if-eqz v8, :cond_12

    .line 365
    .line 366
    iget v1, v8, Lcom/narvii/model/User;->role:I

    .line 367
    .line 368
    const/16 v5, 0x64

    .line 369
    .line 370
    if-eq v1, v5, :cond_11

    .line 371
    .line 372
    const/16 v5, 0x66

    .line 373
    .line 374
    if-ne v1, v5, :cond_12

    .line 375
    :cond_11
    move v1, v2

    .line 376
    goto :goto_f

    .line 377
    :cond_12
    move v1, v3

    .line 378
    .line 379
    .line 380
    :goto_f
    const v5, 0x7f12009d

    .line 381
    .line 382
    .line 383
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 384
    move-result-object p1

    .line 385
    .line 386
    if-eqz v4, :cond_13

    .line 387
    .line 388
    if-eqz v0, :cond_13

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 392
    move-result v0

    .line 393
    .line 394
    if-eqz v0, :cond_13

    .line 395
    .line 396
    if-nez v1, :cond_13

    .line 397
    goto :goto_10

    .line 398
    :cond_13
    move v2, v3

    .line 399
    .line 400
    .line 401
    :goto_10
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 402
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->postAdapter:Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isAttached()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->isAttached()Z

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkAdapter:Lcom/narvii/bookmark/BookmarkAdapter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->isAttached()Z

    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$10;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$10;-><init>(Lcom/narvii/user/profile/UserProfileFragment;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->sendStreakStatusRequest()V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->favoriteAdapter:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    .line 33
    const/4 v2, 0x1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->postAdapter:Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkAdapter:Lcom/narvii/bookmark/BookmarkAdapter;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->fanClubAdapter:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    .line 64
    const/4 v1, 0x0

    .line 65
    const/4 v2, 0x0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 69
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToCommunity()V

    .line 9
    .line 10
    const-string v0, "community_profile"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    const-string v1, "com.instagram.android"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/util/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->instagramInstalled:Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 34
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "consecutiveCheckInDays"

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    const-string v0, "brokenStreaks"

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->brokenStreaks:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    return-void
.end method

.method public onSteakRepairSuccessed()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    iput v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    .line 20
    .line 21
    iget v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->brokenStreaks:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    iput v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->brokenStreaks:I

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateStreakInfo()V

    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0a17

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->notActivated:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0a0086

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    new-instance v2, Landroid/text/style/UnderlineSpan;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->notActivated:Landroid/view/View;

    .line 50
    .line 51
    new-instance v1, Lcom/narvii/user/profile/d;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/narvii/user/profile/d;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a0ab1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/list/overlay/OverlayLayout;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 69
    .line 70
    .line 71
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    .line 73
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    .line 86
    .line 87
    .line 88
    const p2, 0x7f0a0e12

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    check-cast p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 100
    .line 101
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTarget(Lcom/narvii/widget/NVListView;)V

    .line 116
    .line 117
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 121
    .line 122
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 126
    move-result p2

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 130
    move-result v0

    .line 131
    add-int/2addr p2, v0

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 138
    move-result p1

    .line 139
    .line 140
    if-eqz p1, :cond_0

    .line 141
    .line 142
    new-instance p1, Landroid/view/View;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 146
    move-result-object p2

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    const/high16 v1, 0x42600000    # 56.0f

    .line 158
    .line 159
    .line 160
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 161
    move-result v0

    .line 162
    float-to-int v0, v0

    .line 163
    const/4 v1, -0x1

    .line 164
    .line 165
    .line 166
    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    new-instance p2, Lcom/narvii/user/profile/e;

    .line 172
    .line 173
    .line 174
    invoke-direct {p2, p0}, Lcom/narvii/user/profile/e;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    new-instance p2, Landroid/widget/FrameLayout;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    .line 186
    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setActionBarTitleView(Landroid/view/View;)V

    .line 193
    :cond_0
    return-void
.end method

.method public openUserProfilePostActivity(Ljava/lang/String;ZZ)V
    .locals 10

    .line 1
    .line 2
    new-instance v3, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {v3, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    const-string v0, "api"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    move-object v7, v0

    .line 20
    .line 21
    check-cast v7, Lcom/narvii/util/http/ApiService;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->createRequest()Lcom/narvii/util/http/ApiRequest;

    .line 27
    move-result-object v8

    .line 28
    .line 29
    new-instance v9, Lcom/narvii/user/profile/UserProfileFragment$17;

    .line 30
    .line 31
    const-class v2, Lcom/narvii/model/api/UserResponse;

    .line 32
    move-object v0, v9

    .line 33
    move-object v1, p0

    .line 34
    move v4, p2

    .line 35
    move v5, p3

    .line 36
    move-object v6, p1

    .line 37
    .line 38
    .line 39
    invoke-direct/range {v0 .. v6}, Lcom/narvii/user/profile/UserProfileFragment$17;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;ZZLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v8, v9}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 43
    return-void
.end method

.method popupCustomMenu()V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    .line 15
    :try_start_0
    iget-object v5, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 16
    .line 17
    .line 18
    const v6, 0x7f0a0f57

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    check-cast v5, Lcom/narvii/user/profile/HeaderLayout;

    .line 25
    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    iget v6, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    .line 29
    .line 30
    if-le v6, v1, :cond_0

    .line 31
    move v6, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v6, v3

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v5, v6}, Lcom/narvii/user/profile/HeaderLayout;->screenshotForSharing(Z)Landroid/graphics/Bitmap;

    .line 37
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v5

    .line 40
    .line 41
    const-string v6, "OutOfMemory when create profile image"

    .line 42
    .line 43
    .line 44
    invoke-static {v6, v5}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 47
    .line 48
    .line 49
    const v5, 0x7f0d077e

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->setCustomView(I)Landroid/view/View;

    .line 53
    move-result-object v5

    .line 54
    .line 55
    .line 56
    const v6, 0x7f0a06eb

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object v6

    .line 61
    .line 62
    check-cast v6, Landroid/widget/ImageView;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    .line 67
    new-instance v6, Lcom/narvii/user/profile/UserProfileFragment$6;

    .line 68
    .line 69
    .line 70
    invoke-direct {v6, p0, v4, v0}, Lcom/narvii/user/profile/UserProfileFragment$6;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Landroid/graphics/Bitmap;Lcom/narvii/util/dialog/ActionSheetDialog;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :cond_2
    const/4 v4, 0x6

    .line 75
    .line 76
    new-array v4, v4, [I

    .line 77
    .line 78
    const-string v5, "account"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    check-cast v5, Lcom/narvii/account/AccountService;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/narvii/account/AccountService;->hasActivation()Z

    .line 88
    move-result v6

    .line 89
    .line 90
    if-nez v6, :cond_3

    .line 91
    .line 92
    .line 93
    const v6, 0x7f121228

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v6, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 97
    .line 98
    aput v6, v4, v3

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    move v2, v3

    .line 101
    .line 102
    .line 103
    :goto_2
    const v6, 0x7f1210bb

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v6, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 107
    .line 108
    add-int/lit8 v7, v2, 0x1

    .line 109
    .line 110
    aput v6, v4, v2

    .line 111
    .line 112
    .line 113
    const v6, 0x7f121233

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v6, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 117
    add-int/2addr v2, v1

    .line 118
    .line 119
    aput v6, v4, v7

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    if-eqz v1, :cond_4

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    .line 129
    move-result v1

    .line 130
    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    .line 134
    const v1, 0x7f12009d

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 138
    .line 139
    aput v1, v4, v2

    .line 140
    .line 141
    :cond_4
    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$7;

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, p0, v4}, Lcom/narvii/user/profile/UserProfileFragment$7;-><init>(Lcom/narvii/user/profile/UserProfileFragment;[I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 151
    return-void
.end method

.method popupOnlineStatusMenu()V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0d05b7

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setCustomView(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isOnline()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->getMood()Lcom/narvii/model/Sticker;

    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    .line 29
    .line 30
    :goto_0
    const v3, 0x7f0a098a

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    .line 37
    const v5, 0x7f0a098c

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    check-cast v4, Landroid/widget/TextView;

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    .line 52
    const v2, 0x7f120cb9

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_1
    const v2, 0x7f120cb8

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    new-instance v3, Lcom/narvii/user/profile/UserProfileFragment$8;

    .line 66
    .line 67
    .line 68
    invoke-direct {v3, p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$8;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/util/dialog/ActionSheetDialog;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    const v2, 0x7f0a0a5d

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    .line 81
    const v4, 0x7f0a0e51

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    check-cast v3, Landroid/widget/TextView;

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    .line 92
    const v4, 0x7f120e1b

    .line 93
    goto :goto_2

    .line 94
    .line 95
    .line 96
    :cond_2
    const v4, 0x7f120e17

    .line 97
    .line 98
    .line 99
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 100
    const/4 v3, 0x4

    .line 101
    .line 102
    .line 103
    const v4, 0x7f0a0a3f

    .line 104
    const/4 v5, 0x0

    .line 105
    .line 106
    .line 107
    const v6, 0x7f0a0a56

    .line 108
    .line 109
    .line 110
    const v7, 0x7f0a0a5b

    .line 111
    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v7}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    goto :goto_3

    .line 136
    .line 137
    .line 138
    :cond_3
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v7}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v7}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 161
    move-result-object v1

    .line 162
    .line 163
    const/16 v3, 0x8

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    const v1, 0x7f0a0a5c

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 173
    move-result-object v1

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    :goto_3
    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$9;

    .line 179
    .line 180
    .line 181
    invoke-direct {v1, p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$9;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/util/dialog/ActionSheetDialog;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 185
    move-result-object v2

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v7}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    .line 192
    move-result-object v2

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 199
    return-void
.end method

.method protected setListContentBgWhenHasPageBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldBlockClick(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/user/profile/UserProfileFragment;->BIO_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method protected shouldHideUserPrivateInfo()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/User;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    return v1

    .line 16
    .line 17
    :cond_1
    iget v2, v0, Lcom/narvii/model/User;->role:I

    .line 18
    .line 19
    const/16 v3, 0xfd

    .line 20
    .line 21
    if-eq v2, v3, :cond_2

    .line 22
    .line 23
    iget v0, v0, Lcom/narvii/model/User;->status:I

    .line 24
    .line 25
    const/16 v2, 0xa

    .line 26
    .line 27
    if-ne v0, v2, :cond_3

    .line 28
    :cond_2
    const/4 v1, 0x1

    .line 29
    :cond_3
    return v1
.end method

.method protected shouldShowDisableBar(Lcom/narvii/model/NVObject;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/model/User;

    .line 8
    .line 9
    iget v0, p1, Lcom/narvii/model/User;->status:I

    .line 10
    .line 11
    const/16 v2, 0x9

    .line 12
    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    const/16 v2, 0xa

    .line 16
    .line 17
    if-eq v0, v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/model/User;->hideUserProfile()Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    :cond_0
    const/4 v1, 0x1

    .line 25
    :cond_1
    return v1
.end method

.method public startChat()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->canChat()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    const v1, 0x7f121230

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 36
    .line 37
    .line 38
    const v1, 0x104000a

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 46
    return-void

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    const-string v1, "chatInvite"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const-string v1, "id"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 73
    .line 74
    const-string v1, "chat"

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method tagFavorites()V
    .locals 3

    const-class v0, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 1
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maximum"

    const/16 v2, 0x32

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 3
    invoke-static {p0, v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method tagFavorites(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;)V"
        }
    .end annotation

    const-string v0, "account"

    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v2, Lcom/narvii/user/profile/UserProfileFragment$21;

    invoke-direct {v2, p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$21;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 8
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 9
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/item/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Item;

    iget-object v5, v5, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/tag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v3, "destinationUid"

    .line 10
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "categoryIdList"

    .line 11
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Item;

    .line 14
    iget-object v3, v3, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    :cond_0
    const-string p1, "itemIdList"

    .line 15
    invoke-virtual {v2, p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string p1, "api"

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 17
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iget-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 18
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method

.method updateHeader()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 1
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    const/16 v2, 0x8

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->showDisabled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->showNotActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070532

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v0, Lcom/narvii/user/profile/UserProfileFragment;->headerLayoutHeight:I

    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v8, 0x7f0d0779

    .line 6
    invoke-virtual {v7, v8, v5}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeaderPlaceHolder()V

    iget-object v5, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v7, 0x7f0a0f57

    .line 8
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/user/profile/HeaderLayout;

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    .line 9
    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v5, v3}, Lcom/narvii/user/profile/HeaderLayout;->setOffset(I)V

    iget v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->headerLayoutHeight:I

    .line 10
    invoke-virtual {v5, v3}, Lcom/narvii/user/profile/HeaderLayout;->setH0(I)V

    .line 11
    iget-object v3, v5, Lcom/narvii/user/profile/HeaderLayout;->gradient:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/2addr v6, v7

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    iget-object v6, v5, Lcom/narvii/user/profile/HeaderLayout;->gradient:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget v3, v1, Lcom/narvii/model/User;->role:I

    const/16 v6, 0xfd

    if-ne v3, v6, :cond_3

    move v3, v8

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Lcom/narvii/user/profile/HeaderLayout;->setNewsFeed(Z)V

    :cond_4
    const-string v3, "account"

    .line 15
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/AccountService;

    .line 16
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/narvii/model/User;->isProfileAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v5

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v6

    .line 18
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/narvii/user/profile/UserProfileFragment;->headerClickListener:Landroid/view/View$OnClickListener;

    goto :goto_3

    :cond_5
    move-object v9, v10

    .line 19
    :goto_3
    iget v11, v1, Lcom/narvii/model/User;->reputation:I

    invoke-static {v11}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v13, 0x7f0a0f4f

    .line 20
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget v11, v1, Lcom/narvii/model/User;->joinedCount:I

    invoke-static {v11}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v13, 0x7f0a0f4e

    .line 22
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget v11, v1, Lcom/narvii/model/User;->membersCount:I

    invoke-static {v11}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v13, 0x7f0a0f4d

    .line 24
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_6

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v12, 0x41700000    # 15.0f

    invoke-static {v11, v12}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v11

    goto :goto_4

    :cond_6
    move v11, v4

    :goto_4
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v13, 0x7f0a0057

    .line 26
    invoke-direct {v0, v11, v13, v12}, Lcom/narvii/user/profile/UserProfileFragment;->updateBottomMargin(IILandroid/view/ViewGroup;)V

    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v14, 0x7f0a1019

    .line 27
    invoke-direct {v0, v11, v14, v12}, Lcom/narvii/user/profile/UserProfileFragment;->updateBottomMargin(IILandroid/view/ViewGroup;)V

    iget-object v11, v0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-eqz v11, :cond_7

    .line 28
    invoke-virtual {v11}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    move v11, v8

    goto :goto_5

    :cond_7
    move v11, v4

    :goto_5
    const v12, 0x7f0a0f5a

    if-eqz v6, :cond_8

    iget-object v15, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 29
    invoke-virtual {v15, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_8
    iget-object v15, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 30
    invoke-virtual {v15, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v11, :cond_9

    move-object v15, v9

    goto :goto_6

    :cond_9
    move-object v15, v10

    :goto_6
    invoke-virtual {v12, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v15, 0x7f0a010b

    .line 31
    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v7, 0x7f0a0f44

    .line 32
    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v12, 0x7f0a0f43

    .line 33
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 34
    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 35
    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v12

    if-eqz v12, :cond_a

    const v12, 0x7f08006b

    goto :goto_8

    :cond_a
    const v12, 0x7f08006c

    :goto_8
    invoke-virtual {v7, v12}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 36
    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/WalletBalanceView;

    const-string v12, "Profile"

    .line 37
    iput-object v12, v7, Lcom/narvii/widget/WalletBalanceView;->source:Ljava/lang/String;

    const v12, 0x7f080a32

    const v13, 0x7f080a33

    .line 38
    invoke-virtual {v7, v12, v13}, Lcom/narvii/widget/WalletBalanceView;->setCoinBackground(II)V

    if-eqz v6, :cond_b

    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-eqz v12, :cond_b

    .line 39
    invoke-virtual {v12}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v12

    if-eqz v12, :cond_b

    move v12, v4

    goto :goto_9

    :cond_b
    move v12, v2

    :goto_9
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-virtual {v7}, Lcom/narvii/widget/WalletBalanceView;->refresh()V

    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v12, 0x7f0a04b7

    .line 41
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v6, :cond_c

    move v13, v4

    goto :goto_a

    :cond_c
    move v13, v2

    :goto_a
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 42
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0a0963

    if-eqz v6, :cond_d

    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 43
    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c

    :cond_d
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 44
    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v11, :cond_e

    move-object v13, v9

    goto :goto_b

    :cond_e
    move-object v13, v10

    :goto_b
    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_c
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 45
    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/RankingTitleView;

    if-eqz v11, :cond_10

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->shouldHideUserPrivateInfo()Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_d

    .line 47
    :cond_f
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-virtual {v7, v8}, Lcom/narvii/widget/RankingTitleView;->setShowBadge(Z)V

    goto :goto_e

    .line 49
    :cond_10
    :goto_d
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :goto_e
    invoke-virtual {v7, v1, v0}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v11, 0x7f0a0d25

    .line 51
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/SlideshowView;

    .line 52
    iget-object v11, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v12, "coverAnimation"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "none"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 53
    iput-boolean v11, v7, Lcom/narvii/widget/SlideshowView;->noSlide:Z

    if-eqz v5, :cond_11

    iget-object v11, v0, Lcom/narvii/user/profile/UserProfileFragment;->slideShowMedias:Ljava/util/ArrayList;

    goto :goto_f

    .line 54
    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    :goto_f
    invoke-virtual {v7, v11}, Lcom/narvii/widget/SlideshowView;->setMediaList(Ljava/util/List;)V

    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v11, 0x7f0a0221

    .line 55
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/BubbleBackground;

    if-eqz v5, :cond_13

    .line 56
    iget-object v11, v1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    if-eqz v11, :cond_13

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_12

    goto :goto_10

    :cond_12
    const/4 v11, 0x4

    goto :goto_11

    :cond_13
    :goto_10
    move v11, v4

    :goto_11
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_14

    move-object v11, v10

    goto :goto_12

    .line 57
    :cond_14
    iget-object v11, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_12
    invoke-virtual {v7, v11}, Lcom/narvii/widget/BubbleBackground;->set(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v11, 0x7f0a0f36

    .line 58
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 59
    move-object v11, v7

    check-cast v11, Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v11, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 60
    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    check-cast v7, Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v7}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    move-result-object v7

    if-eqz v5, :cond_15

    invoke-virtual {v1, v8}, Lcom/narvii/model/User;->icon(Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    :cond_15
    const-string v5, "res://disabled_user_icon"

    :goto_13
    invoke-virtual {v7, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    iget-object v5, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v7, 0x7f0a0989

    .line 62
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/MoodView;

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->getMood()Lcom/narvii/model/Sticker;

    move-result-object v7

    .line 64
    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v6, :cond_16

    .line 65
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->hasActivation()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_14

    :cond_16
    invoke-static {v7}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v3

    if-nez v3, :cond_17

    :goto_14
    move v3, v4

    goto :goto_15

    :cond_17
    const/4 v3, 0x4

    :goto_15
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    invoke-static {v7}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v3

    xor-int/2addr v3, v8

    invoke-virtual {v5, v3}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 67
    invoke-virtual {v5, v1, v7}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;)V

    .line 68
    iget-object v3, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v5, "isMemberOfTeamAmino"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v3

    iget-object v5, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 69
    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v3, :cond_18

    move v3, v4

    goto :goto_16

    :cond_18
    const/4 v3, 0x4

    .line 70
    :goto_16
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 71
    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f0a09f9

    .line 72
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/NicknameView;

    .line 73
    invoke-virtual {v3, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 74
    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->dateFmt:Ljava/text/DateFormat;

    if-nez v3, :cond_19

    .line 75
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "MMMM yyyy"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->dateFmt:Ljava/text/DateFormat;

    :cond_19
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f0a02a4

    .line 76
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v7

    if-eqz v7, :cond_1a

    if-nez v6, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->userDisabled()Z

    move-result v7

    if-nez v7, :cond_1a

    move v7, v4

    goto :goto_17

    :cond_1a
    move v7, v2

    :goto_17
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v7, 0x7f0a0f56

    .line 77
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->isOnline()Z

    move-result v7

    if-eqz v7, :cond_1b

    move v7, v4

    goto :goto_18

    :cond_1b
    const/4 v7, 0x4

    :goto_18
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 78
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f0a023a

    .line 79
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->shouldHideUserPrivateInfo()Z

    move-result v5

    if-eqz v5, :cond_1c

    move v5, v2

    goto :goto_19

    :cond_1c
    move v5, v4

    :goto_19
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f0a0c76

    .line 80
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->shouldHideUserPrivateInfo()Z

    move-result v5

    if-eqz v5, :cond_1d

    move v5, v2

    goto :goto_1a

    :cond_1d
    move v5, v4

    :goto_1a
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f0a0f61

    .line 81
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/user/title/UserTitleFlowView;

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->shouldHideUserPrivateInfo()Z

    move-result v5

    if-eqz v5, :cond_1e

    move v5, v2

    goto :goto_1b

    :cond_1e
    move v5, v4

    :goto_1b
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {v3, v1}, Lcom/narvii/user/title/UserTitleFlowView;->setUser(Lcom/narvii/model/User;)V

    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f0a0f3e

    .line 84
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v6, :cond_2e

    .line 85
    invoke-virtual {v1}, Lcom/narvii/model/User;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto/16 :goto_26

    .line 86
    :cond_1f
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget v5, v1, Lcom/narvii/model/User;->membershipStatus:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_20

    move v6, v8

    goto :goto_1c

    :cond_20
    move v6, v4

    :goto_1c
    if-ne v5, v8, :cond_21

    goto :goto_1d

    :cond_21
    move v8, v4

    :goto_1d
    const v5, 0x7f0a0f3f

    .line 88
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f0a0f42

    .line 89
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v11, 0x7f0a0f41

    .line 90
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v8, :cond_22

    const v12, 0x7f08019a

    goto :goto_1e

    :cond_22
    if-eqz v6, :cond_23

    const v12, 0x7f08017f

    goto :goto_1e

    :cond_23
    const v12, 0x7f080179

    .line 91
    :goto_1e
    invoke-virtual {v3, v12}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v6, :cond_24

    const v12, 0x7f08047e

    goto :goto_1f

    :cond_24
    if-eqz v8, :cond_25

    const v12, 0x7f08066d

    goto :goto_1f

    :cond_25
    const v12, 0x7f080480

    .line 92
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->sendingFollow:Z

    if-eqz v12, :cond_26

    const/4 v12, 0x4

    goto :goto_20

    :cond_26
    move v12, v4

    .line 93
    :goto_20
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v6, :cond_27

    const v5, 0x7f121238

    goto :goto_21

    :cond_27
    if-eqz v8, :cond_28

    move v5, v4

    goto :goto_21

    :cond_28
    const v5, 0x7f121234

    :goto_21
    if-eqz v5, :cond_29

    .line 94
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_22

    .line 95
    :cond_29
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_22
    if-eqz v8, :cond_2a

    .line 96
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24

    :cond_2a
    iget-boolean v5, v0, Lcom/narvii/user/profile/UserProfileFragment;->sendingFollow:Z

    if-eqz v5, :cond_2b

    const/4 v5, 0x4

    goto :goto_23

    :cond_2b
    move v5, v4

    .line 97
    :goto_23
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_24
    if-eqz v8, :cond_2c

    .line 98
    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_25

    .line 99
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070530

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 100
    :goto_25
    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->sendingFollow:Z

    if-eqz v3, :cond_2d

    move v2, v4

    .line 101
    :cond_2d
    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_27

    .line 102
    :cond_2e
    :goto_26
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :goto_27
    invoke-direct/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateStreakInfo()V

    iget-object v2, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 104
    invoke-direct {v0, v1, v2}, Lcom/narvii/user/profile/UserProfileFragment;->updateBadge(Lcom/narvii/model/User;Landroid/view/View;)V

    return-void
.end method
