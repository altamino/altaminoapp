.class Lcom/narvii/scene/SceneManageFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SceneManageFragment.java"


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

    .line 296
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 297
    const-class v0, Lcom/narvii/scene/SceneWrapper;

    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;I)V
    .locals 0

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/SceneManageFragment$Adapter;->showEditDialog(Lcom/narvii/scene/SceneWrapper;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;)V
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Lcom/narvii/scene/SceneManageFragment$Adapter;->deleteCurrentScene(Lcom/narvii/scene/SceneWrapper;)V

    return-void
.end method

.method private deleteCurrentScene(Lcom/narvii/scene/SceneWrapper;)V
    .locals 3

    .line 433
    invoke-virtual {p1}, Lcom/narvii/scene/SceneWrapper;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/scene/SceneWrapper;->containsPollOrQuiz()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/narvii/mediaeditor/R$string;->delete_scene_comfirm:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/narvii/mediaeditor/R$string;->delete_scene_comfirm_simple:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 436
    invoke-virtual {v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 437
    sget v0, Lcom/narvii/mediaeditor/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 438
    sget v0, Lcom/narvii/mediaeditor/R$string;->delete:I

    new-instance v2, Lcom/narvii/scene/SceneManageFragment$Adapter$5;

    invoke-direct {v2, p0, p1}, Lcom/narvii/scene/SceneManageFragment$Adapter$5;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;)V

    const/high16 p1, -0x10000

    invoke-virtual {v1, v0, v2, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 450
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_1

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {v0}, Lcom/narvii/scene/SceneManageFragment;->access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 453
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$200(Lcom/narvii/scene/SceneManageFragment;)V

    .line 454
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 455
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 456
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    :cond_2
    :goto_1
    return-void
.end method

.method private showEditDialog(Lcom/narvii/scene/SceneWrapper;I)V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    iget-object v1, p1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-static {v0, v1}, Lcom/narvii/scene/SceneManageFragment;->access$302(Lcom/narvii/scene/SceneManageFragment;Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/model/SceneInfo;

    .line 377
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 378
    sget v1, Lcom/narvii/mediaeditor/R$string;->edit:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 379
    sget v1, Lcom/narvii/mediaeditor/R$string;->_copy:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 380
    sget v1, Lcom/narvii/mediaeditor/R$string;->rename:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 381
    sget v1, Lcom/narvii/mediaeditor/R$string;->delete:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 382
    new-instance v1, Lcom/narvii/scene/SceneManageFragment$Adapter$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/scene/SceneManageFragment$Adapter$4;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;I)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 429
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 304
    sget v0, Lcom/narvii/mediaeditor/R$layout;->item_sort_list_scene:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 305
    new-instance p3, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Landroid/view/View;)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;

    :goto_0
    if-eqz p3, :cond_1

    .line 311
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/SceneWrapper;

    .line 312
    invoke-virtual {p3, v0}, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->setData(Lcom/narvii/scene/SceneWrapper;)V

    .line 313
    iget-object v1, p3, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->editView:Landroid/view/View;

    new-instance v2, Lcom/narvii/scene/SceneManageFragment$Adapter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/narvii/scene/SceneManageFragment$Adapter$1;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v1, p3, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->attachView:Landroid/widget/ImageView;

    new-instance v2, Lcom/narvii/scene/SceneManageFragment$Adapter$2;

    invoke-direct {v2, p0, v0}, Lcom/narvii/scene/SceneManageFragment$Adapter$2;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object p3, p3, Lcom/narvii/scene/SceneManageFragment$Adapter$ViewHolder;->sceneView:Lcom/narvii/scene/view/NVSceneView;

    new-instance v1, Lcom/narvii/scene/SceneManageFragment$Adapter$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/narvii/scene/SceneManageFragment$Adapter$3;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;I)V

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p2
.end method
