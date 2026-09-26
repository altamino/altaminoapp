.class Lcom/narvii/widget/InputDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/InputDialog;->updateActionButtonStatus()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    .line 8
    .line 9
    iget v0, v0, Lcom/narvii/widget/InputDialog;->editLimit:I

    .line 10
    const/4 v1, -0x1

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    move-result v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    .line 23
    .line 24
    iget v2, v1, Lcom/narvii/widget/InputDialog;->editLimit:I

    .line 25
    .line 26
    if-le v0, v2, :cond_0

    .line 27
    .line 28
    iget-object v0, v1, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    .line 35
    .line 36
    iget v1, v1, Lcom/narvii/widget/InputDialog;->editLimit:I

    .line 37
    const/4 v2, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 56
    move-result v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/narvii/widget/InputDialog;->error:Landroid/widget/TextView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    .line 69
    .line 70
    iget-object v0, p1, Lcom/narvii/widget/InputDialog;->error:Landroid/widget/TextView;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    sget v1, Lcom/narvii/lib/R$string;->max_chars:I

    .line 77
    const/4 v3, 0x1

    .line 78
    .line 79
    new-array v3, v3, [Ljava/lang/Object;

    .line 80
    .line 81
    iget-object v4, p0, Lcom/narvii/widget/InputDialog$1;->this$0:Lcom/narvii/widget/InputDialog;

    .line 82
    .line 83
    iget v4, v4, Lcom/narvii/widget/InputDialog;->editLimit:I

    .line 84
    .line 85
    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    aput-object v4, v3, v2

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_0
    iget-object p1, v1, Lcom/narvii/widget/InputDialog;->error:Landroid/widget/TextView;

    .line 100
    .line 101
    const/16 v0, 0x8

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
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
