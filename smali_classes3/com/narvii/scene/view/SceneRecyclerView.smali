.class public Lcom/narvii/scene/view/SceneRecyclerView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "SceneRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;,
        Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;,
        Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;,
        Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;,
        Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;,
        Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;,
        Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_ADD:I = 0x1

.field private static final TYPE_SCENE:I


# instance fields
.field private final layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

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
    .locals 1

    .line 46
    const-class v0, Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/scene/view/SceneRecyclerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 77
    new-instance p1, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/CustomLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 78
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 79
    new-instance p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;-><init>(Lcom/narvii/scene/view/SceneRecyclerView;)V

    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/scene/view/SceneRecyclerView;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/scene/view/SceneRecyclerView;->isEdit()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onListSizeChangedListener:Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/scene/view/SceneRecyclerView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onAttachPreClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onDialogItemClickListener:Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onSelectedListener:Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onEditVideoListener:Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/narvii/scene/view/SceneRecyclerView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/model/SceneDraft;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/scene/view/SceneRecyclerView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/scene/view/SceneRecyclerView;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/scene/view/SceneRecyclerView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/scene/view/SceneRecyclerView;->scrollToEnd()V

    return-void
.end method

.method private isEdit()Z
    .locals 1

    .line 321
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

    .line 338
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private scrollToEnd()V
    .locals 3

    .line 325
    new-instance v0, Lcom/narvii/scene/view/SceneRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/view/SceneRecyclerView$1;-><init>(Lcom/narvii/scene/view/SceneRecyclerView;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

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

    .line 236
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getSceneWrapper(Ljava/lang/String;)Lcom/narvii/scene/SceneWrapper;
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/SceneWrapper;

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Lcom/narvii/scene/SceneWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

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

    .line 154
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

    .line 158
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/scene/SceneWrapper;->getSceneInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedScene()Lcom/narvii/scene/SceneWrapper;
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    iget-object v2, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 215
    iget-object v2, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/scene/SceneWrapper;

    if-eqz v2, :cond_1

    .line 216
    iget-boolean v3, v2, Lcom/narvii/scene/SceneWrapper;->selected:Z

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public selectedScene(IZ)Z
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, p1, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_2

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/SceneWrapper;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 191
    :goto_0
    iget-object v2, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_3

    .line 192
    iget-object v2, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/scene/SceneWrapper;

    if-ne v0, p1, :cond_2

    .line 194
    iput-boolean v3, v2, Lcom/narvii/scene/SceneWrapper;->selected:Z

    goto :goto_1

    .line 196
    :cond_2
    iput-boolean v1, v2, Lcom/narvii/scene/SceneWrapper;->selected:Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz p2, :cond_4

    .line 205
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_4
    return v3

    :cond_5
    :goto_2
    return v1
.end method

.method public setOnAttachPreClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onAttachPreClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDialogItemClickListener(Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onDialogItemClickListener:Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;

    return-void
.end method

.method public setOnEditVideoListener(Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onEditVideoListener:Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;

    return-void
.end method

.method public setOnListSizeChangedListener(Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onListSizeChangedListener:Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;

    return-void
.end method

.method public setOnSelectedListener(Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->onSelectedListener:Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 226
    :goto_0
    iget-object v2, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 227
    iget-object v2, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/scene/SceneWrapper;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 229
    iget-boolean v3, v2, Lcom/narvii/scene/SceneWrapper;->selected:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v2, Lcom/narvii/scene/SceneWrapper;->isPlaying:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSceneCanPlaying(ZLjava/lang/String;)V
    .locals 3

    .line 143
    invoke-direct {p0}, Lcom/narvii/scene/view/SceneRecyclerView;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/SceneWrapper;

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1}, Lcom/narvii/scene/SceneWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v1, p1}, Lcom/narvii/scene/SceneWrapper;->setCanPlaying(Z)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/narvii/scene/view/SceneRecyclerView;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public setSceneDraft(Lcom/narvii/scene/model/SceneDraft;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-nez p1, :cond_0

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 92
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 96
    :cond_0
    invoke-static {p1}, Lcom/narvii/scene/SceneWrapper;->createWrappers(Lcom/narvii/scene/model/SceneDraft;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 97
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    if-nez p1, :cond_1

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

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

    .line 105
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 109
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 113
    :cond_0
    invoke-static {p1}, Lcom/narvii/scene/SceneWrapper;->createWrappers(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/SceneWrapper;

    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {v1}, Lcom/narvii/scene/SceneWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/narvii/scene/view/SceneRecyclerView;->getSceneWrapper(Ljava/lang/String;)Lcom/narvii/scene/SceneWrapper;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 122
    invoke-virtual {v2}, Lcom/narvii/scene/SceneWrapper;->isCanPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/scene/SceneWrapper;->setCanPlaying(Z)V

    goto :goto_0

    .line 127
    :cond_3
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneWrappers:Ljava/util/List;

    .line 128
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView;->sceneAdapter:Lcom/narvii/scene/view/SceneRecyclerView$SceneAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
