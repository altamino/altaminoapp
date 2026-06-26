.class Lcom/narvii/util/dialog/EditTextDialog$1;
.super Ljava/lang/Object;
.source "EditTextDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/dialog/EditTextDialog;->disallowEditTextEmpty(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/dialog/EditTextDialog;

.field final synthetic val$rightButton:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/EditTextDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/narvii/util/dialog/EditTextDialog$1;->this$0:Lcom/narvii/util/dialog/EditTextDialog;

    iput-object p2, p0, Lcom/narvii/util/dialog/EditTextDialog$1;->val$rightButton:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/narvii/util/dialog/EditTextDialog$1;->this$0:Lcom/narvii/util/dialog/EditTextDialog;

    iget-object p2, p0, Lcom/narvii/util/dialog/EditTextDialog$1;->val$rightButton:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/narvii/util/dialog/EditTextDialog;->access$000(Lcom/narvii/util/dialog/EditTextDialog;Landroid/widget/TextView;)V

    return-void
.end method
