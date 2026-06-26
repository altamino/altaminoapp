.class Lcom/narvii/widget/InputDialog$1;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/InputDialog;


# direct methods
.method constructor <init>(Lcom/narvii/widget/InputDialog;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    invoke-virtual {v0}, Lcom/narvii/widget/InputDialog;->updateActionButtonStatus()V

    .line 40
    iget-object v0, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    iget v0, v0, Lcom/narvii/widget/InputDialog;->editLimit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    iget v2, v1, Lcom/narvii/widget/InputDialog;->editLimit:I

    if-le v0, v2, :cond_0

    .line 42
    iget-object v0, v1, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    iget v1, v1, Lcom/narvii/widget/InputDialog;->editLimit:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    iget-object p1, p1, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 44
    iget-object p1, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    iget-object p1, p1, Lcom/narvii/widget/InputDialog;->error:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    iget-object v0, p1, Lcom/narvii/widget/InputDialog;->error:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/narvii/lib/R$string;->max_chars:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    iget v4, v4, Lcom/narvii/widget/InputDialog;->editLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, v1, Lcom/narvii/widget/InputDialog;->error:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
