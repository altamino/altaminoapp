.class public final Lcom/narvii/video/widget/ClipFastSwitchingPanel;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;,
        Lcom/narvii/video/widget/ClipFastSwitchingPanel$ItemTouchHelperAdapter;,
        Lcom/narvii/video/widget/ClipFastSwitchingPanel$SimpleItemTouchHelperCallback;,
        Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;,
        Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final binding:Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final clipListLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private eventCallback:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hasClipListReordered:Z

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onOptionClickListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final panelItemSize:I

.field private selectedClipIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->clipListLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->clip_fast_switching_panel_item_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->panelItemSize:I

    .line 4
    new-instance p1, Lcom/narvii/video/widget/d;

    invoke-direct {p1, p0}, Lcom/narvii/video/widget/d;-><init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->onOptionClickListener:Landroid/view/View$OnClickListener;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;

    .line 6
    new-instance p1, Lcom/narvii/video/widget/e;

    invoke-direct {p1}, Lcom/narvii/video/widget/e;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->clipListLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->clip_fast_switching_panel_item_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->panelItemSize:I

    .line 10
    new-instance p1, Lcom/narvii/video/widget/d;

    invoke-direct {p1, p0}, Lcom/narvii/video/widget/d;-><init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->onOptionClickListener:Landroid/view/View$OnClickListener;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;

    .line 12
    new-instance p1, Lcom/narvii/video/widget/e;

    invoke-direct {p1}, Lcom/narvii/video/widget/e;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final _init_$lambda$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->onOptionClickListener$lambda$0(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getEventCallback$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->eventCallback:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPanelItemSize$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->panelItemSize:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->selectedClipIndex:I

    .line 3
    return p0
.end method

.method public static final synthetic access$setHasClipListReordered$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->hasClipListReordered:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setSelectedClipIndex$p(Lcom/narvii/video/widget/ClipFastSwitchingPanel;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->selectedClipIndex:I

    .line 3
    return-void
.end method

.method public static final synthetic access$updateOptionPanel(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->updateOptionPanel(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->_init_$lambda$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Ljava/util/ArrayList;Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->setClipSet$lambda$3$lambda$2(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Ljava/util/ArrayList;Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;)V

    return-void
.end method

.method private static final onOptionClickListener$lambda$0(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Landroid/view/View;)V
    .locals 1

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
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 10
    move-result p1

    .line 11
    .line 12
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_trim:I

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->eventCallback:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {p0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;->onOptionTrimSelected()V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_music:I

    .line 25
    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->eventCallback:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;->onOptionMusicSelected()V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private static final setClipSet$lambda$3$lambda$2(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Ljava/util/ArrayList;Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;)V
    .locals 1

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
    const-string v0, "$clipSet"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "$this_with"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    iget v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->selectedClipIndex:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string v0, "get(...)"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->updateOptionPanel(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 33
    .line 34
    iget-object p1, p2, Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;->clipList:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    iget p0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->selectedClipIndex:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 40
    return-void
.end method

.method private final updateOptionPanel(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;->optionTrim:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->onOptionClickListener:Landroid/view/View$OnClickListener;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;->optionMusic:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->onOptionClickListener:Landroid/view/View$OnClickListener;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ev"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->hasClipListReordered:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x3

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->hasClipListReordered:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->eventCallback:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;->getClipList()Ljava/util/ArrayList;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    iget v2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->selectedClipIndex:I

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1, v2}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;->onClipListReordered(Ljava/util/ArrayList;I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->clipListLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;->clipList:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->clipListLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 19
    return-void
.end method

.method public final setClipSet(Ljava/util/ArrayList;ILcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/video/services/FrameRetrieverManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .line 1
    .line 2
    const-string v0, "clipSet"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "frameRetrieverManager"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result p2

    .line 18
    .line 19
    iput p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->selectedClipIndex:I

    .line 20
    .line 21
    iput-object p3, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    const/4 p3, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 30
    .line 31
    :cond_0
    new-instance p2, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, p0, p1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;-><init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Ljava/util/ArrayList;)V

    .line 35
    .line 36
    iput-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;

    .line 37
    .line 38
    iget-object p3, v0, Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;->clipList:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 42
    .line 43
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 44
    .line 45
    new-instance p3, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SimpleItemTouchHelperCallback;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->adapter:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelAdapter;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p3, p0, v1}, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SimpleItemTouchHelperCallback;-><init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Lcom/narvii/video/widget/ClipFastSwitchingPanel$ItemTouchHelperAdapter;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 57
    .line 58
    iput-object p2, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 59
    .line 60
    .line 61
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 62
    .line 63
    iget-object p3, v0, Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;->clipList:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 67
    .line 68
    new-instance p2, Lcom/narvii/video/widget/c;

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p0, p1, v0}, Lcom/narvii/video/widget/c;-><init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel;Ljava/util/ArrayList;Lcom/narvii/mediaeditor/databinding/ComponentClipFastSwitchingPanelBinding;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public final setEventCallback(Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;)V
    .locals 1
    .param p1    # Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->eventCallback:Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;

    return-void
.end method
