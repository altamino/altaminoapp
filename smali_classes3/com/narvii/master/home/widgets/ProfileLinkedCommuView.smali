.class public final Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;
.super Landroid/widget/LinearLayout;
.source "ProfileLinkedCommuView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileLinkedCommuView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileLinkedCommuView.kt\ncom/narvii/master/home/widgets/ProfileLinkedCommuView\n*L\n1#1,91:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private adapter:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

.field private commuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private page:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->commuList:Ljava/util/List;

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b04b3

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    .line 40
    new-instance v0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    const-string v1, "nvContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;-><init>(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->adapter:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    const p1, 0x7f09093e

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/recycleview/NVRecyclerView;

    const-string v0, "recyclerView"

    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->adapter:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 43
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->commuList:Ljava/util/List;

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b04b3

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;-><init>(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->adapter:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    const p1, 0x7f09093e

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/recycleview/NVRecyclerView;

    const-string p2, "recyclerView"

    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->adapter:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 43
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->commuList:Ljava/util/List;

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b04b3

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    const-string p3, "nvContext"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;-><init>(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->adapter:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    const p1, 0x7f09093e

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/recycleview/NVRecyclerView;

    const-string p2, "recyclerView"

    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->adapter:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 43
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static final synthetic access$getCommuList$p(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->commuList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setCommuList$p(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;Ljava/util/List;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->commuList:Ljava/util/List;

    return-void
.end method

.method private final updateViews()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->commuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->adapter:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getPage()Lcom/narvii/app/NVContext;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->page:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final setPage(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->page:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public final updateLinkedCommunities(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->commuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->commuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->updateViews()V

    return-void
.end method
