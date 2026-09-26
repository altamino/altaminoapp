.class Lcom/narvii/poweruser/AdvancedOptionDialog$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;->showLeaveNotDialog(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$dialog:Lcom/narvii/util/dialog/AlertDialog;

.field final synthetic val$edtNote:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/util/Callback;Landroid/widget/EditText;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$11;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$11;->val$callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$11;->val$edtNote:Landroid/widget/EditText;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$11;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$11;->val$callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$11;->val$edtNote:Landroid/widget/EditText;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$11;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 23
    return-void
.end method
