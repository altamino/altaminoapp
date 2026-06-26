.class public final Lcom/narvii/widget/InfluencerRecyclerView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "InfluencerRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;,
        Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;,
        Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private adapter:Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;

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

.field private onUserClickListener:Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 30
    new-instance p1, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;-><init>(Lcom/narvii/widget/InfluencerRecyclerView;)V

    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView;->adapter:Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;

    .line 31
    iget-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView;->adapter:Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 32
    new-instance p1, Lcom/narvii/widget/SpaceItemDecoration;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/SpaceItemDecoration;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/InfluencerRecyclerView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getAdapter()Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView;->adapter:Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;

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

    .line 25
    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getOnUserClickListener()Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView;->onUserClickListener:Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;

    return-object v0
.end method

.method public final setAdapter(Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView;->adapter:Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;

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

    .line 25
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView;->list:Ljava/util/List;

    return-void
.end method

.method public final setOnUserClickListener(Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView;->onUserClickListener:Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;

    return-void
.end method

.method public final updateInfluencerList(Ljava/util/List;)V
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

    .line 36
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView;->list:Ljava/util/List;

    .line 37
    iget-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView;->adapter:Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
