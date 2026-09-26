.class Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/scene/SceneManageFragment$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    .line 12
    sget v0, Lcom/narvii/mediaeditor/R$id;->edit_handle:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->editView:Landroid/view/View;

    .line 19
    .line 20
    sget v0, Lcom/narvii/mediaeditor/R$id;->scene_view:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/scene/view/NVSceneView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    .line 29
    .line 30
    sget v0, Lcom/narvii/mediaeditor/R$id;->attached:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Landroid/widget/ImageView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->attachView:Landroid/widget/ImageView;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/scene/view/NVSceneView;->getTvTitle()Landroid/widget/TextView;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/scene/view/NVSceneView;->getTvTitle()Landroid/widget/TextView;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iget-object v1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/narvii/scene/SceneManageFragment;->isDarkTheme()Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    const/4 v1, -0x1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_1
    const v1, -0xb5b5b6

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/scene/SceneManageFragment;->isDarkTheme()Z

    .line 80
    move-result p1

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    .line 85
    const p1, -0x77000001

    .line 86
    goto :goto_1

    .line 87
    .line 88
    .line 89
    :cond_3
    const p1, -0x646465

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {v0, p1}, Lcom/narvii/scene/view/NVSceneView;->setDefaultTimeTextColor(I)V

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    return-void
.end method


# virtual methods
.method public setData(Lcom/narvii/scene/SceneWrapper;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    .line 3
    .line 4
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_cover_image_bg:I

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    sget v3, Lcom/narvii/mediaeditor/R$color;->scene_error_color:I

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/narvii/scene/view/NVSceneView;->setData(Lcom/narvii/scene/SceneWrapper;IIZ)V

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneInfo;->containsPollOrQuiz()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->attachView:Landroid/widget/ImageView;

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->attachView:Landroid/widget/ImageView;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    sget p1, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_attach_quiz:I

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    sget p1, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_attach_poll:I

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->attachView:Landroid/widget/ImageView;

    .line 54
    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    :goto_1
    return-void
.end method
