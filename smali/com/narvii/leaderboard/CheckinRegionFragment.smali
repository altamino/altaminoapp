.class public Lcom/narvii/leaderboard/CheckinRegionFragment;
.super Lcom/narvii/list/NVListFragment;
.source "CheckinRegionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/leaderboard/CheckinRegionFragment$UserAdapter;
    }
.end annotation


# static fields
.field public static final KEY_MAX:Ljava/lang/String; = "max_streak"

.field public static final KEY_MIN:Ljava/lang/String; = "min_streak"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field protected backgroundImageView:Lcom/narvii/widget/NVImageView;

.field private curUId:Ljava/lang/String;

.field private maxStreak:I

.field private minStreak:I

.field private shareActionbarMask:Landroid/view/View;

.field private title:Ljava/lang/String;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/leaderboard/CheckinRegionFragment;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->minStreak:I

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/leaderboard/CheckinRegionFragment;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->maxStreak:I

    return p0
.end method

.method private shareCheckinRegion()V
    .locals 6

    .line 114
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 116
    new-instance v1, Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    invoke-direct {v1, p0}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v2, "community"

    .line 117
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/CommunityService;

    const-string v3, "config"

    .line 118
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 119
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v2

    .line 120
    iget-object v3, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->shareActionbarMask:Landroid/view/View;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    .line 121
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f090678

    new-instance v5, Lcom/narvii/leaderboard/CheckinRegionFragment$1;

    invoke-direct {v5, p0, v0}, Lcom/narvii/leaderboard/CheckinRegionFragment$1;-><init>(Lcom/narvii/leaderboard/CheckinRegionFragment;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->saveLeaderBoardBackGround(Landroid/app/Activity;ILcom/narvii/model/Community;Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;)V

    return-void
.end method

.method private updateView()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->tvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_1

    .line 150
    new-instance v1, Lcom/narvii/leaderboard/LeaderBoardHelper;

    invoke-direct {v1, p0}, Lcom/narvii/leaderboard/LeaderBoardHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v1}, Lcom/narvii/leaderboard/LeaderBoardHelper;->getDynamicThemeBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 171
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 172
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 173
    new-instance v1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 174
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    new-instance p1, Lcom/narvii/leaderboard/CheckinRegionFragment$UserAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/leaderboard/CheckinRegionFragment$UserAdapter;-><init>(Lcom/narvii/leaderboard/CheckinRegionFragment;)V

    invoke-virtual {v1, p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object v1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f100012

    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "min_streak"

    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->minStreak:I

    const-string v1, "max_streak"

    .line 58
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->maxStreak:I

    const-string/jumbo v2, "title"

    .line 59
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->title:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    .line 61
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->minStreak:I

    .line 62
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->maxStreak:I

    .line 63
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->maxStreak:I

    :cond_0
    const-string p1, "account"

    .line 65
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 66
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->curUId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 99
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0fa2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 100
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080309

    .line 101
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 102
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b04b6

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0fa2

    if-ne v0, v1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/narvii/leaderboard/CheckinRegionFragment;->shareCheckinRegion()V

    .line 110
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 163
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->shareActionbarMask:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 156
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    iget v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->minStreak:I

    const-string v1, "min_streak"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    iget v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->minStreak:I

    const-string v1, "max_streak"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090675

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/FullsizeImageView;

    iput-object p2, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    const p2, 0x7f090052

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->shareActionbarMask:Landroid/view/View;

    const p2, 0x7f09022e

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->tvTitle:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result p1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 89
    iget-object p2, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->tvTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 90
    invoke-direct {p0}, Lcom/narvii/leaderboard/CheckinRegionFragment;->updateView()V

    .line 91
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 92
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const v0, 0x30e5e5e5

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method
