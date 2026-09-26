.class public Lcom/narvii/master/MyCommunityListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/master/MasterAppearanceChangedListener;
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;,
        Lcom/narvii/master/MyCommunityListFragment$Adapter;,
        Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;,
        Lcom/narvii/master/MyCommunityListFragment$CommunityTabTitleAdapter;,
        Lcom/narvii/master/MyCommunityListFragment$LoginHintAdapter;,
        Lcom/narvii/master/MyCommunityListFragment$NoAminosJoinedHintAdapter;,
        Lcom/narvii/master/MyCommunityListFragment$CreateAminoAdapter;,
        Lcom/narvii/master/MyCommunityListFragment$SuggestedCommunityHeader;,
        Lcom/narvii/master/MyCommunityListFragment$BottomAdapter;,
        Lcom/narvii/master/MyCommunityListFragment$MoreCommunitiesAdapter;
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

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    .line 4
    .line 5
    const-wide/32 v1, 0xea60

    .line 6
    .line 7
    .line 8
    const-wide/32 v3, 0x493e0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    move-wide v5, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-wide v5, v3

    .line 14
    .line 15
    :goto_0
    sput-wide v5, Lcom/narvii/master/MyCommunityListFragment;->REMINDER_CHECK_DURATION:J

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    move-wide v5, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-wide v5, v3

    .line 21
    .line 22
    :goto_1
    sput-wide v5, Lcom/narvii/master/MyCommunityListFragment;->REFRESH_COMMUNITY_LIST_DURATION:J

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-wide v1, v3

    .line 27
    .line 28
    :goto_2
    sput-wide v1, Lcom/narvii/master/MyCommunityListFragment;->REFRESH_SUGGEST_LIST_DURATION:J

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/master/MyCommunityListFragment;->DEBUG:Z

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/master/MyCommunityListFragment$2;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/narvii/master/MyCommunityListFragment$2;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 15
    return-void
.end method

.method private gotoExplorerPage(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToExplore()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->masterHelper:Lcom/narvii/master/MasterHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/master/MasterHelper;->exploreCommunities(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method private isSingleFragment()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "__single"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private leaveCommunity(Lcom/narvii/model/Community;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/MasterLeaveCommunityHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/master/MasterLeaveCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/narvii/community/LeaveCommunityHelper;->leaveCommunity(Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)V

    .line 10
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

.method static bridge synthetic t(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/MyCommunityListFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/master/MasterHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/MyCommunityListFragment;->masterHelper:Lcom/narvii/master/MasterHelper;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/MyCommunityListFragment;->suggestCommunityAdapter:Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/master/MyCommunityListFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MyCommunityListFragment;->gotoExplorerPage(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/model/Community;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MyCommunityListFragment;->leaveCommunity(Lcom/narvii/model/Community;)V

    return-void
.end method


# virtual methods
.method cancelLaunch()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->launchHelper:Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->cancel()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 17
    const/4 v2, 0x4

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    iput-object v1, p0, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 23
    .line 24
    :cond_0
    iput-object v1, p0, Lcom/narvii/master/MyCommunityListFragment;->launchCommunity:Lcom/narvii/model/Community;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/narvii/master/MyCommunityListFragment;->launchImageView:Lcom/narvii/widget/NVImageView;

    .line 27
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 13

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/master/MyCommunityListFragment$Adapter;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->suggestCommunityAdapter:Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const/high16 v1, 0x40e00000    # 7.0f

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 26
    move-result v0

    .line 27
    float-to-int v2, v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const/high16 v6, 0x40a00000    # 5.0f

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 37
    move-result v0

    .line 38
    float-to-int v3, v0

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    move-object v0, p1

    .line 42
    move-object v1, p0

    .line 43
    .line 44
    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 46
    const/4 v0, 0x1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/narvii/list/DivideColumnAdapter;->setSupportLongClick(Z)V

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 52
    const/4 v2, 0x3

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 56
    .line 57
    new-instance v1, Lcom/narvii/adapter/MarginAdapter;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    .line 64
    const v4, 0x7f070412

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 68
    move-result v3

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, p0, v3}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 72
    .line 73
    new-instance v3, Lcom/narvii/list/DivideColumnAdapter;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    .line 80
    invoke-static {v4, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 81
    move-result v4

    .line 82
    float-to-int v9, v4

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    .line 89
    invoke-static {v4, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 90
    move-result v4

    .line 91
    float-to-int v10, v4

    .line 92
    const/4 v11, 0x0

    .line 93
    const/4 v12, 0x0

    .line 94
    move-object v7, v3

    .line 95
    move-object v8, p0

    .line 96
    .line 97
    .line 98
    invoke-direct/range {v7 .. v12}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 99
    .line 100
    iget-object v4, p0, Lcom/narvii/master/MyCommunityListFragment;->suggestCommunityAdapter:Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 104
    .line 105
    new-instance v2, Lcom/narvii/list/MergeAdapter;

    .line 106
    .line 107
    .line 108
    invoke-direct {v2, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0}, Lcom/narvii/master/MyCommunityListFragment;->isSingleFragment()Z

    .line 112
    move-result v4

    .line 113
    .line 114
    if-nez v4, :cond_0

    .line 115
    .line 116
    new-instance v4, Lcom/narvii/master/MyCommunityListFragment$CommunityTabTitleAdapter;

    .line 117
    .line 118
    .line 119
    invoke-direct {v4, p0}, Lcom/narvii/master/MyCommunityListFragment$CommunityTabTitleAdapter;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v4}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    .line 124
    .line 125
    :cond_0
    invoke-virtual {v2, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 129
    .line 130
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$LoginHintAdapter;

    .line 131
    .line 132
    .line 133
    invoke-direct {p1, p0}, Lcom/narvii/master/MyCommunityListFragment$LoginHintAdapter;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    .line 138
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$NoAminosJoinedHintAdapter;

    .line 139
    .line 140
    .line 141
    invoke-direct {p1, p0}, Lcom/narvii/master/MyCommunityListFragment$NoAminosJoinedHintAdapter;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    .line 146
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$CreateAminoAdapter;

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, p0}, Lcom/narvii/master/MyCommunityListFragment$CreateAminoAdapter;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    .line 154
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$SuggestedCommunityHeader;

    .line 155
    .line 156
    .line 157
    invoke-direct {p1, p0}, Lcom/narvii/master/MyCommunityListFragment$SuggestedCommunityHeader;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    .line 165
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$BottomAdapter;

    .line 166
    .line 167
    .line 168
    invoke-direct {p1, p0}, Lcom/narvii/master/MyCommunityListFragment$BottomAdapter;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 179
    return-object v2
.end method

.method createShortcut(Lcom/narvii/model/Community;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "imageLoader"

    .line 4
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/image/NVImageLoader;

    .line 5
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

    .line 6
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/BaseNavigator;

    .line 7
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

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 10
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v5, 0x90

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 11
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 12
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 13
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 14
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v4, v4

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const v9, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v9

    .line 15
    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v4, v4, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 16
    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 17
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v4, v3, v3, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 18
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 19
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v9, -0x1000000

    .line 20
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-virtual {v6, p2, v4, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v5

    goto :goto_0

    :catch_0
    move-object p2, v0

    :cond_0
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x19

    if-lt v4, v5, :cond_6

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/narvii/community/e;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/narvii/community/s;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v5

    .line 24
    new-instance v6, Ljava/util/LinkedList;

    invoke-static {v5}, Lcom/narvii/community/g;->a(Landroid/content/pm/ShortcutManager;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 25
    new-instance v7, Lcom/narvii/master/MyCommunityListFragment$4;

    invoke-direct {v7, p0}, Lcom/narvii/master/MyCommunityListFragment$4;-><init>(Lcom/narvii/master/MyCommunityListFragment;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 26
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 27
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 28
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/narvii/community/k;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object v8

    .line 29
    invoke-static {v8}, Landroidx/core/content/pm/c;->a(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    .line 30
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/narvii/community/h;->a(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V

    .line 31
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 32
    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_3

    .line 33
    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/narvii/community/k;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    .line 34
    invoke-static {v7}, Landroidx/core/content/pm/c;->a(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/narvii/community/h;->a(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V

    goto :goto_1

    .line 35
    :cond_3
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/narvii/community/k;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object v8

    .line 36
    invoke-static {v8}, Landroidx/core/content/pm/e;->a(Landroid/content/pm/ShortcutInfo;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    .line 37
    :cond_4
    invoke-static {}, Lcom/narvii/community/j;->a()V

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/narvii/community/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    iget-object v6, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 38
    invoke-static {v4, v6}, Lcom/narvii/community/l;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    add-int/2addr v7, v2

    .line 39
    invoke-static {v4, v7}, Lcom/narvii/community/m;->a(Landroid/content/pm/ShortcutInfo$Builder;I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    iget-object v6, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 40
    invoke-static {v4, v6}, Lcom/narvii/community/n;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    if-eqz p2, :cond_5

    .line 41
    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/narvii/community/o;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 42
    :cond_5
    invoke-static {v4, v1}, Lcom/narvii/community/p;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 43
    invoke-static {v4}, Lcom/narvii/community/q;->a(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    new-array v2, v2, [Landroid/content/pm/ShortcutInfo;

    aput-object v4, v2, v3

    .line 44
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/narvii/community/r;->a(Landroid/content/pm/ShortcutManager;Ljava/util/List;)Z

    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v2, v4, :cond_8

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.shortcut.INTENT"

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 47
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_7

    .line 48
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 49
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p1

    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 50
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    const-string p1, "android.intent.extra.shortcut.ICON"

    .line 51
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_3
    const-string p1, "duplicate"

    .line 52
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 53
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    .line 55
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/narvii/community/e;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/community/s;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v3

    .line 57
    invoke-static {}, Lcom/narvii/community/j;->a()V

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/narvii/community/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    iget-object v4, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 58
    invoke-static {v2, v4}, Lcom/narvii/community/l;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 59
    invoke-static {v2, p1}, Lcom/narvii/community/n;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    if-eqz p2, :cond_9

    .line 60
    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/community/o;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 61
    :cond_9
    invoke-static {p1, v1}, Lcom/narvii/community/p;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 62
    invoke-static {p1}, Lcom/narvii/community/q;->a(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 63
    invoke-static {v3, p1, v0}, Lcom/narvii/community/f;->a(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    :goto_4
    return-void
.end method

.method protected ensureLoginToast()V
    .locals 0

    return-void
.end method

.method protected externalOffset()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0702f4

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result v0

    .line 16
    .line 17
    mul-int/lit8 v0, v0, -0x1

    .line 18
    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "communities_list"

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 4
    return-void
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
    const v0, 0x7f0a03d9

    .line 8
    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0546

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a082d

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v0, "ndc://login"

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const-string v1, "android.intent.action.VIEW"

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    .line 35
    sget-object v0, Lcom/narvii/account/LoginActivity$PromptType;->Button:Lcom/narvii/account/LoginActivity$PromptType;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-string v1, "promptType"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p1}, Lcom/narvii/master/MyCommunityListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    const-string p1, "Zero State Button"

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/narvii/master/MyCommunityListFragment;->gotoExplorerPage(Ljava/lang/String;)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->masterHelper:Lcom/narvii/master/MasterHelper;

    .line 57
    const/4 v0, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/narvii/master/MasterHelper;->createAmino(Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/master/MasterHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->masterHelper:Lcom/narvii/master/MasterHelper;

    .line 11
    .line 12
    const-string p1, "myCommunityList"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 24
    .line 25
    const-string p1, "chat"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/chat/core/ChatService;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Lcom/narvii/chat/core/ChatService;->addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 37
    .line 38
    const-string/jumbo p1, "themePack"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/theme/ThemePackService;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->themePackService:Lcom/narvii/theme/ThemePackService;

    .line 47
    .line 48
    new-instance p1, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p0, p0}, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;-><init>(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/app/NVContext;)V

    .line 52
    .line 53
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->launchHelper:Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;

    .line 54
    .line 55
    const-string p1, "account"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 64
    .line 65
    iget-boolean p1, p0, Lcom/narvii/master/MyCommunityListFragment;->DEBUG:Z

    .line 66
    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 70
    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    .line 72
    .line 73
    const-string v1, "com.narvii.action.THEME_PACK_CHANGED"

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 82
    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    .line 84
    .line 85
    const-string v1, "com.narvii.action.THEME_PACK_PROGRESS"

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 92
    .line 93
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 94
    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    .line 96
    .line 97
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 104
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/narvii/chat/core/ChatService;->removeGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 19
    return-void
.end method

.method protected onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onErrorRetry()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    .line 9
    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    :cond_0
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-boolean p1, p2, Lcom/narvii/community/MyCommunityListResponse;->showStoreBadge:Z

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    instance-of p1, p1, Lcom/narvii/master/home/MyAminosFragment;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/master/home/MyAminosFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/master/home/MyAminosFragment;->setStoreBadged()V

    .line 31
    :cond_1
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method

.method public onMasterAppearanceChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/master/MyCommunityListFragment;->updateEmptyViewForList()V

    .line 26
    :cond_0
    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0
    .param p2    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/master/MyCommunityListFragment;->cancelLaunch()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->suggestCommunityAdapter:Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->setFragmentResume(Z)V

    .line 15
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onRefresh(Lcom/narvii/util/Callback;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/master/MyCommunityListFragment$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/narvii/master/MyCommunityListFragment$1;-><init>(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/util/Callback;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest(Lcom/narvii/util/Callback;)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->getNdcIds()Ljava/util/HashSet;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->getNdcIds()Ljava/util/HashSet;

    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(Ljava/util/Set;Z)V

    .line 46
    :cond_0
    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/master/MyCommunityListFragment;->updateRemindersOnScreen(Z)V

    .line 11
    :cond_0
    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

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
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/master/MyCommunityListFragment$Adapter;->onResume()V

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/master/MyCommunityListFragment;->updateRemindersOnScreen(Z)V

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/master/MyCommunityListFragment;->suggestCommunityAdapter:Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->setFragmentResume(Z)V

    .line 22
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/narvii/master/MasterTabFragment;->addMasterThemeChangedListener(Lcom/narvii/master/MasterAppearanceChangedListener;)V

    .line 21
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/narvii/master/MasterTabFragment;->removeMasterThemeChangeListener(Lcom/narvii/master/MasterAppearanceChangedListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 21
    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->suggestCommunityAdapter:Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->notifyDataChange()V

    .line 6
    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/master/MyCommunityListFragment;->updateEmptyViewForList()V

    .line 7
    return-void
.end method

.method reorder()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/master/SortCommunityFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/narvii/master/MyCommunityListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 10
    return-void
.end method

.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method updateEmptyViewForList()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_0
    const-string v0, "account"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0d0388

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    const v0, 0x7f0d0389

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0a03d9

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    const v1, 0x7f0a0546

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    const v1, 0x7f0a082d

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_4
    :goto_1
    return-void
.end method

.method updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V
    .locals 9

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 7
    .line 8
    iget v1, p2, Lcom/narvii/model/Community;->id:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 12
    move-result-object v0

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    move v2, v1

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_1
    iget-object v2, p0, Lcom/narvii/master/MyCommunityListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 20
    .line 21
    iget v3, p2, Lcom/narvii/model/Community;->id:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    .line 25
    move-result v2

    .line 26
    .line 27
    :goto_1
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v3, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    .line 30
    .line 31
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    if-ne v3, v4, :cond_2

    .line 34
    const/4 v3, 0x1

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v3, v1

    .line 37
    .line 38
    :goto_2
    if-nez v0, :cond_3

    .line 39
    move v4, v1

    .line 40
    goto :goto_3

    .line 41
    .line 42
    :cond_3
    iget v4, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 43
    .line 44
    iget v5, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 45
    add-int/2addr v4, v5

    .line 46
    add-int/2addr v4, v2

    .line 47
    .line 48
    .line 49
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-static {v2, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    const v5, 0x7f0a02e3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 67
    .line 68
    :cond_4
    const/16 v6, 0x8

    .line 69
    .line 70
    .line 71
    const v7, 0x7f010039

    .line 72
    .line 73
    .line 74
    const v8, 0x7f010037

    .line 75
    .line 76
    if-eqz v3, :cond_6

    .line 77
    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 82
    move-result v3

    .line 83
    .line 84
    if-eqz v3, :cond_5

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    .line 97
    .line 98
    :cond_5
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    goto :goto_4

    .line 100
    .line 101
    :cond_6
    if-eqz v2, :cond_7

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 105
    move-result v3

    .line 106
    .line 107
    if-nez v3, :cond_7

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 111
    move-result-object v3

    .line 112
    .line 113
    .line 114
    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    .line 120
    .line 121
    :cond_7
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :goto_4
    const v3, 0x7f0a0a29

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object p1

    .line 129
    move-object v3, p1

    .line 130
    .line 131
    check-cast v3, Landroid/widget/TextView;

    .line 132
    .line 133
    const/16 v5, 0x9

    .line 134
    .line 135
    if-le v4, v5, :cond_8

    .line 136
    .line 137
    const-string v5, "9+"

    .line 138
    goto :goto_5

    .line 139
    .line 140
    .line 141
    :cond_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 142
    move-result-object v5

    .line 143
    .line 144
    .line 145
    :goto_5
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    if-nez v2, :cond_9

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 151
    .line 152
    :cond_9
    if-lez v4, :cond_b

    .line 153
    .line 154
    if-eqz v2, :cond_a

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 158
    move-result v2

    .line 159
    .line 160
    if-eqz v2, :cond_a

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    .line 167
    invoke-static {v2, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    .line 173
    .line 174
    :cond_a
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    goto :goto_6

    .line 176
    .line 177
    :cond_b
    if-eqz v2, :cond_c

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 181
    move-result v1

    .line 182
    .line 183
    if-nez v1, :cond_c

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 191
    move-result-object v1

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 195
    .line 196
    .line 197
    :cond_c
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    :goto_6
    if-eqz p3, :cond_e

    .line 200
    .line 201
    if-eqz p2, :cond_e

    .line 202
    .line 203
    if-eqz v0, :cond_d

    .line 204
    .line 205
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 206
    .line 207
    iget p3, p2, Lcom/narvii/model/Community;->id:I

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->getReminderRequestTime(I)J

    .line 211
    move-result-wide v0

    .line 212
    .line 213
    .line 214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 215
    move-result-wide v2

    .line 216
    .line 217
    sget-wide v4, Lcom/narvii/master/MyCommunityListFragment;->REMINDER_CHECK_DURATION:J

    .line 218
    sub-long/2addr v2, v4

    .line 219
    .line 220
    cmp-long p1, v0, v2

    .line 221
    .line 222
    if-gez p1, :cond_e

    .line 223
    .line 224
    :cond_d
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 225
    .line 226
    iget p3, p2, Lcom/narvii/model/Community;->id:I

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->addReminderRequestQueue(I)V

    .line 230
    .line 231
    :cond_e
    if-eqz p2, :cond_f

    .line 232
    .line 233
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 234
    .line 235
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    .line 239
    :cond_f
    return-void
.end method

.method updateRemindersOnScreen(Z)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    .line 12
    :goto_0
    if-ge v3, v1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v4

    .line 17
    .line 18
    .line 19
    invoke-static {v4}, Lcom/narvii/list/DivideColumnAdapter;->getDividedCells(Landroid/view/View;)[Landroid/view/View;

    .line 20
    move-result-object v4

    .line 21
    array-length v5, v4

    .line 22
    move v6, v2

    .line 23
    .line 24
    :goto_1
    if-ge v6, v5, :cond_1

    .line 25
    .line 26
    aget-object v7, v4, v6

    .line 27
    .line 28
    .line 29
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 30
    move-result-object v8

    .line 31
    .line 32
    instance-of v8, v8, Lcom/narvii/model/Community;

    .line 33
    .line 34
    if-eqz v8, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 38
    move-result-object v8

    .line 39
    .line 40
    check-cast v8, Lcom/narvii/model/Community;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v7, v8, p1}, Lcom/narvii/master/MyCommunityListFragment;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    .line 44
    .line 45
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-void
.end method

.method updateThemeProgressInCell(Landroid/view/View;Lcom/narvii/model/Community;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/master/MyCommunityListFragment;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a040c

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment;->themePackService:Lcom/narvii/theme/ThemePackService;

    .line 20
    .line 21
    iget v1, p2, Lcom/narvii/model/Community;->id:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getStatus(I)I

    .line 25
    move-result v0

    .line 26
    const/4 v1, -0x1

    .line 27
    .line 28
    if-eq v0, v1, :cond_3

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    const/4 v1, 0x1

    .line 32
    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    const/4 p2, 0x5

    .line 35
    .line 36
    if-eq v0, p2, :cond_0

    .line 37
    .line 38
    const-string p2, "!"

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    const-string p2, "R"

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/master/MyCommunityListFragment;->themePackService:Lcom/narvii/theme/ThemePackService;

    .line 50
    .line 51
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p2}, Lcom/narvii/theme/ThemePackService;->getProgress(I)F

    .line 55
    move-result p2

    .line 56
    .line 57
    const/high16 v1, 0x42c80000    # 100.0f

    .line 58
    mul-float/2addr p2, v1

    .line 59
    float-to-int p2, p2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p2, "%"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_2
    const-string p2, "?"

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_3
    const-string p2, "E"

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_4
    return-void
.end method
