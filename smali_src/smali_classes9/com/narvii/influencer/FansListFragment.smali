.class public Lcom/narvii/influencer/FansListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/influencer/FansListFragment$FansListAdapter;,
        Lcom/narvii/influencer/FansListFragment$EmptyAdapter;
    }
.end annotation


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field fansListAdapter:Lcom/narvii/influencer/FansListFragment$FansListAdapter;

.field header:Landroid/view/View;

.field private influencer:Lcom/narvii/model/User;

.field private influencerUid:Ljava/lang/String;

.field private isMeThisInfluencer:Z

.field private overlayLayout:Lcom/narvii/list/overlay/OverlayLayout;

.field swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field totalFans:Landroid/widget/TextView;


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

.method static bridge synthetic t(Lcom/narvii/influencer/FansListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/influencer/FansListFragment;->influencerUid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/influencer/FansListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/influencer/FansListFragment;->isMeThisInfluencer:Z

    return p0
.end method

.method private updateHeader()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment;->header:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    const v2, 0x7f0a055b

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/narvii/influencer/FansListFragment;->totalFans:Landroid/widget/TextView;

    .line 22
    .line 23
    sget-object v2, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/narvii/model/User;->getFansCount()I

    .line 29
    move-result v3

    .line 30
    int-to-long v3, v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    const-string v1, ""

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    :goto_0
    const/4 v2, 0x0

    .line 58
    .line 59
    aput-object v1, v0, v2

    .line 60
    .line 61
    .line 62
    const v1, 0x7f121112

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->header:Landroid/view/View;

    .line 72
    .line 73
    .line 74
    const v1, 0x7f0a01c8

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->header:Landroid/view/View;

    .line 92
    .line 93
    .line 94
    const v1, 0x7f0a062b

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    const-string v1, "config"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 107
    .line 108
    const-string v3, "themePack"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    check-cast v3, Lcom/narvii/theme/ThemePackService;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 118
    move-result v1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v1}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    .line 122
    move-result v1

    .line 123
    .line 124
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 125
    .line 126
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 127
    .line 128
    .line 129
    const v5, 0x66ffffff

    .line 130
    and-int/2addr v5, v1

    .line 131
    .line 132
    .line 133
    const v6, -0x33000001    # -1.3421772E8f

    .line 134
    and-int/2addr v1, v6

    .line 135
    .line 136
    .line 137
    filled-new-array {v5, v1}, [I

    .line 138
    move-result-object v1

    .line 139
    .line 140
    .line 141
    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_1
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/influencer/FansListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/influencer/FansListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/influencer/FansListFragment;->updateHeader()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0d022e

    .line 14
    .line 15
    .line 16
    filled-new-array {v1}, [I

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;-><init>(Lcom/narvii/influencer/FansListFragment;)V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment;->fansListAdapter:Lcom/narvii/influencer/FansListFragment$FansListAdapter;

    .line 31
    const/4 v1, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/influencer/FansListFragment$EmptyAdapter;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0, p0}, Lcom/narvii/influencer/FansListFragment$EmptyAdapter;-><init>(Lcom/narvii/influencer/FansListFragment;Lcom/narvii/app/NVContext;)V

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment;->fansListAdapter:Lcom/narvii/influencer/FansListFragment$FansListAdapter;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/narvii/influencer/FansListFragment$EmptyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a055c

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    const-class p1, Lcom/narvii/user/profile/UserProfileFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string v0, "id"

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment;->influencerUid:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-static {p0, p1}, Lcom/narvii/influencer/FansListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 36
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

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
    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    const-class v0, Lcom/narvii/model/User;

    .line 16
    .line 17
    const-string v1, "user"

    .line 18
    .line 19
    const-string v2, "id"

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    iput-object v2, p0, Lcom/narvii/influencer/FansListFragment;->influencerUid:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/model/User;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    iput-object v2, p0, Lcom/narvii/influencer/FansListFragment;->influencerUid:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/model/User;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    .line 59
    .line 60
    :goto_0
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment;->influencerUid:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 71
    .line 72
    iput-boolean v0, p0, Lcom/narvii/influencer/FansListFragment;->isMeThisInfluencer:Z

    .line 73
    .line 74
    new-instance v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 78
    .line 79
    new-instance v1, Landroid/os/Bundle;

    .line 80
    .line 81
    .line 82
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 83
    .line 84
    const-string v2, "Fans List"

    .line 85
    .line 86
    const-string v3, "Source"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    const-string v2, "chatInvite"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 110
    .line 111
    if-nez p1, :cond_1

    .line 112
    .line 113
    const-string p1, "statistics"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 120
    .line 121
    const-string v0, "Fans List Page Opened"

    .line 122
    .line 123
    .line 124
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    const-string v0, "Fans List Page Opened Total"

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 139
    :cond_1
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
    .locals 2

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02d0

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p2

    .line 9
    move-object p3, p2

    .line 10
    .line 11
    check-cast p3, Landroid/view/ViewGroup;

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0d0721

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    return-object p2
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
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromFanClub(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Lcom/narvii/share/ShareDialog;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->fansListAdapter:Lcom/narvii/influencer/FansListFragment$FansListAdapter;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/influencer/FansListFragment$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/influencer/FansListFragment$1;-><init>(Lcom/narvii/influencer/FansListFragment;)V

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 12
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
    const-string v0, "id"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment;->influencerUid:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "user"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0ab1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/list/overlay/OverlayLayout;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/influencer/FansListFragment;->overlayLayout:Lcom/narvii/list/overlay/OverlayLayout;

    .line 15
    const/4 p2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setEmptyView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 22
    move-result p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 26
    move-result v0

    .line 27
    add-int/2addr p2, v0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->overlayLayout:Lcom/narvii/list/overlay/OverlayLayout;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    const v2, 0x7f0701ac

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    move-result v1

    .line 41
    .line 42
    .line 43
    const v2, 0x7f0d022d

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->overlayLayout:Lcom/narvii/list/overlay/OverlayLayout;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/influencer/FansListFragment;->overlayLayout:Lcom/narvii/list/overlay/OverlayLayout;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 63
    .line 64
    .line 65
    const p2, 0x7f0a055c

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    iput-object p2, p0, Lcom/narvii/influencer/FansListFragment;->header:Landroid/view/View;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/narvii/influencer/FansListFragment;->updateHeader()V

    .line 78
    .line 79
    .line 80
    const p2, 0x7f0a0e12

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    check-cast p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/narvii/influencer/FansListFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 89
    const/4 p2, 0x0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/influencer/FansListFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTarget(Lcom/narvii/widget/NVListView;)V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/influencer/FansListFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 109
    .line 110
    const-string p1, "config"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 126
    move-result p1

    .line 127
    .line 128
    .line 129
    filled-new-array {p1}, [I

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 137
    move-result p1

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 141
    move-result v0

    .line 142
    add-int/2addr p1, v0

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    .line 149
    const v1, 0x7f0704f8

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 153
    move-result v0

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->externalOffset()I

    .line 157
    move-result v1

    .line 158
    add-int/2addr v0, v1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    .line 165
    const v2, 0x7f0704f7

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 169
    move-result v1

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->externalOffset()I

    .line 173
    move-result v2

    .line 174
    add-int/2addr v1, v2

    .line 175
    .line 176
    iget-object v2, p0, Lcom/narvii/influencer/FansListFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 177
    add-int/2addr v0, p1

    .line 178
    add-int/2addr p1, v1

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, p2, v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 182
    return-void
.end method
