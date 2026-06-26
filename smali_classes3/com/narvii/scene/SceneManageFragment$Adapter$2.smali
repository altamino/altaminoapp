.class Lcom/narvii/scene/SceneManageFragment$Adapter$2;
.super Ljava/lang/Object;
.source "SceneManageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneManageFragment$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

.field final synthetic val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 323
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iget-object p1, p1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz p1, :cond_2

    .line 324
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneInfo;->containsPollOrQuiz()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    iget-object v3, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iget-object v3, v3, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-static {v0, v3}, Lcom/narvii/scene/SceneManageFragment;->access$302(Lcom/narvii/scene/SceneManageFragment;Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/model/SceneInfo;

    .line 330
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v3, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    invoke-virtual {v3}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 331
    sget v3, Lcom/narvii/lib/R$string;->edit_poll:I

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 332
    sget v2, Lcom/narvii/lib/R$string;->delete:I

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 333
    new-instance v1, Lcom/narvii/scene/SceneManageFragment$Adapter$2$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/SceneManageFragment$Adapter$2$1;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter$2;Lcom/narvii/scene/model/SceneInfo;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 343
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v0, :cond_2

    .line 345
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v3, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    invoke-virtual {v3}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 346
    sget v3, Lcom/narvii/lib/R$string;->edit_quiz:I

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 347
    sget v2, Lcom/narvii/lib/R$string;->delete:I

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 348
    new-instance v1, Lcom/narvii/scene/SceneManageFragment$Adapter$2$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/SceneManageFragment$Adapter$2$2;-><init>(Lcom/narvii/scene/SceneManageFragment$Adapter$2;Lcom/narvii/scene/model/SceneInfo;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 358
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method
