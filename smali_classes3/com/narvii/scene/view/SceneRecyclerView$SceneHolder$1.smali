.class Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;
.super Ljava/lang/Object;
.source "SceneRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;-><init>(Lcom/narvii/scene/view/SceneRecyclerView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

.field final synthetic val$this$0:Lcom/narvii/scene/view/SceneRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;Lcom/narvii/scene/view/SceneRecyclerView;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iput-object p2, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->val$this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$200(Lcom/narvii/scene/view/SceneRecyclerView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$200(Lcom/narvii/scene/view/SceneRecyclerView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 367
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_6

    .line 369
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {p1}, Lcom/narvii/scene/SceneWrapper;->getSceneId()Ljava/lang/String;

    move-result-object p1

    .line 370
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->getAttachDataStatus()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    goto/16 :goto_0

    .line 438
    :cond_1
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 439
    sget v0, Lcom/narvii/mediaeditor/R$string;->scene_poll_uneditable:I

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 440
    sget v0, Lcom/narvii/mediaeditor/R$string;->got_it:I

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 441
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto/16 :goto_0

    .line 397
    :cond_2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v1, v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 398
    sget v1, Lcom/narvii/lib/R$string;->edit_poll:I

    invoke-virtual {v0, v1, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 399
    sget v1, Lcom/narvii/lib/R$string;->delete:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 400
    new-instance v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$2;-><init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 414
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_0

    .line 418
    :cond_3
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v1, v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 419
    sget v1, Lcom/narvii/lib/R$string;->edit_quiz:I

    invoke-virtual {v0, v1, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 420
    sget v1, Lcom/narvii/lib/R$string;->delete:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 421
    new-instance v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;

    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$3;-><init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 435
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_0

    .line 378
    :cond_4
    new-instance p1, Lcom/narvii/scene/dialog/SceneAttachDataDialog;

    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/scene/dialog/SceneAttachDataDialog;-><init>(Landroid/content/Context;)V

    .line 379
    new-instance v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1$1;-><init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;)V

    invoke-virtual {p1, v0}, Lcom/narvii/scene/dialog/SceneAttachDataDialog;->setOnItemClickListener(Lcom/narvii/scene/dialog/SceneAttachDataDialog$OnItemClickListener;)V

    .line 394
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 372
    :cond_5
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 373
    sget v0, Lcom/narvii/mediaeditor/R$string;->empty_scene_add_attach_hint:I

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 374
    sget v0, Lcom/narvii/mediaeditor/R$string;->got_it:I

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 375
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_6
    :goto_0
    return-void
.end method
