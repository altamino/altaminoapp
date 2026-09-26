.class Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;->this$2:Lcom/narvii/scene/SceneManageFragment$Adapter$4;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;->val$dlg:Lcom/narvii/util/dialog/EditTextDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;->this$2:Lcom/narvii/scene/SceneManageFragment$Adapter$4;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;->val$dlg:Lcom/narvii/util/dialog/EditTextDialog;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/util/dialog/AlertDialog;->getTrimEditText()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/scene/SceneWrapper;->setTitle(Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$4$1;->this$2:Lcom/narvii/scene/SceneManageFragment$Adapter$4;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter$4;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 21
    return-void
.end method
