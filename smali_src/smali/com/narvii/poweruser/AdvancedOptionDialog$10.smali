.class Lcom/narvii/poweruser/AdvancedOptionDialog$10;
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

.field final synthetic val$dialog:Lcom/narvii/util/dialog/AlertDialog;

.field final synthetic val$edtNote:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Landroid/widget/EditText;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$10;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$10;->val$edtNote:Landroid/widget/EditText;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$10;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$10;->val$edtNote:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$10;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 11
    return-void
.end method
