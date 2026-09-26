.class Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    sget v0, Lcom/narvii/mediaeditor/R$id;->split_view:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->splitView:Landroid/view/View;

    .line 14
    .line 15
    sget v0, Lcom/narvii/mediaeditor/R$id;->scene_view:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/scene/view/NVSceneView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    .line 24
    .line 25
    sget v0, Lcom/narvii/mediaeditor/R$id;->border_layout:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->borderLayout:Landroid/view/View;

    .line 32
    .line 33
    sget v0, Lcom/narvii/mediaeditor/R$id;->border_view:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->borderView:Landroid/view/View;

    .line 40
    .line 41
    sget v0, Lcom/narvii/mediaeditor/R$id;->edit_tag:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->editTagView:Landroid/view/View;

    .line 48
    .line 49
    sget v0, Lcom/narvii/mediaeditor/R$id;->attached:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Landroid/widget/ImageView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->attached:Landroid/widget/ImageView;

    .line 58
    .line 59
    new-instance v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;-><init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;Lcom/narvii/scene/view/SceneRecyclerView;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    new-instance v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, p0, p1}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;-><init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;Lcom/narvii/scene/view/SceneRecyclerView;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected getBorderViewBgRes(Lcom/narvii/scene/SceneWrapper;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/scene/SceneWrapper;->getStates()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x3

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    sget p1, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_border_error_mirror:I

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    sget p1, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_border_normal_mirror:I

    .line 13
    :goto_0
    return p1
.end method

.method public setSceneWrapper(Lcom/narvii/scene/SceneWrapper;)V
    .locals 4

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    .line 5
    .line 6
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_cover_image_bg_horizontal:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/view/NVSceneView;->setData(Lcom/narvii/scene/SceneWrapper;I)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->borderLayout:Landroid/view/View;

    .line 12
    .line 13
    iget-boolean v1, p1, Lcom/narvii/scene/SceneWrapper;->selected:Z

    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    move v1, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->editTagView:Landroid/view/View;

    .line 27
    .line 28
    iget-boolean v1, p1, Lcom/narvii/scene/SceneWrapper;->selected:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/scene/SceneWrapper;->isEmpty()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    move v2, v3

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->borderView:Landroid/view/View;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->getBorderViewBgRes(Lcom/narvii/scene/SceneWrapper;)I

    .line 46
    move-result p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    return-void
.end method

.method public showSplit(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->splitView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x4

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    return-void
.end method
