.class public Lcom/narvii/members/PeopleListAdapter;
.super Lcom/narvii/list/MergeAdapter;
.source "PeopleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;,
        Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;,
        Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;,
        Lcom/narvii/members/PeopleListAdapter$TitleAdapter;,
        Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;,
        Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;,
        Lcom/narvii/members/PeopleListAdapter$FounderAdapter;,
        Lcom/narvii/members/PeopleListAdapter$FoundersTitleAdapter;,
        Lcom/narvii/members/PeopleListAdapter$SearchAdapter;,
        Lcom/narvii/members/PeopleListAdapter$InviteAdapter;,
        Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;,
        Lcom/narvii/members/PeopleListAdapter$FeaturedTitleAdapter;
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

    .line 35
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "section"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/members/PeopleListAdapter;->SECTION:Lcom/narvii/util/Tag;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Z)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 47
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    iput-object v0, p0, Lcom/narvii/members/PeopleListAdapter;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/narvii/members/PeopleListAdapter;->allMembersCount:I

    .line 55
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 57
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$FounderAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$FounderAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFoundAdapter:Lcom/narvii/members/PeopleListAdapter$FounderAdapter;

    .line 58
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mLeaderAdapter:Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;

    .line 59
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$FoundersTitleAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$FoundersTitleAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFounTitleAdapter:Lcom/narvii/members/PeopleListAdapter$FoundersTitleAdapter;

    .line 60
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mLeaderTitleAdapter:Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;

    .line 61
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$FeaturedTitleAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$FeaturedTitleAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFeaturedTitleAdapter:Lcom/narvii/members/PeopleListAdapter$FeaturedTitleAdapter;

    .line 62
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFeaturedAdapter:Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;

    .line 63
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->seeAllAdapter:Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;

    if-eqz p2, :cond_0

    .line 66
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$InviteAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$InviteAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->inviteAdapter:Lcom/narvii/members/PeopleListAdapter$InviteAdapter;

    .line 67
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->inviteAdapter:Lcom/narvii/members/PeopleListAdapter$InviteAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFeaturedTitleAdapter:Lcom/narvii/members/PeopleListAdapter$FeaturedTitleAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFeaturedAdapter:Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFounTitleAdapter:Lcom/narvii/members/PeopleListAdapter$FoundersTitleAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mFoundAdapter:Lcom/narvii/members/PeopleListAdapter$FounderAdapter;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 74
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mLeaderTitleAdapter:Lcom/narvii/members/PeopleListAdapter$LeadersTitleAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->mLeaderAdapter:Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$TitleAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$TitleAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->seeAllAdapter:Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    new-instance p1, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;-><init>(Lcom/narvii/members/PeopleListAdapter;)V

    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->searchResultAdaper:Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;

    .line 80
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->searchResultAdaper:Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    iget-object p2, p0, Lcom/narvii/members/PeopleListAdapter;->searchResultAdaper:Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;

    invoke-virtual {p1, p2}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/members/PeopleListAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/members/PeopleListAdapter;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/members/PeopleListAdapter;->mFeaturedAdapter:Lcom/narvii/members/PeopleListAdapter$FeaturedAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/members/PeopleListAdapter;->mLeaderAdapter:Lcom/narvii/members/PeopleListAdapter$LeaderAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/members/PeopleListAdapter;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/narvii/members/PeopleListAdapter;->allMembersCount:I

    return p0
.end method

.method static synthetic access$402(Lcom/narvii/members/PeopleListAdapter;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/narvii/members/PeopleListAdapter;->allMembersCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/members/PeopleListAdapter;->seeAllAdapter:Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;

    return-object p0
.end method


# virtual methods
.method public allMembersLimit()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllMembersCount()I
    .locals 1

    .line 112
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

    .line 86
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter;->searchResultAdaper:Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected onAllMembersCountFetched(I)V
    .locals 0

    return-void
.end method

.method protected onSeeAllClick()Z
    .locals 3

    .line 126
    const-class v0, Lcom/narvii/members/PeopleListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Source"

    const-string v2, "Live Layer"

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public retry()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0, v2, v1}, Lcom/narvii/list/MergeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter;->searchResultAdaper:Lcom/narvii/members/PeopleListAdapter$SearchResultAdapter;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method
