.class Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;
.super Ljava/lang/Object;
.source "SceneManageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/SceneManageFragment$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public attachView:Landroid/widget/ImageView;

.field public editView:Landroid/view/View;

.field public itemView:Landroid/view/View;

.field public sceneView:Lcom/narvii/scene/view/NVSceneView;

.field final synthetic this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Landroid/view/View;)V
    .locals 2

    .line 468
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    return-void

    .line 472
    :cond_0
    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->itemView:Landroid/view/View;

    .line 473
    sget v0, Lcom/narvii/mediaeditor/R$id;->edit_handle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->editView:Landroid/view/View;

    .line 474
    sget v0, Lcom/narvii/mediaeditor/R$id;->scene_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/view/NVSceneView;

    iput-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    .line 475
    sget v0, Lcom/narvii/mediaeditor/R$id;->attached:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->attachView:Landroid/widget/ImageView;

    .line 477
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/scene/view/NVSceneView;->getTvTitle()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    invoke-virtual {v0}, Lcom/narvii/scene/view/NVSceneView;->getTvTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-virtual {v1}, Lcom/narvii/scene/SceneManageFragment;->isDarkTheme()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const v1, -0xb5b5b6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    if-eqz v0, :cond_4

    .line 482
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-virtual {p1}, Lcom/narvii/scene/SceneManageFragment;->isDarkTheme()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, -0x77000001

    goto :goto_1

    :cond_3
    const p1, -0x646465

    :goto_1
    invoke-virtual {v0, p1}, Lcom/narvii/scene/view/NVSceneView;->setDefaultTimeTextColor(I)V

    .line 484
    :cond_4
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setData(Lcom/narvii/scene/SceneWrapper;)V
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_cover_image_bg:I

    iget-object v2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$color;->scene_error_color:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/narvii/scene/view/NVSceneView;->setData(Lcom/narvii/scene/SceneWrapper;IIZ)V

    .line 490
    iget-object p1, p1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz p1, :cond_1

    .line 491
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneInfo;->containsPollOrQuiz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->attachView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->attachView:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz p1, :cond_0

    sget p1, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_attach_quiz:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_attach_poll:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 495
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->attachView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method
