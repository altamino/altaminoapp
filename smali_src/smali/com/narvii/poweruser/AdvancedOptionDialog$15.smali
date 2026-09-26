.class Lcom/narvii/poweruser/AdvancedOptionDialog$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;->deleteComment(Lcom/narvii/model/Comment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field final synthetic val$comment:Lcom/narvii/model/Comment;

.field final synthetic val$dialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/model/Comment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$15;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$15;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$15;->val$comment:Lcom/narvii/model/Comment;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$15;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$15;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$15;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$15$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$15$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$15;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->D(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/Callback;)V

    .line 24
    return-void
.end method
