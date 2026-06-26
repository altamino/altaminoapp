.class Lcom/narvii/scene/SceneManageFragment$Adapter$4;
.super Ljava/lang/Object;
.source "SceneManageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneManageFragment$Adapter;->showEditDialog(Lcom/narvii/scene/SceneWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

.field final synthetic val$position:I

.field final synthetic val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;I)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iput p3, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-static {p1, p2}, Lcom/narvii/scene/SceneManageFragment$Adapter;->access$900(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;)V

    goto/16 :goto_0

    .line 405
    :cond_1
    new-instance p2, Lcom/narvii/util/dialog/EditTextDialog;

    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/EditTextDialog;-><init>(Landroid/content/Context;)V

    .line 406
    sget v0, Lcom/narvii/mediaeditor/R$string;->rename:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 407
    invoke-virtual {p2}, Lcom/narvii/util/dialog/AlertDialog;->setEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v1}, Lcom/narvii/scene/SceneWrapper;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 409
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 410
    invoke-virtual {p2, v0, p1, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 411
    sget p1, Lcom/narvii/mediaeditor/R$string;->post_submit:I

    const/4 v0, 0x4

    new-instance v1, Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;

    invoke-direct {v1, p0, p2}, Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter$4;Lcom/narvii/util/dialog/EditTextDialog;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 419
    invoke-virtual {p2, p1}, Lcom/narvii/util/dialog/EditTextDialog;->disallowEditTextEmpty(Landroid/widget/TextView;)V

    .line 420
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 402
    :cond_2
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iget v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$position:I

    invoke-static {p1, p2, v0}, Lcom/narvii/scene/SceneManageFragment;->access$800(Lcom/narvii/scene/SceneManageFragment;Lcom/narvii/scene/SceneWrapper;I)V

    goto :goto_0

    .line 387
    :cond_3
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p2}, Lcom/narvii/scene/SceneManageFragment;->access$300(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_0

    .line 390
    :cond_4
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {p2}, Lcom/narvii/scene/SceneWrapper;->getStates()I

    move-result p2

    if-ne p2, v0, :cond_5

    .line 395
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$700(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p2}, Lcom/narvii/scene/SceneManageFragment;->access$300(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {v0}, Lcom/narvii/scene/SceneManageFragment;->access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->showPickerDialog(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_5
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p2}, Lcom/narvii/scene/SceneManageFragment;->access$300(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/narvii/scene/SceneManageFragment;->toSceneEditor(Lcom/narvii/scene/model/SceneInfo;Z)V

    :goto_0
    return-void
.end method
