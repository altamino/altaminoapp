.class Lcom/narvii/util/dialog/EditTextDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/dialog/EditTextDialog$1;->this$0:Lcom/narvii/util/dialog/EditTextDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/dialog/EditTextDialog$1;->val$rightButton:Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/dialog/EditTextDialog$1;->this$0:Lcom/narvii/util/dialog/EditTextDialog;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/util/dialog/EditTextDialog$1;->val$rightButton:Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/narvii/util/dialog/EditTextDialog;->a(Lcom/narvii/util/dialog/EditTextDialog;Landroid/widget/TextView;)V

    .line 8
    return-void
.end method
