.class public final Lcom/narvii/amino/FeaturedUserRecyclerView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;,
        Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;,
        Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cid:I

.field private final communityService:Lcom/narvii/community/CommunityService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 17
    .line 18
    new-instance p2, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;-><init>(Lcom/narvii/amino/FeaturedUserRecyclerView;)V

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->adapter:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
    .line 28
    new-instance p2, Lcom/narvii/widget/SpaceItemDecoration;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const/high16 v1, 0x41200000    # 10.0f

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 38
    move-result v0

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, v0}, Lcom/narvii/widget/SpaceItemDecoration;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 45
    const/4 p2, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    const-string p2, "community"

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    const-string v0, "getService(...)"

    .line 61
    .line 62
    .line 63
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    check-cast p2, Lcom/narvii/community/CommunityService;

    .line 66
    .line 67
    iput-object p2, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->communityService:Lcom/narvii/community/CommunityService;

    .line 68
    .line 69
    const-string p2, "config"

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 79
    move-result p1

    .line 80
    .line 81
    iput p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->cid:I

    .line 82
    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->adapter:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    return-object v0
.end method

.method public final getCid()I
    .locals 1

    iget v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->cid:I

    return v0
.end method

.method public final getCommunityService()Lcom/narvii/community/CommunityService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->communityService:Lcom/narvii/community/CommunityService;

    return-object v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->list:Ljava/util/List;

    return-object v0
.end method

.method public final notifyCommunityMemberChanged()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->adapter:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->getItemCount()I

    .line 6
    move-result v1

    .line 7
    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 12
    return-void
.end method

.method public final setAdapter(Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;)V
    .locals 1
    .param p1    # Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->adapter:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    return-void
.end method

.method public final setCid(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->cid:I

    return-void
.end method

.method public final setList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->list:Ljava/util/List;

    return-void
.end method

.method public final updateFeaturedUserList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "list"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->list:Ljava/util/List;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->adapter:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    return-void
.end method
