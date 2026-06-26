.class public final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;
.super Landroid/widget/FrameLayout;
.source "SceneTemplateMaterialSortLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;,
        Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;,
        Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemAdapter;,
        Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;,
        Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;,
        Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateMaterialSortLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateMaterialSortLayout.kt\ncom/narvii/scene/template/view/SceneTemplateMaterialSortLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,280:1\n300#2,7:281\n*E\n*S KotlinDebug\n*F\n+ 1 SceneTemplateMaterialSortLayout.kt\ncom/narvii/scene/template/view/SceneTemplateMaterialSortLayout\n*L\n135#1,7:281\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private backgroundRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final holderMap$delegate:Lkotlin/Lazy;

.field private itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private onRemoveItemListener:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;

.field private onViewClickListener:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private scrollOffset:I

.field private totalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "holderMap"

    const-string v4, "getHolderMap()Ljava/util/Map;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    sget-object p2, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$holderMap$2;->INSTANCE:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$holderMap$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->holderMap$delegate:Lkotlin/Lazy;

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/narvii/mediaeditor/R$layout;->view_scene_template_materail_sort:I

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget p2, Lcom/narvii/mediaeditor/R$id;->background_recycler_view:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.background_recycler_view)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->backgroundRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 42
    sget p2, Lcom/narvii/mediaeditor/R$id;->recycler_view:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.recycler_view)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 44
    iget-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->backgroundRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 45
    iget-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->backgroundRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemAdapter;

    invoke-direct {p3, p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemAdapter;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 47
    iget-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p3, p1, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 48
    iget-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;

    invoke-direct {p3, p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 49
    iget-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$1;

    invoke-direct {p3, p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$1;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 56
    iget-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$2;

    invoke-direct {p3, p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$2;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 65
    new-instance p2, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance p3, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;

    const/16 v0, 0xc

    invoke-direct {p3, p0, p1, v0, v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/content/Context;II)V

    invoke-direct {p2, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 97
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$deleteItem(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->deleteItem(I)V

    return-void
.end method

.method public static final synthetic access$getBackgroundRecyclerView$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->backgroundRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic access$getItemTouchHelper$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object p0
.end method

.method public static final synthetic access$getRecyclerView$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic access$getScrollOffset$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->scrollOffset:I

    return p0
.end method

.method public static final synthetic access$getTotalCount$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->totalCount:I

    return p0
.end method

.method public static final synthetic access$setBackgroundRecyclerView$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->backgroundRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public static final synthetic access$setItemTouchHelper$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-void
.end method

.method public static final synthetic access$setRecyclerView$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public static final synthetic access$setScrollOffset$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->scrollOffset:I

    return-void
.end method

.method public static final synthetic access$setTotalCount$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->totalCount:I

    return-void
.end method

.method private final deleteItem(I)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 146
    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->onRemoveItemListener:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;->onRemove(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 148
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iget v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->totalCount:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    if-nez p1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->backgroundRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_2
    return-void
.end method

.method private final updateView()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 131
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->backgroundRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final addData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 1

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-direct {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateView()V

    return-void
.end method

.method public final deleteEntry(Ljava/lang/String;)V
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 283
    check-cast v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 135
    invoke-virtual {v2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v3, :cond_2

    .line 137
    invoke-direct {p0, v1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->deleteItem(I)V

    :cond_2
    return-void
.end method

.method public final getDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    return-object v0
.end method

.method public final getHolderMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->holderMap$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final getOnRemoveItemListener()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->onRemoveItemListener:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;

    return-object v0
.end method

.method public final getOnViewClickListener()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->onViewClickListener:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 101
    iget v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->totalCount:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42820000    # 65.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    mul-int v0, v0, v1

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 110
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    invoke-direct {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateView()V

    return-void
.end method

.method public final setOnRemoveItemListener(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->onRemoveItemListener:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;

    return-void
.end method

.method public final setOnViewClickListener(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->onViewClickListener:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;

    return-void
.end method

.method public final setTotalCount(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->totalCount:I

    .line 115
    invoke-direct {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateView()V

    return-void
.end method

.method public final updateData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 5

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    if-eqz v1, :cond_5

    .line 163
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {v1, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->copy(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getHolderMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_5

    .line 168
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    invoke-virtual {v0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->updateStates(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    :cond_5
    return-void
.end method

.method public final updateData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;Z)V
    .locals 1

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    if-eqz p2, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateView()V

    :cond_0
    return-void
.end method
