.class public final Lcom/narvii/video/widget/ClipFastSwitchingPanel;
.super Landroid/widget/FrameLayout;
.source "ClipFastSwitchingPanel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;,
        Lcom/narvii/video/widget/ClipFastSwitchingPanel$ItemTouchHelperAdapter;,
        Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;,
        Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;,
        Lcom/narvii/video/widget/ClipFastSwitchingPanel$SimpleItemTouchHelperCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClipFastSwitchingPanel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClipFastSwitchingPanel.kt\ncom/narvii/video/widget/ClipFastSwitchingPanel\n*L\n1#1,195:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;

.field private final clipListLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private eventCallback:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

.field private frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

.field private hasClipListReordered:Z

.field private itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private final onOptionClickListener:Landroid/view/View$OnClickListener;

.field private final panelItemSize:I

.field private selectedClipIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->clipListLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->clip_fast_switching_panel_item_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->panelItemSize:I

    .line 58
    new-instance p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel$onOptionClickListener$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$onOptionClickListener$1;-><init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->onOptionClickListener:Landroid/view/View$OnClickListener;

    .line 77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$layout;->component_clip_fast_switching_panel:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    sget-object p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel$1;->INSTANCE:Lcom/narvii/video/widget/ClipFastSwitchingPanel$1;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->clipListLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->clip_fast_switching_panel_item_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->panelItemSize:I

    .line 58
    new-instance p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel$onOptionClickListener$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$onOptionClickListener$1;-><init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->onOptionClickListener:Landroid/view/View$OnClickListener;

    .line 77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$layout;->component_clip_fast_switching_panel:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    sget-object p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel$1;->INSTANCE:Lcom/narvii/video/widget/ClipFastSwitchingPanel$1;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic access$getEventCallback$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->eventCallback:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    return-object p0
.end method

.method public static final synthetic access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-object p0
.end method

.method public static final synthetic access$getHasClipListReordered$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->hasClipListReordered:Z

    return p0
.end method

.method public static final synthetic access$getPanelItemSize$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->panelItemSize:I

    return p0
.end method

.method public static final synthetic access$getSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->selectedClipIndex:I

    return p0
.end method

.method public static final synthetic access$setEventCallback$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->eventCallback:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    return-void
.end method

.method public static final synthetic access$setFrameRetrieverManager$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method

.method public static final synthetic access$setHasClipListReordered$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->hasClipListReordered:Z

    return-void
.end method

.method public static final synthetic access$setSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->selectedClipIndex:I

    return-void
.end method

.method public static final synthetic access$updateOptionPanel(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->updateOptionPanel(Lcom/narvii/video/model/AVClipInfoPack;)V

    return-void
.end method

.method private final updateOptionPanel(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 1

    .line 114
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_trim:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->onOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_crop:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->onOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_speed:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->onOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_music:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->onOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_remove:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->onOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->hasClipListReordered:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->hasClipListReordered:Z

    .line 90
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->eventCallback:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->getClipList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->selectedClipIndex:I

    invoke-interface {v0, v1, v2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;->onClipListReordered(Ljava/util/ArrayList;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 92
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 83
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->clipListLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 84
    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_list:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const-string v1, "clip_list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->clipListLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public final setClipSet(Ljava/util/ArrayList;ILcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;I",
            "Lcom/narvii/video/services/FrameRetrieverManager;",
            ")V"
        }
    .end annotation

    const-string v0, "clipSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameRetrieverManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 100
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->selectedClipIndex:I

    .line 101
    iput-object p3, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 102
    iget-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 103
    :cond_0
    new-instance p2, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;

    invoke-direct {p2, p0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;-><init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;

    .line 104
    sget p2, Lcom/narvii/mediaeditor/R$id;->clip_list:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    const-string v0, "clip_list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 105
    new-instance p2, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance v0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SimpleItemTouchHelperCallback;

    iget-object v1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;

    if-eqz v1, :cond_2

    invoke-direct {v0, p0, v1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SimpleItemTouchHelperCallback;-><init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/video/widget/ClipFastSwitchingPanel$ItemTouchHelperAdapter;)V

    invoke-direct {p2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 106
    iget-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    if-eqz p2, :cond_1

    sget p3, Lcom/narvii/mediaeditor/R$id;->clip_list:I

    invoke-virtual {p0, p3}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 107
    new-instance p2, Lcom/narvii/video/widget/ClipFastSwitchingPanel$setClipSet$1;

    invoke-direct {p2, p0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$setClipSet$1;-><init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Ljava/util/ArrayList;)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    .line 106
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p3

    .line 105
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p3
.end method

.method public final setEventCallback(Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->eventCallback:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    return-void
.end method
