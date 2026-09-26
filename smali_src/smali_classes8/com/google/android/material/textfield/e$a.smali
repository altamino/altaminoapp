.class Lcom/google/android/material/textfield/e$a;
.super Lcom/google/android/material/internal/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/e;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/e;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/e$a;->this$0:Lcom/google/android/material/textfield/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/material/internal/r;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/e$a;->this$0:Lcom/google/android/material/textfield/e;

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
    .line 11
    invoke-static {p1}, Lcom/google/android/material/textfield/e;->e(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/material/textfield/e$a;->this$0:Lcom/google/android/material/textfield/e;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/material/textfield/e;->f(Lcom/google/android/material/textfield/e;)Landroid/view/accessibility/AccessibilityManager;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/google/android/material/textfield/e;->q(Landroid/widget/EditText;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/material/textfield/e$a;->this$0:Lcom/google/android/material/textfield/e;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/google/android/material/textfield/f;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 44
    .line 45
    :cond_0
    new-instance v0, Lcom/google/android/material/textfield/e$a$a;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/textfield/e$a$a;-><init>(Lcom/google/android/material/textfield/e$a;Landroid/widget/AutoCompleteTextView;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method
