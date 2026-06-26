.class Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SceneRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/view/SceneRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SceneHolder"
.end annotation


# instance fields
.field public attached:Landroid/widget/ImageView;

.field public borderLayout:Landroid/view/View;

.field public borderView:Landroid/view/View;

.field public editTagView:Landroid/view/View;

.field public sceneView:Lcom/narvii/scene/view/NVSceneView;

.field public sceneWrapper:Lcom/narvii/scene/SceneWrapper;

.field public splitView:Landroid/view/View;

.field final synthetic this$0:Lcom/narvii/scene/view/SceneRecyclerView;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/view/SceneRecyclerView;Landroid/view/View;)V
    .locals 2

    .line 352
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 353
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 354
    sget v0, Lcom/narvii/mediaeditor/R$id;->split_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->splitView:Landroid/view/View;

    .line 355
    sget v0, Lcom/narvii/mediaeditor/R$id;->scene_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/view/NVSceneView;

    iput-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    .line 356
    sget v0, Lcom/narvii/mediaeditor/R$id;->border_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->borderLayout:Landroid/view/View;

    .line 357
    sget v0, Lcom/narvii/mediaeditor/R$id;->border_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->borderView:Landroid/view/View;

    .line 358
    sget v0, Lcom/narvii/mediaeditor/R$id;->edit_tag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->editTagView:Landroid/view/View;

    .line 359
    sget v0, Lcom/narvii/mediaeditor/R$id;->attached:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->attached:Landroid/widget/ImageView;

    .line 361
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->attached:Landroid/widget/ImageView;

    new-instance v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;-><init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;Lcom/narvii/scene/view/SceneRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    new-instance v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;-><init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;Lcom/narvii/scene/view/SceneRecyclerView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getBorderViewBgRes(Lcom/narvii/scene/SceneWrapper;)I
    .locals 1

    .line 508
    invoke-virtual {p1}, Lcom/narvii/scene/SceneWrapper;->getStates()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    sget p1, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_border_error_mirror:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_border_normal_mirror:I

    :goto_0
    return p1
.end method

.method public setSceneWrapper(Lcom/narvii/scene/SceneWrapper;)V
    .locals 4

    .line 499
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 500
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_cover_image_bg_horizontal:I

    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/view/NVSceneView;->setData(Lcom/narvii/scene/SceneWrapper;I)V

    .line 501
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->borderLayout:Landroid/view/View;

    iget-boolean v1, p1, Lcom/narvii/scene/SceneWrapper;->selected:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->editTagView:Landroid/view/View;

    iget-boolean v1, p1, Lcom/narvii/scene/SceneWrapper;->selected:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/scene/SceneWrapper;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->borderView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->getBorderViewBgRes(Lcom/narvii/scene/SceneWrapper;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public showSplit(Z)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->splitView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
