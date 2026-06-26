.class Lcom/narvii/poweruser/AdvancedOptionDialog$11;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

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

    .line 751
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$11;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$11;->val$callback:Lcom/narvii/util/Callback;

    iput-object p3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$11;->val$edtNote:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$11;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 754
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$11;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 755
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$11;->val$edtNote:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 757
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$11;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
