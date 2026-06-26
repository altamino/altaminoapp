.class public Lcom/narvii/master/MyCommunityListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "MyCommunityListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/master/MasterAppearanceChangedListener;
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/MyCommunityListFragment$BottomAdapter;,
        Lcom/narvii/master/MyCommunityListFragment$CreateAminoAdapter;,
        Lcom/narvii/master/MyCommunityListFragment$MoreCommunitiesAdapter;,
        Lcom/narvii/master/MyCommunityListFragment$Adapter;,
        Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;,
        Lcom/narvii/master/MyCommunityListFragment$SuggestedCommunityHeader;,
        Lcom/narvii/master/MyCommunityListFragment$NoAminosJoinedHintAdapter;,
        Lcom/narvii/master/MyCommunityListFragment$LoginHintAdapter;,
        Lcom/narvii/master/MyCommunityListFragment$CommunityTabTitleAdapter;,
        Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;
    }
.end annotation


# static fields
.field public static final LAUNCH_TITLE_SHOW_DELAY:J = 0x2bcL

.field static final REFRESH_COMMUNITY_LIST_DURATION:J

.field static final REFRESH_SUGGEST_LIST_DURATION:J

.field static final REMINDER_CHECK_DURATION:J

.field public static final _SINGLE:Ljava/lang/String; = "__single"


# instance fields
.field final DEBUG:Z

.field private accountService:Lcom/narvii/account/AccountService;

.field adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

.field chatService:Lcom/narvii/chat/core/ChatService;

.field launchCommunity:Lcom/narvii/model/Community;

.field launchHelper:Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;

.field launchImageView:Lcom/narvii/widget/NVImageView;

.field launchProgress:Lcom/narvii/widget/SmoothProgressBar;

.field private masterHelper:Lcom/narvii/master/MasterHelper;

.field myCommunityListService:Lcom/narvii/community/MyCommunityListService;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private suggestCommunityAdapter:Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

.field themePackService:Lcom/narvii/theme/ThemePackService;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 95
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const-wide/32 v1, 0xea60

    const-wide/32 v3, 0x493e0

    if-eqz v0, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    sput-wide v5, Lcom/narvii/master/MyCommunityListFragment;->REMINDER_CHECK_DURATION:J

    .line 96
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    move-wide v5, v3

    :goto_1
    sput-wide v5, Lcom/narvii/master/MyCommunityListFragment;->REFRESH_COMMUNITY_LIST_DURATION:J

    .line 97
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-wide v1, v3

    :goto_2
    sput-wide v1, Lcom/narvii/master/MyCommunityListFragment;->REFRESH_SUGGEST_LIST_DURATION:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 98
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    iput-boolean v0, p0, Lcom/narvii/master/MyCommunityListFragment;->DEBUG:Z

    .line 370
    new-instance v0, Lcom/narvii/master/MyCommunityListFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/MyCommunityListFragment$2;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    iput-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/narvii/master/MyCommunityListFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/narvii/master/MyCommunityListFragment;->suggestCommunityAdapter:Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/model/Community;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/narvii/master/MyCommunityListFragment;->leaveCommunity(Lcom/narvii/model/Community;)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/master/MyCommunityListFragment;Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/narvii/master/MyCommunityListFragment;->gotoExplorerPage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/master/MasterHelper;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/narvii/master/MyCommunityListFragment;->masterHelper:Lcom/narvii/master/MasterHelper;

    return-object p0
.end method

.method private gotoExplorerPage(Ljava/lang/String;)V
    .locals 1

    .line 1248
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->masterHelper:Lcom/narvii/master/MasterHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/master/MasterHelper;->exploreCommunities(Ljava/lang/String;)V

    return-void
.end method

.method private isSingleFragment()Z
    .locals 1

    const-string v0, "__single"

    .line 225
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private leaveCommunity(Lcom/narvii/model/Community;)V
    .locals 2

    .line 1239
    new-instance v0, Lcom/narvii/master/MasterLeaveCommunityHelper;

    invoke-direct {v0, p0}, Lcom/narvii/master/MasterLeaveCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/narvii/community/LeaveCommunityHelper;->leaveCommunity(Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method cancelLaunch()V
    .locals 3

    .line 1095
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->launchHelper:Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;

    invoke-virtual {v0}, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->cancel()V

    .line 1096
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 1097
    invoke-virtual {v0, v2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 1098
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1099
    iput-object v1, p0, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 1101
    :cond_0
    iput-object v1, p0, Lcom/narvii/master/MyCommunityListFragment;->launchCommunity:Lcom/narvii/model/Community;

    .line 1102
    iput-object v1, p0, Lcom/narvii/master/MyCommunityListFragment;->launchImageView:Lcom/narvii/widget/NVImageView;

    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 13

    .line 302
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/MyCommunityListFragment$Adapter;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 303
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->suggestCommunityAdapter:Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    .line 304
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v0, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    const/4 v0, 0x1

    .line 305
    invoke-virtual {p1, v0}, Lcom/narvii/list/DivideColumnAdapter;->setSupportLongClick(Z)V

    .line 306
    iget-object v1, p0, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 307
    new-instance v1, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, p0, v3}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 309
    new-instance v3, Lcom/narvii/list/DivideColumnAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    float-to-int v9, v4

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    float-to-int v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 310
    iget-object v4, p0, Lcom/narvii/master/MyCommunityListFragment;->suggestCommunityAdapter:Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    invoke-virtual {v3, v4, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 312
    new-instance v2, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v2, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 313
    invoke-direct {p0}, Lcom/narvii/master/MyCommunityListFragment;->isSingleFragment()Z

    move-result v4

    if-nez v4, :cond_0

    .line 314
    new-instance v4, Lcom/narvii/master/MyCommunityListFragment$CommunityTabTitleAdapter;

    invoke-direct {v4, p0}, Lcom/narvii/master/MyCommunityListFragment$CommunityTabTitleAdapter;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    invoke-virtual {v2, v4}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 316
    :cond_0
    invoke-virtual {v2, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 317
    invoke-virtual {v2, p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 318
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$LoginHintAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/MyCommunityListFragment$LoginHintAdapter;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 319
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$NoAminosJoinedHintAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/MyCommunityListFragment$NoAminosJoinedHintAdapter;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 320
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$CreateAminoAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/MyCommunityListFragment$CreateAminoAdapter;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$SuggestedCommunityHeader;

    invoke-direct {p1, p0}, Lcom/narvii/master/MyCommunityListFragment$SuggestedCommunityHeader;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    invoke-virtual {v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$BottomAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/MyCommunityListFragment$BottomAdapter;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 324
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object v2
.end method

.method createShortcut(Lcom/narvii/model/Community;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1111
    iget-object v0, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1115
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1116
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "imageLoader"

    .line 1118
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/image/NVImageLoader;

    .line 1119
    iget-object v2, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    new-instance v3, Lcom/narvii/master/MyCommunityListFragment$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/narvii/master/MyCommunityListFragment$3;-><init>(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Community;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    :cond_1
    :goto_0
    return-void
.end method

.method createShortcut(Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V
    .locals 10

    const-string v0, "navigator"

    .line 1139
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/BaseNavigator;

    .line 1140
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/narvii/app/BaseNavigator;->getMyScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/default?source=Shortcut"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 1141
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 1142
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const/16 v4, 0x90

    .line 1147
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1148
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1149
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1150
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 1151
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v4, v4

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const v9, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, v9

    .line 1152
    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v4, v4, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1153
    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1154
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v4, v3, v3, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1155
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 1156
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v9, -0x1000000

    .line 1157
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1158
    invoke-virtual {v6, p2, v4, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v5

    goto :goto_0

    :catch_0
    move-object p2, v0

    .line 1165
    :cond_0
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x19

    if-lt v4, v5, :cond_6

    .line 1166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1167
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutManager;

    .line 1168
    new-instance v6, Ljava/util/LinkedList;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1169
    new-instance v7, Lcom/narvii/master/MyCommunityListFragment$4;

    invoke-direct {v7, p0}, Lcom/narvii/master/MyCommunityListFragment$4;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1175
    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1176
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1177
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    .line 1178
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-array v8, v2, [Ljava/lang/String;

    aput-object v4, v8, v3

    .line 1179
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    .line 1180
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 1185
    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_3

    .line 1186
    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    new-array v8, v2, [Ljava/lang/String;

    .line 1187
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v3

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    goto :goto_1

    .line 1190
    :cond_3
    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    .line 1191
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    .line 1193
    :cond_4
    new-instance v6, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8, v4}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 1194
    invoke-virtual {v6, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    add-int/2addr v7, v2

    .line 1195
    invoke-virtual {v4, v7}, Landroid/content/pm/ShortcutInfo$Builder;->setRank(I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    iget-object v6, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 1196
    invoke-virtual {v4, v6}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    if-eqz p2, :cond_5

    .line 1198
    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 1200
    :cond_5
    invoke-virtual {v4, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 1201
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    new-array v2, v2, [Landroid/content/pm/ShortcutInfo;

    aput-object v4, v2, v3

    .line 1202
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    .line 1205
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v2, v4, :cond_8

    .line 1207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.shortcut.INTENT"

    .line 1208
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1209
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_7

    .line 1211
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 1213
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p1

    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 1212
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    const-string p1, "android.intent.extra.shortcut.ICON"

    .line 1215
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_3
    const-string p1, "duplicate"

    .line 1217
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 1218
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1219
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    .line 1223
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1224
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager;

    .line 1225
    new-instance v4, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 1226
    invoke-virtual {v4, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 1227
    invoke-virtual {v2, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    if-eqz p2, :cond_9

    .line 1229
    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 1231
    :cond_9
    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 1232
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 1233
    invoke-virtual {v3, p1, v0}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    :goto_4
    return-void
.end method

.method protected ensureLoginToast()V
    .locals 0

    return-void
.end method

.method protected externalOffset()I
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "MyAminos"

    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 204
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090306

    if-eq p1, v0, :cond_2

    const v0, 0x7f09040e

    if-eq p1, v0, :cond_1

    const v0, 0x7f0906a2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "ndc://login"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 410
    sget-object v0, Lcom/narvii/account/LoginActivity$PromptType;->Button:Lcom/narvii/account/LoginActivity$PromptType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "promptType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "Zero State Button"

    .line 401
    invoke-direct {p0, p1}, Lcom/narvii/master/MyCommunityListFragment;->gotoExplorerPage(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->masterHelper:Lcom/narvii/master/MasterHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/master/MasterHelper;->createAmino(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    new-instance p1, Lcom/narvii/master/MasterHelper;

    invoke-direct {p1, p0}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->masterHelper:Lcom/narvii/master/MasterHelper;

    const-string p1, "myCommunityList"

    .line 120
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 121
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    const-string p1, "chat"

    .line 122
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 123
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1, p0}, Lcom/narvii/chat/core/ChatService;->addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    const-string p1, "themePack"

    .line 124
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/theme/ThemePackService;

    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->themePackService:Lcom/narvii/theme/ThemePackService;

    .line 125
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;

    invoke-direct {p1, p0, p0}, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;-><init>(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->launchHelper:Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;

    const-string p1, "account"

    .line 126
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 127
    iget-boolean p1, p0, Lcom/narvii/master/MyCommunityListFragment;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.THEME_PACK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 129
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.THEME_PACK_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 188
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 190
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/core/ChatService;->removeGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method

.method protected onErrorRetry()V
    .locals 1

    .line 366
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onErrorRetry()V

    .line 367
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0

    .line 336
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 293
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 294
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 295
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onMasterAppearanceChanged(I)V
    .locals 0

    .line 196
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/narvii/master/MyCommunityListFragment;->updateEmptyViewForList()V

    :cond_0
    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 169
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 171
    invoke-virtual {p0}, Lcom/narvii/master/MyCommunityListFragment;->cancelLaunch()V

    .line 172
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->suggestCommunityAdapter:Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->setFragmentResume(Z)V

    :cond_0
    return-void
.end method

.method public onRefresh(Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 350
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onRefresh(Lcom/narvii/util/Callback;)V

    .line 351
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    new-instance v1, Lcom/narvii/master/MyCommunityListFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/master/MyCommunityListFragment$1;-><init>(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest(Lcom/narvii/util/Callback;)V

    .line 359
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->getNdcIds()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 360
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->getNdcIds()Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(Ljava/util/Set;Z)V

    :cond_0
    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    .line 343
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 344
    invoke-virtual {p0, p1}, Lcom/narvii/master/MyCommunityListFragment;->updateRemindersOnScreen(Z)V

    :cond_0
    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 155
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 157
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/narvii/master/MyCommunityListFragment$Adapter;->onResume()V

    :cond_0
    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0, v0}, Lcom/narvii/master/MyCommunityListFragment;->updateRemindersOnScreen(Z)V

    .line 162
    iget-object v1, p0, Lcom/narvii/master/MyCommunityListFragment;->suggestCommunityAdapter:Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v1, v0}, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->setFragmentResume(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    .line 143
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {v0, p0}, Lcom/narvii/master/MasterTabFragment;->addMasterThemeChangedListener(Lcom/narvii/master/MasterAppearanceChangedListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 179
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {v0, p0}, Lcom/narvii/master/MasterTabFragment;->removeMasterThemeChangeListener(Lcom/narvii/master/MasterAppearanceChangedListener;)V

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0

    .line 331
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->suggestCommunityAdapter:Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    invoke-virtual {p1}, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->notifyDataChange()V

    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 0

    .line 209
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/narvii/master/MyCommunityListFragment;->updateEmptyViewForList()V

    return-void
.end method

.method reorder()V
    .locals 1

    .line 1106
    const-class v0, Lcom/narvii/master/SortCommunityFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1107
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method updateEmptyViewForList()V
    .locals 2

    .line 418
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "account"

    .line 421
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 422
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b034e

    goto :goto_0

    :cond_1
    const v0, 0x7f0b034f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090306

    .line 423
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 425
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v1, 0x7f09040e

    .line 427
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 429
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v1, 0x7f0906a2

    .line 431
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 433
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V
    .locals 9

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v1, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/narvii/master/MyCommunityListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v3, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v3}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    move-result v2

    :goto_1
    if-eqz v0, :cond_2

    .line 440
    iget-object v3, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v0, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    .line 441
    :cond_3
    iget v4, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    iget v5, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 443
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f090229

    .line 444
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v4, :cond_4

    .line 446
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    :cond_4
    const v6, 0x7f010029

    const v7, 0x7f01002b

    const/16 v8, 0x8

    if-eqz v3, :cond_6

    if-eqz v4, :cond_5

    .line 449
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 450
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 452
    :cond_5
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    .line 454
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    .line 455
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 457
    :cond_7
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    const v3, 0x7f09078e

    .line 460
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 461
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    const/16 v5, 0x9

    if-le v2, v5, :cond_8

    const-string v5, "9+"

    goto :goto_5

    :cond_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v4, :cond_9

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_9
    if-lez v2, :cond_b

    if-eqz v4, :cond_a

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_a

    .line 467
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 469
    :cond_a
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_b
    if-eqz v4, :cond_c

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 472
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 474
    :cond_c
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    if-eqz p3, :cond_e

    if-eqz p2, :cond_e

    if-eqz v0, :cond_d

    .line 477
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget p3, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->getReminderRequestTime(I)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/narvii/master/MyCommunityListFragment;->REMINDER_CHECK_DURATION:J

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_e

    .line 478
    :cond_d
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget p3, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->addReminderRequestQueue(I)V

    :cond_e
    if-eqz p2, :cond_f

    .line 482
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    iget p2, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    :cond_f
    return-void
.end method

.method updateRemindersOnScreen(Z)V
    .locals 9

    .line 487
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 489
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/list/DivideColumnAdapter;->getDividedCells(Landroid/view/View;)[Landroid/view/View;

    move-result-object v4

    .line 490
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 491
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/narvii/model/Community;

    if-eqz v8, :cond_0

    .line 492
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/model/Community;

    .line 493
    invoke-virtual {p0, v7, v8, p1}, Lcom/narvii/master/MyCommunityListFragment;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method updateThemeProgressInCell(Landroid/view/View;Lcom/narvii/model/Community;)V
    .locals 2

    .line 500
    iget-boolean v0, p0, Lcom/narvii/master/MyCommunityListFragment;->DEBUG:Z

    if-eqz v0, :cond_4

    const v0, 0x7f090333

    .line 501
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 502
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->themePackService:Lcom/narvii/theme/ThemePackService;

    iget v1, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getStatus(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p2, 0x5

    if-eq v0, p2, :cond_0

    const-string p2, "!"

    goto :goto_0

    :cond_0
    const-string p2, "R"

    goto :goto_0

    .line 510
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/master/MyCommunityListFragment;->themePackService:Lcom/narvii/theme/ThemePackService;

    iget p2, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, p2}, Lcom/narvii/theme/ThemePackService;->getProgress(I)F

    move-result p2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, "?"

    goto :goto_0

    :cond_3
    const-string p2, "E"

    .line 522
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
