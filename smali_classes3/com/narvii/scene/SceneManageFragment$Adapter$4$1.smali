.class Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;
.super Ljava/lang/Object;
.source "SceneManageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneManageFragment$Adapter$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/scene/SceneManageFragment$Adapter$4;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/EditTextDialog;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneManageFragment$Adapter$4;Lcom/narvii/util/dialog/EditTextDialog;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;->this$2:Lcom/narvii/scene/SceneManageFragment$Adapter$4;

    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;->val$dlg:Lcom/narvii/util/dialog/EditTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 415
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;->this$2:Lcom/narvii/scene/SceneManageFragment$Adapter$4;

    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;->val$dlg:Lcom/narvii/util/dialog/EditTextDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/AlertDialog;->getTrimEditText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/scene/SceneWrapper;->setTitle(Ljava/lang/String;)V

    .line 416
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;->this$2:Lcom/narvii/scene/SceneManageFragment$Adapter$4;

    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
