.class public final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;,
        Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemAdapter;,
        Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;,
        Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;,
        Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;,
        Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateMaterialSortLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateMaterialSortLayout.kt\ncom/narvii/scene/template/view/SceneTemplateMaterialSortLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,304:1\n350#2,7:305\n1#3:312\n*S KotlinDebug\n*F\n+ 1 SceneTemplateMaterialSortLayout.kt\ncom/narvii/scene/template/view/SceneTemplateMaterialSortLayout\n*L\n147#1:305,7\n*E\n"
.end annotation


# instance fields
.field private backgroundRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final holderMap$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onRemoveItemListener:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onViewClickListener:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scrollOffset:I

.field private totalCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$holderMap$2;->INSTANCE:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$holderMap$2;

    .line 5
    invoke-static {p2}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->holderMap$delegate:Lw7/m;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/narvii/mediaeditor/R$layout;->view_scene_template_materail_sort:I

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p2, Lcom/narvii/mediaeditor/R$id;->background_recycler_view:I

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->backgroundRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/narvii/mediaeditor/R$id;->recycler_view:I

    .line 9
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->backgroundRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 11
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->backgroundRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    new-instance p3, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemAdapter;

    invoke-direct {p3, p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemAdapter;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 14
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    new-instance p3, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;

    invoke-direct {p3, p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    new-instance p3, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$1;

    invoke-direct {p3, p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$1;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/narvii/scene/template/view/a;

    invoke-direct {p3, p0}, Lcom/narvii/scene/template/view/a;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 18
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance p3, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;

    invoke-direct {p3, p0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$3;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/content/Context;)V

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->scrollOffset:I

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 18
    move-result v0

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->scrollOffset:I

    .line 21
    sub-int/2addr v0, v1

    .line 22
    .line 23
    :goto_0
    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 27
    move-result v1

    .line 28
    .line 29
    iput v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->scrollOffset:I

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->backgroundRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 45
    move-result p0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 49
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->_init_$lambda$0(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V

    return-void
.end method

.method public static final synthetic access$deleteItem(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->deleteItem(I)V

    .line 4
    return-void
.end method

.method public static final synthetic access$getBackgroundRecyclerView$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->backgroundRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getItemTouchHelper$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRecyclerView$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTotalCount$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->totalCount:I

    .line 3
    return p0
.end method

.method private final deleteItem(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-gt v0, p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->onRemoveItemListener:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;->onRemove(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->totalCount:I

    .line 46
    sub-int/2addr v1, p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 50
    .line 51
    :cond_3
    if-nez p1, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->backgroundRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    const/4 v0, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 58
    :cond_4
    return-void
.end method

.method private final updateView()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->backgroundRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 23
    :cond_1
    return-void
.end method


# virtual methods
.method public final addData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "entry"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateView()V

    .line 14
    return-void
.end method

.method public final deleteEntry(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "id"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v1, v3

    .line 41
    .line 42
    :goto_1
    if-eq v1, v3, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->deleteItem(I)V

    .line 46
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    return-object v0
.end method

.method public final getHolderMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->holderMap$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/Map;

    .line 9
    return-object v0
.end method

.method public final getOnRemoveItemListener()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->onRemoveItemListener:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;

    return-object v0
.end method

.method public final getOnViewClickListener()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->onViewClickListener:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->totalCount:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const/high16 v2, 0x42820000    # 65.0f

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 12
    move-result v1

    .line 13
    float-to-int v1, v1

    .line 14
    mul-int/2addr v0, v1

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v2

    .line 27
    .line 28
    .line 29
    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    move-result p1

    .line 31
    .line 32
    if-ge v0, v1, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    const/4 v1, 0x2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 49
    return-void
.end method

.method public final setDatas(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;",
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
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    .line 13
    .line 14
    check-cast p1, Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateView()V

    .line 21
    return-void
.end method

.method public final setOnRemoveItemListener(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->onRemoveItemListener:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnRemoveItemListener;

    return-void
.end method

.method public final setOnViewClickListener(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->onViewClickListener:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;

    return-void
.end method

.method public final setTotalCount(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->totalCount:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateView()V

    .line 6
    return-void
.end method

.method public final updateData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 5
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->datas:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/lang/Iterable;

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

    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {v1, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->copy(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getHolderMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p0;->C(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lw7/u;

    invoke-virtual {v3}, Lw7/u;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v2, v1

    :cond_5
    check-cast v2, Lw7/u;

    if-eqz v2, :cond_6

    .line 7
    invoke-virtual {v2}, Lw7/u;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->updateStates(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    :cond_6
    return-void
.end method

.method public final updateData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;Z)V
    .locals 1
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateData(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->updateView()V

    :cond_0
    return-void
.end method
