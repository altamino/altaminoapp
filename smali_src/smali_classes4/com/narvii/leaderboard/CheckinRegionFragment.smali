.class public Lcom/narvii/leaderboard/CheckinRegionFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method private shareCheckinRegion()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    const-string v2, "community"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 26
    .line 27
    const-string v3, "config"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 37
    move-result v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    iget-object v3, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->shareActionbarMask:Landroid/view/View;

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    const/4 v4, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    new-instance v4, Lcom/narvii/leaderboard/CheckinRegionFragment$1;

    .line 56
    .line 57
    .line 58
    invoke-direct {v4, p0, v0}, Lcom/narvii/leaderboard/CheckinRegionFragment$1;-><init>(Lcom/narvii/leaderboard/CheckinRegionFragment;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a07fe

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->saveLeaderBoardBackGround(Landroid/app/Activity;ILcom/narvii/model/Community;Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;)V

    .line 65
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/leaderboard/CheckinRegionFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->maxStreak:I

    return p0
.end method

.method static bridge synthetic u(Lcom/narvii/leaderboard/CheckinRegionFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->minStreak:I

    return p0
.end method

.method private updateView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->title:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->tvTitle:Landroid/widget/TextView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->title:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v1, Lcom/narvii/leaderboard/LeaderBoardHelper;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/narvii/leaderboard/LeaderBoardHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/leaderboard/LeaderBoardHelper;->getDynamicThemeBg()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    :cond_1
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    new-array v1, v0, [Landroid/view/View;

    .line 9
    .line 10
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    aput-object v2, v1, v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/list/MergeAdapter;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    .line 33
    new-instance p1, Lcom/narvii/leaderboard/CheckinRegionFragment$UserAdapter;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p0}, Lcom/narvii/leaderboard/CheckinRegionFragment$UserAdapter;-><init>(Lcom/narvii/leaderboard/CheckinRegionFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 40
    return-object v1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f130013

    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "min_streak"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 9
    move-result v1

    .line 10
    .line 11
    iput v1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->minStreak:I

    .line 12
    .line 13
    const-string v1, "max_streak"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 17
    move-result v2

    .line 18
    .line 19
    iput v2, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->maxStreak:I

    .line 20
    .line 21
    const-string v2, "title"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    iput-object v3, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->title:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 34
    move-result v0

    .line 35
    .line 36
    iput v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->minStreak:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 40
    move-result v0

    .line 41
    .line 42
    iput v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->maxStreak:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 46
    move-result p1

    .line 47
    .line 48
    iput p1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->maxStreak:I

    .line 49
    .line 50
    :cond_0
    const-string p1, "account"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->curUId:Ljava/lang/String;

    .line 67
    const/4 p1, 0x1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 71
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f1210ad

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    const p2, 0x7f080413

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d04e3

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f1210ad

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/leaderboard/CheckinRegionFragment;->shareCheckinRegion()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->shareActionbarMask:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_0
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
    const-string v0, "min_streak"

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->minStreak:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    const-string v0, "max_streak"

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->minStreak:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a07fb

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/widget/FullsizeImageView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const p2, 0x7f0a0083

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->shareActionbarMask:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    const p2, 0x7f0a02e8

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->tvTitle:Landroid/widget/TextView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 38
    move-result p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    const/high16 v0, 0x41400000    # 12.0f

    .line 45
    .line 46
    .line 47
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 48
    move-result p2

    .line 49
    float-to-int p2, p2

    .line 50
    add-int/2addr p1, p2

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/leaderboard/CheckinRegionFragment;->tvTitle:Landroid/widget/TextView;

    .line 53
    const/4 v0, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0, p1, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/narvii/leaderboard/CheckinRegionFragment;->updateView()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 66
    .line 67
    .line 68
    const v0, 0x30e5e5e5

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    .line 81
    .line 82
    .line 83
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 84
    move-result p2

    .line 85
    float-to-int p2, p2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 89
    return-void
.end method
