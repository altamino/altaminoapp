.class public Lcom/narvii/scene/view/SceneRecyclerView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;,
        Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;,
        Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;,
        Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;,
        Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;,
        Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;,
        Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneRecyclerView"

.field private static final TYPE_ADD:I = 0x1

.field private static final TYPE_SCENE:I


# instance fields
.field private final layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private onAttachPreClickListener:Landroid/view/View$OnClickListener;

.field private onDialogItemClickListener:Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

.field private onEditVideoListener:Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;

.field private onListSizeChangedListener:Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;

.field private onSelectedListener:Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;

.field private sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

.field private sceneDraft:Lcom/narvii/scene/model/SceneDraft;

.field private sceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private sceneWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/scene/SceneWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p2

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2, v0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    .line 27
    new-instance p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;-><init>(Lcom/narvii/scene/view/SceneRecyclerView;)V

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    const/4 p1, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/scene/view/SceneRecyclerView;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/view/SceneRecyclerView;->isEdit()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1000(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onListSizeChangedListener:Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/scene/view/SceneRecyclerView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onAttachPreClickListener:Landroid/view/View$OnClickListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onDialogItemClickListener:Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onSelectedListener:Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onEditVideoListener:Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/narvii/scene/view/SceneRecyclerView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/model/SceneDraft;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/scene/view/SceneRecyclerView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/view/SceneRecyclerView;->notifyDataSetChanged()V

    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/narvii/scene/view/SceneRecyclerView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/view/SceneRecyclerView;->scrollToEnd()V

    .line 4
    return-void
.end method

.method private isEdit()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method

.method private scrollToEnd()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/scene/view/SceneRecyclerView$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/scene/view/SceneRecyclerView$1;-><init>(Lcom/narvii/scene/view/SceneRecyclerView;)V

    .line 6
    .line 7
    const-wide/16 v1, 0x64

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 11
    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 0

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getSceneWrapper(Ljava/lang/String;)Lcom/narvii/scene/SceneWrapper;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/scene/SceneWrapper;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/scene/SceneWrapper;->getSceneId()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    return-object v1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method public getSceneWrapperList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/scene/SceneWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    return-object v0
.end method

.method public getScenes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/scene/SceneWrapper;->getSceneInfos(Ljava/util/List;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSelectedScene()Lcom/narvii/scene/SceneWrapper;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-object v1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    .line 13
    :goto_0
    iget-object v2, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 18
    .line 19
    if-ge v0, v2, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    check-cast v2, Lcom/narvii/scene/SceneWrapper;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-boolean v3, v2, Lcom/narvii/scene/SceneWrapper;->selected:Z

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    return-object v2

    .line 35
    .line 36
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return-object v1
.end method

.method public selectedScene(IZ)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    if-ltz p1, :cond_5

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v0

    .line 18
    .line 19
    add-int/lit8 v2, p1, 0x1

    .line 20
    .line 21
    if-ge v0, v2, :cond_0

    .line 22
    goto :goto_2

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/scene/SceneWrapper;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    return v1

    .line 34
    :cond_1
    move v0, v1

    .line 35
    .line 36
    :goto_0
    iget-object v2, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x1

    .line 42
    .line 43
    if-ge v0, v2, :cond_3

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 46
    .line 47
    .line 48
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    check-cast v2, Lcom/narvii/scene/SceneWrapper;

    .line 52
    .line 53
    if-ne v0, p1, :cond_2

    .line 54
    .line 55
    iput-boolean v3, v2, Lcom/narvii/scene/SceneWrapper;->selected:Z

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_2
    iput-boolean v1, v2, Lcom/narvii/scene/SceneWrapper;->selected:Z

    .line 59
    .line 60
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 67
    .line 68
    if-eqz p2, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 72
    :cond_4
    return v3

    .line 73
    :cond_5
    :goto_2
    return v1
.end method

.method public setOnAttachPreClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onAttachPreClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDialogItemClickListener(Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onDialogItemClickListener:Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    return-void
.end method

.method public setOnEditVideoListener(Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onEditVideoListener:Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;

    return-void
.end method

.method public setOnListSizeChangedListener(Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onListSizeChangedListener:Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;

    return-void
.end method

.method public setOnSelectedListener(Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onSelectedListener:Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 13
    move-result v2

    .line 14
    .line 15
    if-ge v1, v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/scene/SceneWrapper;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-boolean v3, v2, Lcom/narvii/scene/SceneWrapper;->selected:Z

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    const/4 v3, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move v3, v0

    .line 35
    .line 36
    :goto_1
    iput-boolean v3, v2, Lcom/narvii/scene/SceneWrapper;->isPlaying:Z

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 45
    return-void
.end method

.method public setSceneCanPlaying(ZLjava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/view/SceneRecyclerView;->isEdit()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/scene/SceneWrapper;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/scene/SceneWrapper;->getSceneId()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Lcom/narvii/scene/SceneWrapper;->setCanPlaying(Z)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-direct {p0}, Lcom/narvii/scene/view/SceneRecyclerView;->notifyDataSetChanged()V

    .line 44
    :cond_2
    return-void
.end method

.method public setSceneDraft(Lcom/narvii/scene/model/SceneDraft;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {p1}, Lcom/narvii/scene/SceneWrapper;->createWrappers(Lcom/narvii/scene/model/SceneDraft;)Ljava/util/List;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public setSceneList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneList:Ljava/util/List;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {p1}, Lcom/narvii/scene/SceneWrapper;->createWrappers(Ljava/util/List;)Ljava/util/List;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    check-cast v1, Lcom/narvii/scene/SceneWrapper;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/narvii/scene/SceneWrapper;->getSceneId()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2}, Lcom/narvii/scene/view/SceneRecyclerView;->getSceneWrapper(Ljava/lang/String;)Lcom/narvii/scene/SceneWrapper;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/narvii/scene/SceneWrapper;->isCanPlaying()Z

    .line 64
    move-result v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/narvii/scene/SceneWrapper;->setCanPlaying(Z)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_3
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method
