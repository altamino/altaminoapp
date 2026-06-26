.class public final Lcom/narvii/amino/FeaturedUserRecyclerView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "FeaturedUserRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/amino/FeaturedUserRecyclerView$FeaturedUserHolder;,
        Lcom/narvii/amino/FeaturedUserRecyclerView$AllMembersHolder;,
        Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeaturedUserRecyclerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeaturedUserRecyclerView.kt\ncom/narvii/amino/FeaturedUserRecyclerView\n*L\n1#1,126:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private adapter:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

.field private cid:I

.field private final communityService:Lcom/narvii/community/CommunityService;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 35
    new-instance p2, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    invoke-direct {p2, p0}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;-><init>(Lcom/narvii/amino/FeaturedUserRecyclerView;)V

    iput-object p2, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->adapter:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    .line 36
    iget-object p2, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->adapter:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 37
    new-instance p2, Lcom/narvii/widget/SpaceItemDecoration;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p2, v0}, Lcom/narvii/widget/SpaceItemDecoration;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const/4 p2, 0x0

    .line 38
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 39
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "community"

    .line 40
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "nvContext.getService<Com\u2026nityService>(\"community\")"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/community/CommunityService;

    iput-object p2, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->communityService:Lcom/narvii/community/CommunityService;

    const-string p2, "config"

    .line 41
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "nvContext.getService<ConfigService>(\"config\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/config/ConfigService;

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    iput p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->cid:I

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getAdapter()Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->adapter:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    return-object v0
.end method

.method public final getCid()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->cid:I

    return v0
.end method

.method public final getCommunityService()Lcom/narvii/community/CommunityService;
    .locals 1

    .line 31
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

    .line 28
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->list:Ljava/util/List;

    return-object v0
.end method

.method public final notifyCommunityMemberChanged()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->adapter:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    .line 51
    invoke-virtual {v0}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final setAdapter(Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->adapter:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    return-void
.end method

.method public final setCid(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->cid:I

    return-void
.end method

.method public final setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->list:Ljava/util/List;

    return-void
.end method

.method public final updateFeaturedUserList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->list:Ljava/util/List;

    .line 46
    iget-object p1, p0, Lcom/narvii/amino/FeaturedUserRecyclerView;->adapter:Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
