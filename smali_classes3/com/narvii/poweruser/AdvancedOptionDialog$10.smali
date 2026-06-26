.class Lcom/narvii/poweruser/AdvancedOptionDialog$10;
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

.field final synthetic val$dialog:Lcom/narvii/util/dialog/AlertDialog;

.field final synthetic val$edtNote:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Landroid/widget/EditText;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$10;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$10;->val$edtNote:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$10;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 747
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$10;->val$edtNote:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 748
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$10;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
