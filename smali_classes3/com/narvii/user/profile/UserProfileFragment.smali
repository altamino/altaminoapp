.class public Lcom/narvii/user/profile/UserProfileFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "UserProfileFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentAddAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$BioDividerAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$MySwitchAdapter;,
        Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;
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

.field localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

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

.field private recentVisitorCount:I

.field private recentVisitorHelper:Lcom/narvii/account/visitor/RecentVisitorHelper;

.field private recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

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

    .line 278
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "user.bio.snippet"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/user/profile/UserProfileFragment;->BIO_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 279
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "user.switch"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/user/profile/UserProfileFragment;->SWITCH:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->isAccessible:Z

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->recentVisitorCount:I

    .line 241
    new-instance v0, Lcom/narvii/user/profile/-$$Lambda$UserProfileFragment$Mxpy5efN4mmCpWnPl60EfhIb-qo;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/-$$Lambda$UserProfileFragment$Mxpy5efN4mmCpWnPl60EfhIb-qo;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

    .line 441
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$2;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 817
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$7;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$7;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 1083
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$13;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$13;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->headerClickListener:Landroid/view/View$OnClickListener;

    .line 1181
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$14;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$14;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->itemListener:Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;

    .line 1589
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$16;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$16;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateAccessible()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->onCommunityUpdate()V

    return-void
.end method

.method static synthetic access$1002(Lcom/narvii/user/profile/UserProfileFragment;I)I
    .locals 0

    .line 208
    iput p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->brokenStreaks:I

    return p1
.end method

.method static synthetic access$1100(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateStreakInfo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/narvii/user/profile/UserProfileFragment;)Z
    .locals 0

    .line 208
    iget-boolean p0, p0, Lcom/narvii/user/profile/UserProfileFragment;->isAccessible:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;II)V
    .locals 0

    .line 208
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/detail/DetailFragment;->setTextColor(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;II)V
    .locals 0

    .line 208
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/detail/DetailFragment;->setTextColor(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/narvii/user/profile/UserProfileFragment;)Lcom/narvii/account/visitor/RecentVisitorHelper;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/narvii/user/profile/UserProfileFragment;->recentVisitorHelper:Lcom/narvii/account/visitor/RecentVisitorHelper;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/narvii/user/profile/UserProfileFragment;Z)Z
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/narvii/user/profile/UserProfileFragment;Z)Z
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_isBackgroundDark:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/narvii/user/profile/UserProfileFragment;I)I
    .locals 0

    .line 208
    iput p1, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    return p1
.end method

.method static synthetic access$1900(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListViewContentBackground()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/user/profile/UserProfileFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/narvii/user/profile/UserProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateBackground()V

    return-void
.end method

.method static synthetic access$2100(Lcom/narvii/user/profile/UserProfileFragment;)Z
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->showNotActivated()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/narvii/user/profile/UserProfileFragment;)Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/narvii/user/profile/UserProfileFragment;->itemListener:Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/narvii/user/profile/UserProfileFragment;)Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;II)V
    .locals 0

    .line 208
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/detail/DetailFragment;->setTextColor(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;III)V
    .locals 0

    .line 208
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/detail/DetailFragment;->setTextColor(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/user/profile/UserProfileFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->shareUserProfile(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/String;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->goAchievements(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->showAminoStaffDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->gotoFavorites()V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/user/profile/UserProfileFragment;)Landroid/view/View;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/narvii/user/profile/UserProfileFragment;->headerPlaceHolder:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$702(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->headerPlaceHolder:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeaderPlaceHolder()V

    return-void
.end method

.method static synthetic access$902(Lcom/narvii/user/profile/UserProfileFragment;I)I
    .locals 0

    .line 208
    iput p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    return p1
.end method

.method private canChat()Z
    .locals 6

    .line 3010
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "account"

    .line 3013
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 3014
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3015
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3016
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3019
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_5

    const-string v2, "privilegeOfChatInviteRequest"

    .line 3021
    invoke-virtual {v0, v2}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    return v1

    :cond_2
    return v3

    .line 3025
    :cond_3
    iget v0, v0, Lcom/narvii/model/User;->membershipStatus:I

    if-eq v0, v5, :cond_5

    if-ne v0, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

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

    .line 1566
    const-class v0, Lcom/narvii/achievements/AchievementsFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    .line 1567
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1568
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    if-eqz v1, :cond_0

    .line 1570
    iget-object v2, v1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mediaList"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1571
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "Source"

    .line 1573
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1574
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private gotoFavorites()V
    .locals 5

    .line 1578
    const-class v0, Lcom/narvii/catalog/CatalogFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    .line 1579
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1580
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    if-eqz v1, :cond_0

    const v2, 0x7f0f1149

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1582
    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v1

    const-string v2, "fromMyCatalog"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "Source"

    const-string v2, "User Profile"

    .line 1585
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1586
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "config"

    .line 253
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/config/ConfigService;

    .line 254
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 255
    :goto_0
    iget-boolean v1, p1, Lcom/narvii/model/User;->isGlobal:Z

    const-string v2, "user"

    const-string v3, "id"

    if-nez v1, :cond_6

    iget v1, p1, Lcom/narvii/model/User;->ndcId:I

    if-eqz v1, :cond_6

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    if-eqz p0, :cond_2

    goto :goto_2

    .line 260
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSystem()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Lcom/narvii/model/User;->isModerator()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    .line 266
    :cond_3
    const-class p0, Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    .line 267
    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefetch"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "__interactionScope"

    .line 269
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    iget p1, p1, Lcom/narvii/model/User;->ndcId:I

    if-lez p1, :cond_4

    const-string v0, "__communityId"

    .line 272
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    return-object p0

    .line 261
    :cond_5
    :goto_1
    const-class p0, Lcom/narvii/user/profile/AccountUserProfileFragment;

    invoke-static {p0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    .line 262
    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    .line 256
    :cond_6
    :goto_2
    const-class p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {p0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    .line 257
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private onCommunityUpdate()V
    .locals 1

    .line 477
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 481
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    .line 482
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->addBlogAdapter:Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;

    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private resetDarkTheme(Lcom/narvii/list/NVAdapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2577
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    :cond_0
    return-void
.end method

.method private sendStreakStatusRequest()V
    .locals 5

    const-string v0, "api"

    .line 1505
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 1506
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v1

    .line 1507
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/check-in/stats/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "timezone"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 1508
    new-instance v2, Lcom/narvii/user/profile/UserProfileFragment$15;

    const-class v3, Lcom/narvii/achievements/StreakStatusResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/user/profile/UserProfileFragment$15;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private shareImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    .line 3122
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "profile"

    const-string v2, "png"

    invoke-static {v0, v1, v2}, Lcom/narvii/util/image/Screenshot;->getNewScreenshotFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3123
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3124
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3125
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 3126
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 3134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 3135
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3136
    new-instance p1, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 3137
    invoke-virtual {p1, p2}, Lcom/narvii/util/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3138
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3141
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    .line 3128
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 3129
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_1

    const p1, 0x7f0f0d14

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0c4a

    :goto_0
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method private shareUserProfile(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_1

    .line 2025
    :try_start_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v1, 0x7f090c35

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/user/profile/HeaderLayout;

    if-eqz v0, :cond_1

    .line 2027
    iget v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/user/profile/HeaderLayout;->screenshotForSharing(Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OutOfMemory when create profile image"

    .line 2030
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 2034
    new-instance v0, Lcom/narvii/share/ShareDarkRoomHelper;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 2035
    const-class v0, Lcom/narvii/user/profile/UserProfileShareFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2037
    sget-object v1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    const-string v2, "User Profile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2038
    sget-object v1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2039
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileShareFragment;->saveDynamicProfileImg(Landroid/graphics/Bitmap;)V

    .line 2040
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private showAminoStaffDialog()V
    .locals 3

    .line 1554
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f010e

    .line 1555
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 1556
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1557
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showDisabled()Z
    .locals 1

    .line 2003
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2007
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->shouldShowDisableBar(Lcom/narvii/model/NVObject;)Z

    move-result v0

    return v0
.end method

.method private showNotActivated()Z
    .locals 2

    const-string v0, "account"

    .line 1979
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1980
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasActivation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->showDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateAccessible()V
    .locals 2

    .line 1042
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1045
    :cond_0
    new-instance v1, Lcom/narvii/util/FilterHelper;

    invoke-direct {v1, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v1}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/FilterHelper;->isAccessible(Lcom/narvii/model/NVObject;)Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1047
    :goto_1
    iget-boolean v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->isAccessible:Z

    if-eq v0, v1, :cond_2

    .line 1048
    iput-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->isAccessible:Z

    .line 1049
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-eqz v0, :cond_2

    .line 1050
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private updateBackground()V
    .locals 18

    move-object/from16 v0, p0

    .line 1651
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    if-nez v1, :cond_0

    return-void

    .line 1656
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 1660
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/model/User;->getBackgroundColor()I

    move-result v2

    .line 1661
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0904dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    .line 1664
    invoke-static {v2}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_0

    .line 1667
    :cond_2
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1668
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1669
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0702ef

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    const v9, 0x3e99999a    # 0.3f

    mul-float v9, v9, v8

    mul-float v10, v9, v9

    mul-int v11, v7, v7

    .line 1671
    div-int/lit8 v11, v11, 0x4

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v11, v11, v9

    div-float/2addr v10, v11

    sub-float/2addr v8, v9

    add-float v14, v10, v8

    const/4 v8, 0x3

    new-array v15, v8, [I

    const v11, 0xffffff

    and-int/2addr v11, v2

    aput v11, v15, v4

    aput v11, v15, v5

    const/4 v11, 0x2

    aput v2, v15, v11

    new-array v8, v8, [F

    const/4 v12, 0x0

    aput v12, v8, v4

    div-float v12, v10, v14

    aput v12, v8, v5

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v8, v11

    .line 1675
    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v13

    new-instance v12, Landroid/graphics/RadialGradient;

    div-int/2addr v7, v11

    int-to-float v7, v7

    sub-float/2addr v10, v9

    neg-float v9, v10

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v11, v12

    move-object v10, v12

    move v12, v7

    move-object v7, v13

    move v13, v9

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1676
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x0

    .line 1665
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1680
    :cond_4
    :goto_1
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    if-eqz v3, :cond_6

    if-eqz v2, :cond_5

    .line 1681
    invoke-static {v2}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0807ef

    goto :goto_2

    :cond_5
    const v2, 0x7f0807ee

    .line 1682
    :goto_2
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v6, 0x7f090c38

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1683
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v6, 0x7f090c1f

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1684
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v6, 0x7f090c20

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1685
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v6, 0x7f090c42

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1688
    :cond_6
    iget-object v2, v0, Lcom/narvii/detail/DetailFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    new-array v3, v5, [Lcom/narvii/image/BackgroundSource;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    .line 1689
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 1691
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->tabAdapter:Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 1692
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->favoriteAdapter:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 1693
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->postAdapter:Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 1694
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentDividerAdapter:Lcom/narvii/list/DividerAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 1695
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->postDividerAdapter:Lcom/narvii/list/DividerAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 1696
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkDividerAdapter:Lcom/narvii/list/DividerAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 1697
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentHeaderAdapter:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 1698
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAddAdapter:Lcom/narvii/user/profile/adapter/CommentAddAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 1699
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 1700
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 1701
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->addBlogAdapter:Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 1702
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkAdapter:Lcom/narvii/bookmark/BookmarkAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 1703
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->fanClubAdapter:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    .line 1704
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioDividerAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioDividerAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->resetDarkTheme(Lcom/narvii/list/NVAdapter;)V

    return-void
.end method

.method private updateBadge(Lcom/narvii/model/User;Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1433
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const v0, 0x7f0900a3

    .line 1434
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/16 p1, 0x8

    .line 1436
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateBottomMargin(IILandroid/view/ViewGroup;)V
    .locals 0

    .line 1441
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 1442
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1443
    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1444
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateHeaderPlaceHolder()V
    .locals 2

    .line 1496
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->headerPlaceHolder:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1499
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1500
    iget v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->headerLayoutHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1501
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->headerPlaceHolder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateStreakInfo()V
    .locals 5

    .line 1525
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1528
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1530
    new-instance v1, Lcom/narvii/user/profile/-$$Lambda$UserProfileFragment$wrwM2Nromkz2LvJM5VWSHzMSunE;

    invoke-direct {v1, p0}, Lcom/narvii/user/profile/-$$Lambda$UserProfileFragment$wrwM2Nromkz2LvJM5VWSHzMSunE;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1533
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1535
    iget v2, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const v3, 0x7f0f0bfa

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const v2, 0x7f0f0060

    .line 1536
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1535
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1539
    :cond_3
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v2, 0x7f090af5

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/narvii/user/profile/UserProfileFragment;->brokenStreaks:I

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateUserVisitorsCount(I)V
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 1210
    iput p1, v0, Lcom/narvii/model/User;->visitorsCount:I

    :cond_0
    return-void
.end method

.method private userDisabled()Z
    .locals 3

    .line 2011
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2014
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-nez v0, :cond_1

    return v1

    .line 2018
    :cond_1
    iget v0, v0, Lcom/narvii/model/User;->status:I

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method


# virtual methods
.method public activateAccount()V
    .locals 3

    .line 2895
    const-class v0, Lcom/narvii/prefs/AccountSettingFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Source"

    const-string v2, "My User Profile"

    .line 2896
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x5

    .line 2897
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public addToFavoriteMembers()V
    .locals 5

    .line 3036
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-nez v0, :cond_0

    return-void

    .line 3039
    :cond_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3040
    new-instance v2, Lcom/narvii/user/profile/UserProfileFragment$22;

    invoke-direct {v2, p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$22;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/model/User;)V

    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 3049
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 3051
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/user-group/quick-access/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v2, "api"

    .line 3052
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 3053
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public blockUser(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2940
    invoke-virtual {p0, v0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->blockUser(ZZ)V

    return-void
.end method

.method public blockUser(ZZ)V
    .locals 3

    if-nez p2, :cond_1

    .line 2945
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const v0, 0x7f0f10fd

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0169

    .line 2946
    :goto_0
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0f02ee

    .line 2947
    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$20;

    invoke-direct {v1, p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$20;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Z)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 2954
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2956
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 2958
    :cond_1
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/userblock/BlockListResponse;

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2959
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$21;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$21;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 2975
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v0, "config"

    .line 2976
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    if-eqz p1, :cond_2

    .line 2977
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    goto :goto_1

    .line 2978
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 2979
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/block/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "id"

    .line 2980
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

    .line 2981
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 2982
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_2
    return-void
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2

    .line 721
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 722
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "self"

    goto :goto_0

    :cond_0
    const-string v0, "other"

    :goto_0
    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 0

    .line 428
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 429
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 430
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ObjectType;->user:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 566
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->topAdapter:Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

    .line 568
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->favoriteAdapter:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    .line 569
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->tabAdapter:Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;

    .line 570
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->postAdapter:Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

    .line 572
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 573
    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->addBlogAdapter:Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;

    .line 574
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->addBlogAdapter:Lcom/narvii/user/profile/UserProfileFragment$AddBlogAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->favoriteAdapter:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 578
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->postAdapter:Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 579
    new-instance v1, Lcom/narvii/list/DividerAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->postDividerAdapter:Lcom/narvii/list/DividerAdapter;

    .line 580
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->postDividerAdapter:Lcom/narvii/list/DividerAdapter;

    invoke-virtual {v1, v0}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 581
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->postDividerAdapter:Lcom/narvii/list/DividerAdapter;

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->tab1Adapter:Lcom/narvii/list/NVAdapter;

    .line 584
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 585
    new-instance v0, Lcom/narvii/list/DividerAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentDividerAdapter:Lcom/narvii/list/DividerAdapter;

    .line 586
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentDividerAdapter:Lcom/narvii/list/DividerAdapter;

    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 587
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;

    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v1

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentHeaderAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;Z)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentHeaderAdapter:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;

    .line 588
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentAddAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/user/profile/UserProfileFragment$ProfileCommentAddAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentAddAdapter:Lcom/narvii/user/profile/adapter/CommentAddAdapter;

    .line 589
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 590
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentHeaderAdapter:Lcom/narvii/user/profile/adapter/CommentHeaderAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 591
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentAddAdapter:Lcom/narvii/user/profile/adapter/CommentAddAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 592
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 593
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->tab2Adapter:Lcom/narvii/list/NVAdapter;

    .line 595
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 596
    new-instance v1, Lcom/narvii/list/DividerAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkDividerAdapter:Lcom/narvii/list/DividerAdapter;

    .line 597
    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$5;

    invoke-direct {v1, p0, p0}, Lcom/narvii/user/profile/UserProfileFragment$5;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkAdapter:Lcom/narvii/bookmark/BookmarkAdapter;

    .line 603
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkDividerAdapter:Lcom/narvii/list/DividerAdapter;

    iget-object v3, p0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkAdapter:Lcom/narvii/bookmark/BookmarkAdapter;

    invoke-virtual {v1, v3}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 604
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkDividerAdapter:Lcom/narvii/list/DividerAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 605
    new-instance v1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    new-array v3, v2, [I

    const v4, 0x7f0b04b5

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 606
    invoke-virtual {v1, v3}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 607
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 608
    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->tab3Adapter:Lcom/narvii/list/NVAdapter;

    .line 610
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 611
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$MySwitchAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$MySwitchAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 612
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->tab1Adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 613
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->tab2Adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 614
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->tab3Adapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/SwitchAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "tab"

    .line 617
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "comment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 618
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    invoke-virtual {p1, v2}, Lcom/narvii/list/SwitchAdapter;->setAdapter(I)V

    .line 620
    :cond_2
    new-instance p1, Lcom/narvii/user/profile/UserProfileFragment$6;

    invoke-direct {p1, p0, p0}, Lcom/narvii/user/profile/UserProfileFragment$6;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V

    .line 644
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->topAdapter:Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 645
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 646
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->fanClubAdapter:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    .line 647
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->fanClubAdapter:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 648
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$BioDividerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/user/profile/UserProfileFragment$BioDividerAdapter;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioDividerAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioDividerAdapter;

    .line 649
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioDividerAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioDividerAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 650
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->tabAdapter:Lcom/narvii/user/profile/UserProfileFragment$TabAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 651
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public editProfile(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2045
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/user/profile/UserProfileFragment;->openUserProfilePostActivity(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public flagForReview()V
    .locals 2

    .line 2935
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    invoke-direct {v0, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object v0

    .line 2936
    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    return-void
.end method

.method public follow(Z)V
    .locals 9

    .line 1709
    iget-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->sendingFollow:Z

    if-eqz v0, :cond_0

    return-void

    .line 1713
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 1714
    iget v0, v0, Lcom/narvii/model/User;->membershipStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "User Profile"

    const-string v3, "Number of Friends"

    const-string v4, "statistics"

    const-string v5, "id"

    const-string v6, "/user-profile/"

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 1718
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f1145

    .line 1719
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 1720
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$17;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$17;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1728
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void

    :cond_3
    const-string p1, "account"

    .line 1732
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 1733
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/member/"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    goto :goto_2

    .line 1738
    :cond_4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/member"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    :goto_2
    const-string v2, "api"

    .line 1743
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 1744
    new-instance v3, Lcom/narvii/user/profile/UserProfileFragment$18;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/user/profile/UserProfileFragment$18;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/Class;Z)V

    invoke-virtual {v2, p1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 1797
    iput-boolean v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->sendingFollow:Z

    .line 1798
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    return-void
.end method

.method public gallery(Lcom/narvii/model/Media;)V
    .locals 5

    .line 2680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2681
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 2682
    new-instance v2, Lcom/narvii/model/Media;

    invoke-direct {v2}, Lcom/narvii/model/Media;-><init>()V

    const/16 v3, 0x64

    .line 2683
    iput v3, v2, Lcom/narvii/model/Media;->type:I

    .line 2684
    iget-object v3, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    iput-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 2685
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2687
    iget-object v2, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    if-nez v2, :cond_0

    return-void

    .line 2691
    :cond_0
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment;->slideShowMedias:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2692
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2693
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2695
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2696
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "parent"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2697
    const-class v1, Lcom/narvii/model/User;

    const-string v3, "parentClass"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2698
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-lez p1, :cond_2

    const-string v0, "position"

    .line 2700
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2702
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    const-string v0, "preview"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2703
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public galleryBioMedias(Lcom/narvii/model/Media;)V
    .locals 3

    .line 2707
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioMedias:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2708
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2709
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2710
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-eqz v1, :cond_0

    .line 2711
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2712
    const-class v1, Lcom/narvii/model/User;

    const-string v2, "parentClass"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2714
    :cond_0
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioMedias:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-lez p1, :cond_1

    const-string v1, "position"

    .line 2716
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2718
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    const-string v1, "preview"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2719
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getDetailNVObject()Lcom/narvii/model/NVObject;
    .locals 1

    .line 3230
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-eqz v0, :cond_0

    .line 3231
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDisableStrId(Lcom/narvii/model/NVObject;)I
    .locals 1

    .line 1985
    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_2

    .line 1986
    check-cast p1, Lcom/narvii/model/User;

    .line 1987
    iget p1, p1, Lcom/narvii/model/User;->status:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const p1, 0x7f0f0370

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    const p1, 0x7f0f0373

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0372

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailFragment;->setDisabledText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getMood()Lcom/narvii/model/Sticker;
    .locals 3

    .line 1071
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isOnline()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1072
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    :goto_0
    if-nez v0, :cond_1

    .line 1073
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "account"

    .line 1074
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1075
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    .line 1077
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getOnlineStatus()I
    .locals 1

    .line 1056
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "account"

    .line 1057
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1058
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getOnlineStatus()I

    move-result v0

    return v0

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 1061
    :cond_2
    iget v0, v0, Lcom/narvii/model/User;->onlineStatus:I

    :goto_1
    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserProfile"

    return-object v0
.end method

.method protected hasVisitorBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 3220
    new-instance v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public isGlobalInteractionScope()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMe()Z
    .locals 2

    const-string v0, "account"

    .line 1035
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1036
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOnline()Z
    .locals 2

    .line 1066
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->getOnlineStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$new$0$UserProfileFragment(II)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->recentVisitorCount:I

    if-ltz p2, :cond_0

    .line 244
    invoke-direct {p0, p2}, Lcom/narvii/user/profile/UserProfileFragment;->updateUserVisitorsCount(I)V

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    return-void
.end method

.method public synthetic lambda$updateStreakInfo$1$UserProfileFragment(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1530
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->goAchievements(Ljava/lang/String;)V

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 489
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onActiveChanged(Z)V

    const-string v0, "liveLayer"

    .line 490
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v1, "itemList"

    .line 3187
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/Item;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3188
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3189
    invoke-virtual {p0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->tagFavorites(Ljava/util/List;)V

    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 3193
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    :cond_1
    const/16 v1, 0x6f

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    .line 3196
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    const-string v1, "collectionId"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->commentNew(Ljava/lang/String;)V

    .line 3198
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 316
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, ""

    .line 317
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "account"

    .line 318
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 319
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->datetime:Lcom/narvii/util/DateTimeFormatter;

    .line 320
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->headerLayoutHeight:I

    if-nez p1, :cond_1

    .line 327
    new-instance v1, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {v1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 328
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "Source"

    const-string v4, "User Profile"

    .line 329
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 331
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const-string v4, "chatInvite"

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 348
    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/user/profile/UserProfileFragment$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 359
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    const-string v0, "selectMood"

    .line 361
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 362
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->popupOnlineStatusMenu()V

    .line 365
    :cond_2
    new-instance v0, Lcom/narvii/account/visitor/RecentVisitorHelper;

    invoke-direct {v0, p0}, Lcom/narvii/account/visitor/RecentVisitorHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->recentVisitorHelper:Lcom/narvii/account/visitor/RecentVisitorHelper;

    .line 366
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const-string v0, "config"

    .line 367
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 368
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "block"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/userblock/UserBlockService;

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    const-string v0, "membership"

    .line 369
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 370
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 371
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-nez v0, :cond_3

    .line 372
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, -0x1

    const-string v1, "consecutiveCheckInDays"

    .line 375
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    const-string v1, "brokenStreaks"

    .line 376
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->brokenStreaks:I

    .line 378
    :cond_4
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->sendStreakStatusRequest()V

    .line 379
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 380
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 381
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 382
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACTION_STREAK_REPAIR_SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 383
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.WALLET_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 384
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.PRIVACY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 386
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 387
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->forceUpdateRecentVisitorCount()V

    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .line 670
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 p2, 0x0

    const v0, 0x7f090706

    const v1, 0x7f0f0cf3

    .line 672
    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0b06c8

    .line 673
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 674
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 675
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 676
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0903da

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 678
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x7f0903db

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f090707

    const v2, 0x7f0f0bca

    .line 680
    invoke-interface {p1, p2, v0, p2, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0b051c

    .line 681
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 682
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 683
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    invoke-virtual {v0, p2}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_0
    const v0, 0x7f0f113d

    .line 689
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f0f111d

    .line 691
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 692
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_1

    .line 693
    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 695
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 696
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0x1eb9b7

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, p2, v1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 697
    invoke-interface {p1, p2, v0, p2, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_0
    const v0, 0x7f0f0fb0

    .line 699
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f0f0fa2

    .line 700
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f0f1120

    .line 702
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f0f1128

    .line 703
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/ActionBarIcon;

    .line 705
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f05a1

    invoke-direct {v1, v2, v3}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 704
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const v0, 0x7f0f06d5

    .line 707
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 708
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0f1121

    .line 709
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 710
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0f1144

    .line 712
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 713
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0f0094

    .line 715
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 716
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b04c0

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 393
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 394
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    .line 395
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    if-eqz v0, :cond_1

    const-string v0, "account"

    .line 398
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 399
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeRecentVisitorListener(Lcom/narvii/account/AccountService$RecentVisitorListener;)V

    :cond_2
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 3203
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 3204
    check-cast p1, Lcom/narvii/widget/NVListView;

    new-instance p2, Lcom/narvii/user/profile/UserProfileFragment$24;

    invoke-direct {p2, p0}, Lcom/narvii/user/profile/UserProfileFragment$24;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2583
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "follow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2584
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->follow(Z)V

    return-void

    .line 2587
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method protected onNotAvailableChanged(Z)V
    .locals 2

    .line 2725
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onNotAvailableChanged(Z)V

    .line 2726
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    const v1, 0x7f090c35

    invoke-static {v0, v1, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1626
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->fanClubAdapter:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1627
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/influencer/FanClub;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    if-eq v0, v1, :cond_0

    const-string v1, "new"

    if-ne v0, v1, :cond_1

    .line 1628
    :cond_0
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 1629
    iget-object p1, p1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1630
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->fanClubAdapter:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->onFanClubSubscriptionChanged()V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 769
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 813
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 783
    :sswitch_0
    invoke-virtual {p0, v2, v1}, Lcom/narvii/user/profile/UserProfileFragment;->blockUser(ZZ)V

    return v2

    .line 771
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->startChat()V

    return v2

    :sswitch_2
    const-string p1, "Action Sheet"

    .line 797
    invoke-virtual {p0, p1, v1}, Lcom/narvii/user/profile/UserProfileFragment;->editProfile(Ljava/lang/String;Z)V

    return v2

    .line 780
    :sswitch_3
    invoke-virtual {p0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->blockUser(Z)V

    return v2

    .line 794
    :sswitch_4
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->addToFavoriteMembers()V

    return v2

    .line 786
    :sswitch_5
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->activateAccount()V

    return v2

    .line 789
    :sswitch_6
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    invoke-direct {p1, p0}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "User Profile"

    .line 790
    iput-object v0, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 791
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    return v2

    :sswitch_7
    const/4 p1, 0x0

    .line 774
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->shareUserProfile(Landroid/graphics/Bitmap;)V

    return v2

    .line 777
    :sswitch_8
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->flagForReview()V

    return v2

    .line 806
    :sswitch_9
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const/16 v0, 0x6d

    .line 807
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 808
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v0, v1

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v2

    .line 809
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 810
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    return v2

    .line 800
    :sswitch_a
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    .line 801
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 802
    invoke-virtual {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object p1

    .line 803
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x7f0f0094 -> :sswitch_a
        0x7f0f0310 -> :sswitch_9
        0x7f0f06d5 -> :sswitch_8
        0x7f0f0fa2 -> :sswitch_7
        0x7f0f0fb0 -> :sswitch_6
        0x7f0f111d -> :sswitch_5
        0x7f0f1120 -> :sswitch_4
        0x7f0f1121 -> :sswitch_3
        0x7f0f1128 -> :sswitch_2
        0x7f0f113d -> :sswitch_1
        0x7f0f1144 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPermissionGranted(I)V
    .locals 1

    .line 916
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onPermissionGranted(I)V

    const/16 v0, 0x6d

    if-ne p1, v0, :cond_0

    .line 918
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->createAvatar()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 12

    .line 727
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const-string v0, "account"

    .line 728
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 729
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 730
    iget-boolean v4, p0, Lcom/narvii/user/profile/UserProfileFragment;->instagramInstalled:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 731
    :goto_1
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasActivation()Z

    move-result v5

    .line 732
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v6

    .line 733
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isOnline()Z

    move-result v7

    .line 736
    iget-object v8, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v8

    check-cast v8, Lcom/narvii/model/User;

    :goto_2
    if-eqz v8, :cond_4

    .line 737
    iget v9, v8, Lcom/narvii/model/User;->role:I

    const/16 v10, 0xfd

    if-ne v9, v10, :cond_4

    const/4 v0, 0x0

    .line 738
    :goto_3
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 739
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    const v9, 0x7f090706

    .line 743
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->getOnlineStatus()I

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v10, 0x7f090707

    .line 744
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    xor-int/lit8 v11, v4, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v1, :cond_8

    .line 747
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0907bb

    .line 748
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v7, :cond_6

    const v11, 0x7f0f0cf3

    goto :goto_5

    :cond_6
    const v11, 0x7f0f0cf2

    :goto_5
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    const v10, 0x7f0907ba

    .line 749
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v7, :cond_7

    const v7, 0x7f080644

    goto :goto_6

    :cond_7
    const v7, 0x7f080645

    :goto_6
    invoke-virtual {v9, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_8
    const v7, 0x7f0f113d

    .line 752
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->canChat()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v9}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v4, :cond_9

    if-nez v1, :cond_9

    const/4 v9, 0x1

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    :goto_7
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v7, 0x7f0f0fa2

    .line 753
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v4, :cond_a

    if-nez v1, :cond_a

    const/4 v9, 0x1

    goto :goto_8

    :cond_a
    const/4 v9, 0x0

    :goto_8
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v7, 0x7f0f06d5

    .line 754
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v4, :cond_b

    if-nez v1, :cond_b

    const/4 v9, 0x1

    goto :goto_9

    :cond_b
    const/4 v9, 0x0

    :goto_9
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v7, 0x7f0f1121

    .line 755
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v4, :cond_c

    if-nez v1, :cond_c

    if-eqz v6, :cond_c

    iget-object v9, p0, Lcom/narvii/user/profile/UserProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    const/4 v9, 0x1

    goto :goto_a

    :cond_c
    const/4 v9, 0x0

    :goto_a
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v7, 0x7f0f1144

    .line 756
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v4, :cond_d

    if-nez v1, :cond_d

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/narvii/user/profile/UserProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_b

    :cond_d
    const/4 v6, 0x0

    :goto_b
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v6, 0x7f0f111d

    .line 757
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v4, :cond_e

    if-eqz v1, :cond_e

    if-nez v5, :cond_e

    const/4 v5, 0x1

    goto :goto_c

    :cond_e
    const/4 v5, 0x0

    :goto_c
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f0f0fb0

    .line 758
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f0f1120

    .line 759
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v4, :cond_f

    if-nez v1, :cond_f

    const/4 v6, 0x1

    goto :goto_d

    :cond_f
    const/4 v6, 0x0

    :goto_d
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f0f1128

    .line 760
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v4, :cond_10

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_e

    :cond_10
    const/4 v1, 0x0

    :goto_e
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 762
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 763
    iget v1, v0, Lcom/narvii/model/User;->role:I

    const/16 v5, 0x65

    if-ne v1, v5, :cond_12

    if-eqz v8, :cond_12

    iget v1, v8, Lcom/narvii/model/User;->role:I

    const/16 v5, 0x64

    if-eq v1, v5, :cond_11

    const/16 v5, 0x66

    if-ne v1, v5, :cond_12

    :cond_11
    const/4 v1, 0x1

    goto :goto_f

    :cond_12
    const/4 v1, 0x0

    :goto_f
    const v5, 0x7f0f0094

    .line 764
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz v4, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez v1, :cond_13

    const/4 v2, 0x1

    :cond_13
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1010
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->postAdapter:Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isAttached()Z

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->isAttached()Z

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkAdapter:Lcom/narvii/bookmark/BookmarkAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->isAttached()Z

    move-result v1

    add-int/2addr v0, v1

    .line 1011
    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$12;

    invoke-direct {v1, p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$12;-><init>(Lcom/narvii/user/profile/UserProfileFragment;I)V

    .line 1021
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->sendStreakStatusRequest()V

    .line 1022
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->favoriteAdapter:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 1023
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 1024
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->postAdapter:Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 1025
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 1026
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bookmarkAdapter:Lcom/narvii/bookmark/BookmarkAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 1027
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0, v2}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 1028
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->fanClubAdapter:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 1029
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->forceUpdateRecentVisitorCount()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 415
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 416
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    const-string v1, "com.instagram.android"

    .line 417
    invoke-virtual {v0, v1}, Lcom/narvii/util/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->instagramInstalled:Z

    .line 418
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 408
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 409
    iget v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    const-string v1, "consecutiveCheckInDays"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    iget v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->brokenStreaks:I

    const-string v1, "brokenStreaks"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSteakRepairSuccessed()V
    .locals 1

    .line 1615
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1618
    :cond_0
    iget v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    .line 1619
    iget v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->brokenStreaks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->brokenStreaks:I

    .line 1620
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateStreakInfo()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 438
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const v0, 0x7f09077b

    .line 503
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->notActivated:Landroid/view/View;

    .line 505
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->notActivated:Landroid/view/View;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 506
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 507
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 508
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->notActivated:Landroid/view/View;

    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/user/profile/UserProfileFragment$3;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09080a

    .line 515
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/overlay/OverlayLayout;

    iput-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 517
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 519
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 520
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    const p2, 0x7f090b2d

    .line 522
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 523
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 524
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 525
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p2, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTarget(Lcom/narvii/widget/NVListView;)V

    .line 526
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {p2, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 528
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 530
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 532
    new-instance p2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 533
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$4;-><init>(Lcom/narvii/user/profile/UserProfileFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 548
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 549
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarTitleView(Landroid/view/View;)V

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 554
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment;->recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->addRecentVisitorListener(Lcom/narvii/account/AccountService$RecentVisitorListener;)V

    .line 555
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->updateRecentVisitorCount()V

    :cond_1
    return-void
.end method

.method public openUserProfilePostActivity(Ljava/lang/String;ZZ)V
    .locals 10

    .line 2049
    new-instance v3, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2050
    invoke-virtual {v3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v0, "api"

    .line 2052
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/narvii/util/http/ApiService;

    .line 2053
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->createRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v8

    new-instance v9, Lcom/narvii/user/profile/UserProfileFragment$19;

    const-class v2, Lcom/narvii/model/api/UserResponse;

    move-object v0, v9

    move-object v1, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/narvii/user/profile/UserProfileFragment$19;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;ZZLjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method popupCustomMenu()V
    .locals 7

    .line 829
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 833
    :try_start_0
    iget-object v4, p0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f090c35

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/user/profile/HeaderLayout;

    if-eqz v4, :cond_1

    .line 835
    iget v5, p0, Lcom/narvii/user/profile/UserProfileFragment;->consecutiveCheckInDays:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Lcom/narvii/user/profile/HeaderLayout;->screenshotForSharing(Z)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "OutOfMemory when create profile image"

    .line 838
    invoke-static {v5, v4}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    const v4, 0x7f0b06c9

    .line 841
    invoke-virtual {v0, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->setCustomView(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090571

    .line 842
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 844
    new-instance v5, Lcom/narvii/user/profile/UserProfileFragment$8;

    invoke-direct {v5, p0, v3, v0}, Lcom/narvii/user/profile/UserProfileFragment$8;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Landroid/graphics/Bitmap;Lcom/narvii/util/dialog/ActionSheetDialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const/4 v3, 0x6

    new-array v3, v3, [I

    const-string v4, "account"

    .line 855
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    .line 857
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->hasActivation()Z

    move-result v5

    if-nez v5, :cond_3

    const v5, 0x7f0f111d

    .line 858
    invoke-virtual {v0, v5, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    aput v5, v3, v2

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    const v5, 0x7f0f0fb0

    .line 862
    invoke-virtual {v0, v5, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    add-int/lit8 v6, v1, 0x1

    .line 863
    aput v5, v3, v1

    const v1, 0x7f0f1128

    .line 865
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    add-int/lit8 v5, v6, 0x1

    .line 866
    aput v1, v3, v6

    .line 873
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 874
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0f0094

    .line 875
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 876
    aput v1, v3, v5

    .line 879
    :cond_4
    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$9;

    invoke-direct {v1, p0, v3}, Lcom/narvii/user/profile/UserProfileFragment$9;-><init>(Lcom/narvii/user/profile/UserProfileFragment;[I)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 910
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method popupOnlineStatusMenu()V
    .locals 7

    .line 930
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b052f

    .line 932
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setCustomView(I)Landroid/view/View;

    .line 933
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment;->getMood()Lcom/narvii/model/Sticker;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const v3, 0x7f090721

    .line 935
    invoke-virtual {v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090b5b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0f0bb3

    goto :goto_1

    :cond_1
    const v2, 0x7f0f0bb2

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 936
    invoke-virtual {v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/narvii/user/profile/UserProfileFragment$10;

    invoke-direct {v3, p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$10;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/util/dialog/ActionSheetDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0907b9

    .line 961
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const v4, 0x7f0f0cf3

    goto :goto_2

    :cond_2
    const v4, 0x7f0f0cef

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const v5, 0x7f0907b7

    const v6, 0x7f09020f

    if-eqz v1, :cond_3

    .line 963
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 964
    invoke-virtual {v0, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 966
    :cond_3
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 967
    invoke-virtual {v0, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 968
    invoke-virtual {v0, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0907b8

    .line 969
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 971
    :goto_3
    new-instance v1, Lcom/narvii/user/profile/UserProfileFragment$11;

    invoke-direct {v1, p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$11;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/util/dialog/ActionSheetDialog;)V

    .line 1003
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1004
    invoke-virtual {v0, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1005
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method protected setListContentBgWhenHasPageBackground()Z
    .locals 1

    .line 2423
    iget-boolean v0, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldBlockClick(Ljava/lang/Object;)Z
    .locals 1

    .line 662
    sget-object v0, Lcom/narvii/user/profile/UserProfileFragment;->BIO_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 665
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected shouldHideUserPrivateInfo()Z
    .locals 4

    .line 1543
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1546
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-nez v0, :cond_1

    return v1

    .line 1550
    :cond_1
    iget v2, v0, Lcom/narvii/model/User;->role:I

    const/16 v3, 0xfd

    if-eq v2, v3, :cond_2

    iget v0, v0, Lcom/narvii/model/User;->status:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected shouldShowDisableBar(Lcom/narvii/model/NVObject;)Z
    .locals 3

    .line 1995
    instance-of v0, p1, Lcom/narvii/model/User;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1996
    check-cast p1, Lcom/narvii/model/User;

    .line 1997
    iget v0, p1, Lcom/narvii/model/User;->status:I

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/User;->hideUserProfile()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public startChat()V
    .locals 3

    const-string v0, "account"

    .line 2988
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 2989
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2990
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment;->canChat()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2991
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f1125

    .line 2992
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 2993
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 2994
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 2997
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatInvite"

    .line 2998
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz v0, :cond_2

    const-string v1, "id"

    .line 3000
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    goto :goto_0

    .line 3003
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "chat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3004
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method tagFavorites()V
    .locals 3

    .line 3148
    const-class v0, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maximum"

    const/16 v2, 0x32

    .line 3149
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 3150
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

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

    .line 3154
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 3155
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 3156
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3157
    new-instance v2, Lcom/narvii/user/profile/UserProfileFragment$23;

    invoke-direct {v2, p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$23;-><init>(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 3170
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 3171
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

    .line 3172
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3173
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    const-string v3, "categoryIdList"

    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3174
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 3175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Item;

    .line 3176
    iget-object v3, v3, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    :cond_0
    const-string p1, "itemIdList"

    .line 3178
    invoke-virtual {v2, p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string p1, "api"

    .line 3179
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 3180
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iget-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 3181
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method

.method updateHeader()V
    .locals 16

    move-object/from16 v0, p0

    .line 1215
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 1217
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 1220
    :cond_0
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1223
    invoke-direct/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->showDisabled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->showNotActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

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

    .line 1224
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0702ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v0, Lcom/narvii/user/profile/UserProfileFragment;->headerLayoutHeight:I

    .line 1225
    iget-object v5, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v7, 0x7f0b06c4

    iget v8, v0, Lcom/narvii/user/profile/UserProfileFragment;->headerLayoutHeight:I

    invoke-virtual {v5, v7, v8}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 1227
    invoke-direct/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeaderPlaceHolder()V

    .line 1229
    iget-object v5, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v7, 0x7f090c35

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/user/profile/HeaderLayout;

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz v5, :cond_4

    .line 1231
    div-int/2addr v3, v7

    invoke-virtual {v5, v3}, Lcom/narvii/user/profile/HeaderLayout;->setOffset(I)V

    .line 1232
    iget v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->headerLayoutHeight:I

    invoke-virtual {v5, v3}, Lcom/narvii/user/profile/HeaderLayout;->setH0(I)V

    .line 1233
    iget-object v3, v5, Lcom/narvii/user/profile/HeaderLayout;->gradient:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1234
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/2addr v6, v8

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1235
    iget-object v6, v5, Lcom/narvii/user/profile/HeaderLayout;->gradient:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1236
    iget v3, v1, Lcom/narvii/model/User;->role:I

    const/16 v6, 0xfd

    if-ne v3, v6, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5, v3}, Lcom/narvii/user/profile/HeaderLayout;->setNewsFeed(Z)V

    :cond_4
    const-string v3, "account"

    .line 1238
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/AccountService;

    if-eqz v1, :cond_5

    .line 1239
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/narvii/model/User;->isProfileAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 1240
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v6

    const/4 v10, 0x0

    if-eqz v1, :cond_6

    .line 1241
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v0, Lcom/narvii/user/profile/UserProfileFragment;->headerClickListener:Landroid/view/View$OnClickListener;

    goto :goto_4

    :cond_6
    move-object v11, v10

    .line 1243
    :goto_4
    iget v12, v1, Lcom/narvii/model/User;->reputation:I

    invoke-static {v12}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v12

    .line 1244
    iget-object v13, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v14, 0x7f090c2b

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    iget v12, v1, Lcom/narvii/model/User;->joinedCount:I

    invoke-static {v12}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v12

    .line 1246
    iget-object v13, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v14, 0x7f090c2a

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1247
    iget v12, v1, Lcom/narvii/model/User;->membersCount:I

    invoke-static {v12}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v12

    .line 1248
    iget-object v13, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v14, 0x7f090c29

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1249
    iget v12, v1, Lcom/narvii/model/User;->visitorsCount:I

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v12}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v12

    .line 1250
    iget-object v13, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v14, 0x7f090c2d

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1252
    const-string v12, "show_visitor_count"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/narvii/util/DBAminoLightHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v13, 0x7f090c42

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_7
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v13, 0x7f090c42

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v13, 0x7f090c2c

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1253
    iget v13, v1, Lcom/narvii/model/User;->visitorsCount:I

    if-ne v13, v9, :cond_8

    const v13, 0x7f0f1146

    .line 1254
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :cond_8
    const v13, 0x7f0f1147

    .line 1256
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 1258
    :goto_6
    iget v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->recentVisitorCount:I

    const v13, 0x7f090cb0

    if-nez v12, :cond_9

    .line 1259
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 1261
    :cond_9
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    iget v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->recentVisitorCount:I

    const/16 v13, 0x63

    if-le v12, v13, :cond_a

    const-string v12, "99+"

    goto :goto_7

    :cond_a
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1263
    :goto_7
    iget-object v13, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v15, 0x7f090cb1

    invoke-virtual {v13, v15}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    :goto_8
    iget v12, v1, Lcom/narvii/model/User;->visitPrivacy:I

    if-ne v12, v7, :cond_b

    const/4 v7, 0x1

    goto :goto_9

    :cond_b
    const/4 v7, 0x0

    .line 1266
    :goto_9
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v7, :cond_d

    if-eqz v6, :cond_c

    goto :goto_a

    :cond_c
    const/4 v13, 0x4

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v13, 0x0

    :goto_b
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v13, 0x7f090cad

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v7, :cond_e

    if-eqz v6, :cond_e

    const/4 v13, 0x0

    goto :goto_c

    :cond_e
    const/4 v13, 0x4

    :goto_c
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v13, 0x7f0901bf

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v7, :cond_f

    if-nez v6, :cond_f

    const/4 v7, 0x0

    goto :goto_d

    :cond_f
    const/16 v7, 0x8

    :goto_d
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_10

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v12, 0x41700000    # 15.0f

    invoke-static {v7, v12}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v7

    goto :goto_e

    :cond_10
    const/4 v7, 0x0

    .line 1271
    :goto_e
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v13, 0x7f09002a

    invoke-direct {v0, v7, v13, v12}, Lcom/narvii/user/profile/UserProfileFragment;->updateBottomMargin(IILandroid/view/ViewGroup;)V

    .line 1272
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v14, 0x7f090cf4

    invoke-direct {v0, v7, v14, v12}, Lcom/narvii/user/profile/UserProfileFragment;->updateBottomMargin(IILandroid/view/ViewGroup;)V

    .line 1274
    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x1

    goto :goto_f

    :cond_11
    const/4 v7, 0x0

    :goto_f
    const v12, 0x7f090c38

    if-eqz v6, :cond_12

    .line 1276
    iget-object v15, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v15, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_11

    .line 1278
    :cond_12
    iget-object v15, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v15, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v7, :cond_13

    move-object v15, v11

    goto :goto_10

    :cond_13
    move-object v15, v10

    :goto_10
    invoke-virtual {v12, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1280
    :goto_11
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v15, 0x7f0900a3

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1281
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v8, 0x7f090c20

    invoke-virtual {v12, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1282
    iget-object v8, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v12, 0x7f090c1f

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1283
    iget-object v8, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1284
    iget-object v8, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v12, 0x7f090c42

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1285
    iget-object v8, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v12

    if-eqz v12, :cond_14

    const v12, 0x7f080064

    goto :goto_12

    :cond_14
    const v12, 0x7f080065

    :goto_12
    invoke-virtual {v8, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1287
    iget-object v8, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/widget/WalletBalanceView;

    const-string v12, "Profile"

    .line 1288
    iput-object v12, v8, Lcom/narvii/widget/WalletBalanceView;->source:Ljava/lang/String;

    const v12, 0x7f08081b

    const v13, 0x7f08081c

    .line 1289
    invoke-virtual {v8, v12, v13}, Lcom/narvii/widget/WalletBalanceView;->setCoinBackground(II)V

    if-eqz v6, :cond_15

    .line 1290
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-eqz v12, :cond_15

    invoke-virtual {v12}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v12, 0x0

    goto :goto_13

    :cond_15
    const/16 v12, 0x8

    :goto_13
    invoke-virtual {v8, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1291
    invoke-virtual {v8}, Lcom/narvii/widget/WalletBalanceView;->refresh()V

    .line 1293
    iget-object v8, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v12, 0x7f0903c0

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v6, :cond_16

    const/4 v13, 0x0

    goto :goto_14

    :cond_16
    const/16 v13, 0x8

    :goto_14
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    iget-object v8, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f090701

    if-eqz v6, :cond_17

    .line 1296
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v12, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_16

    .line 1298
    :cond_17
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v12, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v7, :cond_18

    move-object v13, v11

    goto :goto_15

    :cond_18
    move-object v13, v10

    :goto_15
    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1301
    :goto_16
    iget-object v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v12, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/widget/RankingTitleView;

    if-eqz v7, :cond_1a

    .line 1302
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->shouldHideUserPrivateInfo()Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_17

    .line 1305
    :cond_19
    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1306
    invoke-virtual {v8, v9}, Lcom/narvii/widget/RankingTitleView;->setShowBadge(Z)V

    goto :goto_18

    .line 1303
    :cond_1a
    :goto_17
    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1308
    :goto_18
    invoke-virtual {v8, v1, v0}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V

    .line 1311
    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v8, 0x7f090a50

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/SlideshowView;

    .line 1312
    iget-object v8, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v12, v9, [Ljava/lang/String;

    const-string v13, "coverAnimation"

    aput-object v13, v12, v4

    invoke-static {v8, v12}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "none"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1313
    iput-boolean v8, v7, Lcom/narvii/widget/SlideshowView;->noSlide:Z

    if-eqz v5, :cond_1b

    .line 1315
    iget-object v8, v0, Lcom/narvii/user/profile/UserProfileFragment;->slideShowMedias:Ljava/util/ArrayList;

    goto :goto_19

    :cond_1b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    :goto_19
    invoke-virtual {v7, v8}, Lcom/narvii/widget/SlideshowView;->setMediaList(Ljava/util/List;)V

    .line 1317
    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v8, 0x7f090177

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/BubbleBackground;

    if-eqz v5, :cond_1d

    .line 1318
    iget-object v8, v1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    if-eqz v8, :cond_1d

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1c

    goto :goto_1a

    :cond_1c
    const/4 v8, 0x4

    goto :goto_1b

    :cond_1d
    :goto_1a
    const/4 v8, 0x0

    :goto_1b
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_1e

    move-object v8, v10

    goto :goto_1c

    .line 1319
    :cond_1e
    iget-object v8, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_1c
    invoke-virtual {v7, v8}, Lcom/narvii/widget/BubbleBackground;->set(Ljava/lang/String;)V

    .line 1321
    iget-object v7, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v8, 0x7f090c10

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1322
    move-object v8, v7

    check-cast v8, Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v8, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 1323
    invoke-virtual {v7, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1324
    invoke-virtual {v8}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    move-result-object v7

    if-eqz v5, :cond_1f

    invoke-virtual {v1, v9}, Lcom/narvii/model/User;->icon(Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_1d

    :cond_1f
    const-string v5, "res://disabled_user_icon"

    :goto_1d
    invoke-virtual {v7, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 1331
    iget-object v5, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v7, 0x7f090720

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/MoodView;

    .line 1332
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->getMood()Lcom/narvii/model/Sticker;

    move-result-object v7

    .line 1333
    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v6, :cond_20

    .line 1334
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->hasActivation()Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_1e

    :cond_20
    invoke-static {v7}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v3

    if-nez v3, :cond_21

    :goto_1e
    const/4 v3, 0x0

    goto :goto_1f

    :cond_21
    const/4 v3, 0x4

    :goto_1f
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1335
    invoke-static {v7}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v3

    xor-int/2addr v3, v9

    invoke-virtual {v5, v3}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 1336
    invoke-virtual {v5, v1, v7}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;)V

    .line 1338
    iget-object v3, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v5, v9, [Ljava/lang/String;

    const-string v7, "isMemberOfTeamAmino"

    aput-object v7, v5, v4

    invoke-static {v3, v5}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v3

    .line 1342
    iget-object v5, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v3, :cond_22

    const/4 v3, 0x0

    goto :goto_20

    :cond_22
    const/4 v3, 0x4

    .line 1343
    :goto_20
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1344
    invoke-virtual {v5, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1346
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f090764

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/NicknameView;

    .line 1347
    invoke-virtual {v3, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 1348
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1350
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->dateFmt:Ljava/text/DateFormat;

    if-nez v3, :cond_23

    .line 1351
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "MMMM yyyy"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->dateFmt:Ljava/text/DateFormat;

    .line 1354
    :cond_23
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f0901ed

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, v0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v5

    if-eqz v5, :cond_24

    if-nez v6, :cond_24

    invoke-direct/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->userDisabled()Z

    move-result v5

    if-nez v5, :cond_24

    const/4 v5, 0x0

    goto :goto_21

    :cond_24
    const/16 v5, 0x8

    :goto_21
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1355
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f090c34

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->isOnline()Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x0

    goto :goto_22

    :cond_25
    const/4 v5, 0x4

    :goto_22
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f0901ed

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1357
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f090189

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->shouldHideUserPrivateInfo()Z

    move-result v5

    if-eqz v5, :cond_26

    const/16 v5, 0x8

    goto :goto_23

    :cond_26
    const/4 v5, 0x0

    :goto_23
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f0909ae

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->shouldHideUserPrivateInfo()Z

    move-result v5

    if-eqz v5, :cond_27

    const/16 v5, 0x8

    goto :goto_24

    :cond_27
    const/4 v5, 0x0

    :goto_24
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f090c3f

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/user/title/UserTitleFlowView;

    .line 1361
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->shouldHideUserPrivateInfo()Z

    move-result v5

    if-eqz v5, :cond_28

    const/16 v5, 0x8

    goto :goto_25

    :cond_28
    const/4 v5, 0x0

    :goto_25
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1362
    invoke-virtual {v3, v1}, Lcom/narvii/user/title/UserTitleFlowView;->setUser(Lcom/narvii/model/User;)V

    .line 1364
    iget-object v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v5, 0x7f090c18

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v6, :cond_38

    if-eqz v1, :cond_38

    .line 1365
    invoke-virtual {v1}, Lcom/narvii/model/User;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_29

    goto/16 :goto_30

    .line 1368
    :cond_29
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1369
    iget v5, v1, Lcom/narvii/model/User;->membershipStatus:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2a

    const/4 v5, 0x1

    goto :goto_26

    :cond_2a
    const/4 v5, 0x0

    .line 1370
    :goto_26
    iget v6, v1, Lcom/narvii/model/User;->membershipStatus:I

    if-ne v6, v9, :cond_2b

    goto :goto_27

    :cond_2b
    const/4 v9, 0x0

    :goto_27
    const v6, 0x7f090c1b

    .line 1372
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f090c1e

    .line 1373
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090c1d

    .line 1374
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v9, :cond_2c

    const v12, 0x7f08010b

    goto :goto_28

    :cond_2c
    if-eqz v5, :cond_2d

    const v12, 0x7f0800ee

    goto :goto_28

    :cond_2d
    const v12, 0x7f0800e8

    .line 1384
    :goto_28
    invoke-virtual {v3, v12}, Landroid/view/View;->setBackgroundResource(I)V

    const v12, 0x7f08036e

    if-eqz v5, :cond_2e

    const v12, 0x7f08036c

    goto :goto_29

    :cond_2e
    if-eqz v9, :cond_2f

    const v12, 0x7f080541

    .line 1393
    :cond_2f
    :goto_29
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1394
    iget-boolean v12, v0, Lcom/narvii/user/profile/UserProfileFragment;->sendingFollow:Z

    if-eqz v12, :cond_30

    const/4 v12, 0x4

    goto :goto_2a

    :cond_30
    const/4 v12, 0x0

    :goto_2a
    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v5, :cond_31

    const v5, 0x7f0f112d

    goto :goto_2b

    :cond_31
    if-eqz v9, :cond_32

    const/4 v5, 0x0

    goto :goto_2b

    :cond_32
    const v5, 0x7f0f1129

    :goto_2b
    if-eqz v5, :cond_33

    .line 1405
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2c

    .line 1407
    :cond_33
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2c
    if-eqz v9, :cond_34

    .line 1411
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2e

    .line 1413
    :cond_34
    iget-boolean v5, v0, Lcom/narvii/user/profile/UserProfileFragment;->sendingFollow:Z

    if-eqz v5, :cond_35

    const/4 v5, 0x4

    goto :goto_2d

    :cond_35
    const/4 v5, 0x0

    :goto_2d
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2e
    if-eqz v9, :cond_36

    .line 1417
    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_2f

    .line 1419
    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0702ed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1422
    :goto_2f
    invoke-virtual {v3, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1423
    iget-boolean v3, v0, Lcom/narvii/user/profile/UserProfileFragment;->sendingFollow:Z

    if-eqz v3, :cond_37

    const/4 v2, 0x0

    :cond_37
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    .line 1366
    :cond_38
    :goto_30
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1425
    :goto_31
    invoke-direct/range {p0 .. p0}, Lcom/narvii/user/profile/UserProfileFragment;->updateStreakInfo()V

    .line 1426
    iget-object v2, v0, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-direct {v0, v1, v2}, Lcom/narvii/user/profile/UserProfileFragment;->updateBadge(Lcom/narvii/model/User;Landroid/view/View;)V

    return-void
.end method
