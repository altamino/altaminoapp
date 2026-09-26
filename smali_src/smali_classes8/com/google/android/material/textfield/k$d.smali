.class Lcom/google/android/material/textfield/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/k;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/k;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/k;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/k$d;->this$0:Lcom/google/android/material/textfield/k;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/k$d;->this$0:Lcom/google/android/material/textfield/k;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 15
    move-result v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/material/textfield/k$d;->this$0:Lcom/google/android/material/textfield/k;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/google/android/material/textfield/k;->e(Lcom/google/android/material/textfield/k;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 36
    .line 37
    :goto_0
    if-ltz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 41
    .line 42
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/k$d;->this$0:Lcom/google/android/material/textfield/k;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->U()V

    .line 48
    return-void
.end method
