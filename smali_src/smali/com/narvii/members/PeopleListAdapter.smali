.class public Lcom/narvii/members/PeopleListAdapter;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/members/PeopleListAdapter$FounderAdapter;,
        Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;,
        Lcom/narvii/members/PeopleListAdapter$FoundersTitleAdapter;,
        Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;,
        Lcom/narvii/members/PeopleListAdapter$FeaturedTitleAdapter;,
        Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;,
        Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;,
        Lcom/narvii/members/PeopleListAdapter$InviteAdapter;,
        Lcom/narvii/members/PeopleListAdapter$TitleAdapter;,
        Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;,
        Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;,
        Lcom/narvii/members/PeopleListAdapter$SearchAdapter;
    }
.end annotation


# static fields
.field static final SECTION:Lcom/narvii/util/Tag;


# instance fields
.field private allMembersCount:I

.field private ctx:Lcom/narvii/app/NVContext;

.field private instantSearchListener:Lcom/narvii/search/InstantSearchListener;

.field private inviteAdapter:Lcom/narvii/members/PeopleListAdapter$InviteAdapter;

.field private mFeaturedAdapter:Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;

.field private mFeaturedTitleAdapter:Lcom/narvii/members/PeopleListAdapter$FeaturedTitleAdapter;

.field private mFounTitleAdapter:Lcom/narvii/members/PeopleListAdapter$FoundersTitleAdapter;

.field private mFoundAdapter:Lcom/narvii/members/PeopleListAdapter$FounderAdapter;

.field private mLeaderAdapter:Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;

.field private mLeaderTitleAdapter:Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;

.field private searchResultAdaper:Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;

.field private seeAllAdapter:Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "section"

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/members/PeopleListAdapter;->SECTION:Lcom/narvii/util/Tag;

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/members/PeopleListAdapter;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/members/PeopleListAdapter;->allMembersCount:I

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$FounderAdapter;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$FounderAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFoundAdapter:Lcom/narvii/members/PeopleListAdapter$FounderAdapter;

    .line 23
    .line 24
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mLeaderAdapter:Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;

    .line 30
    .line 31
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$FoundersTitleAdapter;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$FoundersTitleAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFounTitleAdapter:Lcom/narvii/members/PeopleListAdapter$FoundersTitleAdapter;

    .line 37
    .line 38
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mLeaderTitleAdapter:Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;

    .line 44
    .line 45
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$FeaturedTitleAdapter;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$FeaturedTitleAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFeaturedTitleAdapter:Lcom/narvii/members/PeopleListAdapter$FeaturedTitleAdapter;

    .line 51
    .line 52
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFeaturedAdapter:Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;

    .line 58
    .line 59
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    .line 63
    .line 64
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->seeAllAdapter:Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;

    .line 65
    .line 66
    if-eqz p2, :cond_0

    .line 67
    .line 68
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$InviteAdapter;

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$InviteAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    .line 72
    .line 73
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->inviteAdapter:Lcom/narvii/members/PeopleListAdapter$InviteAdapter;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    .line 78
    :cond_0
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFeaturedTitleAdapter:Lcom/narvii/members/PeopleListAdapter$FeaturedTitleAdapter;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFeaturedAdapter:Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFounTitleAdapter:Lcom/narvii/members/PeopleListAdapter$FoundersTitleAdapter;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFoundAdapter:Lcom/narvii/members/PeopleListAdapter$FounderAdapter;

    .line 94
    const/4 p2, 0x1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mLeaderTitleAdapter:Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mLeaderAdapter:Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    .line 109
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$TitleAdapter;

    .line 110
    .line 111
    .line 112
    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$TitleAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    .line 117
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;

    .line 118
    .line 119
    .line 120
    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    .line 125
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->seeAllAdapter:Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    .line 130
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;

    .line 131
    .line 132
    .line 133
    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    .line 134
    .line 135
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->searchResultAdaper:Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    .line 140
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 141
    .line 142
    iget-object p2, p0, Lcom/narvii/members/PeopleListAdapter;->searchResultAdaper:Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p2}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 146
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/members/PeopleListAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/members/PeopleListAdapter;->allMembersCount:I

    return p0
.end method

.method static bridge synthetic g(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/members/PeopleListAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/members/PeopleListAdapter;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/members/PeopleListAdapter;->mFeaturedAdapter:Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/members/PeopleListAdapter;->mLeaderAdapter:Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/members/PeopleListAdapter;->seeAllAdapter:Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/narvii/members/PeopleListAdapter;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/members/PeopleListAdapter;->allMembersCount:I

    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public allMembersLimit()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllMembersCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/members/PeopleListAdapter;->allMembersCount:I

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter;->searchResultAdaper:Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;->getCount()I

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_0
    return v1
.end method

.method protected onAllMembersCountFetched(I)V
    .locals 0

    return-void
.end method

.method protected onSeeAllClick()Z
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/members/PeopleListFragment;

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
    const-string v2, "Live Layer"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/narvii/members/PeopleListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 17
    const/4 v0, 0x1

    .line 18
    return v0
.end method

.method public retry()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x2

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2, v1}, Lcom/narvii/list/MergeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter;->searchResultAdaper:Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 26
    :cond_1
    :goto_0
    return-void
.end method
