.class Lcom/narvii/scene/SceneManageFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/SceneManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/scene/SceneWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/SceneManageFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/SceneManageFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/SceneWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 3
    .line 4
    const-class v0, Lcom/narvii/scene/SceneWrapper;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    .line 8
    return-void
.end method

.method static synthetic access$600(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/SceneManageFragment$Adapter;->showEditDialog(Lcom/narvii/scene/SceneWrapper;I)V

    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/scene/SceneManageFragment$Adapter;->deleteCurrentScene(Lcom/narvii/scene/SceneWrapper;)V

    .line 4
    return-void
.end method

.method private deleteCurrentScene(Lcom/narvii/scene/SceneWrapper;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/scene/SceneWrapper;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/scene/SceneWrapper;->containsPollOrQuiz()Ljava/lang/Boolean;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget v1, Lcom/narvii/mediaeditor/R$string;->delete_scene_comfirm:I

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    sget v1, Lcom/narvii/mediaeditor/R$string;->delete_scene_comfirm_simple:I

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    sget v0, Lcom/narvii/mediaeditor/R$string;->cancel:I

    .line 48
    const/4 v2, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 52
    .line 53
    sget v0, Lcom/narvii/mediaeditor/R$string;->delete:I

    .line 54
    .line 55
    new-instance v2, Lcom/narvii/scene/SceneManageFragment$Adapter$5;

    .line 56
    .line 57
    .line 58
    invoke-direct {v2, p0, p1}, Lcom/narvii/scene/SceneManageFragment$Adapter$5;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;)V

    .line 59
    .line 60
    const/high16 p1, -0x10000

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0, v2, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/narvii/scene/SceneManageFragment;->access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$200(Lcom/narvii/scene/SceneManageFragment;)V

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 95
    move-result p1

    .line 96
    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 106
    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;

    .line 114
    move-result-object p1

    .line 115
    const/4 v0, 0x0

    .line 116
    .line 117
    iput v0, p1, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 118
    :cond_2
    :goto_1
    return-void
.end method

.method private showEditDialog(Lcom/narvii/scene/SceneWrapper;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/scene/SceneManageFragment;->access$302(Lcom/narvii/scene/SceneManageFragment;Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/model/SceneInfo;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    sget v1, Lcom/narvii/mediaeditor/R$string;->edit:I

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 23
    .line 24
    sget v1, Lcom/narvii/mediaeditor/R$string;->_copy:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 28
    .line 29
    sget v1, Lcom/narvii/mediaeditor/R$string;->rename:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 33
    .line 34
    sget v1, Lcom/narvii/mediaeditor/R$string;->delete:I

    .line 35
    const/4 v2, 0x1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 39
    .line 40
    new-instance v1, Lcom/narvii/scene/SceneManageFragment$Adapter$4;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/scene/SceneManageFragment$Adapter$4;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 50
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    sget v0, Lcom/narvii/mediaeditor/R$layout;->item_sort_list_scene:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    new-instance p3, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;

    .line 11
    .line 12
    .line 13
    invoke-direct {p3, p0, p2}, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Landroid/view/View;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;

    .line 21
    .line 22
    :goto_0
    if-eqz p3, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/scene/SceneWrapper;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v0}, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->setData(Lcom/narvii/scene/SceneWrapper;)V

    .line 32
    .line 33
    iget-object v1, p3, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->editView:Landroid/view/View;

    .line 34
    .line 35
    new-instance v2, Lcom/narvii/scene/SceneManageFragment$Adapter$1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, p0, v0, p1}, Lcom/narvii/scene/SceneManageFragment$Adapter$1;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    iget-object v1, p3, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->attachView:Landroid/widget/ImageView;

    .line 44
    .line 45
    new-instance v2, Lcom/narvii/scene/SceneManageFragment$Adapter$2;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, p0, v0}, Lcom/narvii/scene/SceneManageFragment$Adapter$2;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    iget-object p3, p3, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    .line 54
    .line 55
    new-instance v1, Lcom/narvii/scene/SceneManageFragment$Adapter$3;

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, p0, v0, p1}, Lcom/narvii/scene/SceneManageFragment$Adapter$3;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_1
    return-object p2
.end method
