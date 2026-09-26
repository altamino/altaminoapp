.class Lcom/google/android/material/textfield/e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$f;


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
    iput-object p1, p0, Lcom/google/android/material/textfield/e$g;->this$0:Lcom/google/android/material/textfield/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/material/textfield/e;->e(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/material/textfield/e$g;->this$0:Lcom/google/android/material/textfield/e;

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/google/android/material/textfield/e;->v(Lcom/google/android/material/textfield/e;Landroid/widget/AutoCompleteTextView;)V

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/material/textfield/e$g;->this$0:Lcom/google/android/material/textfield/e;

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/google/android/material/textfield/e;->w(Lcom/google/android/material/textfield/e;Landroid/widget/AutoCompleteTextView;)V

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/material/textfield/e$g;->this$0:Lcom/google/android/material/textfield/e;

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/google/android/material/textfield/e;->x(Lcom/google/android/material/textfield/e;Landroid/widget/AutoCompleteTextView;)V

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/material/textfield/e$g;->this$0:Lcom/google/android/material/textfield/e;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/google/android/material/textfield/e;->g(Lcom/google/android/material/textfield/e;)Landroid/text/TextWatcher;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/material/textfield/e$g;->this$0:Lcom/google/android/material/textfield/e;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/google/android/material/textfield/e;->g(Lcom/google/android/material/textfield/e;)Landroid/text/TextWatcher;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    const/4 v1, 0x1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 50
    const/4 v2, 0x0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/google/android/material/textfield/e;->q(Landroid/widget/EditText;)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/material/textfield/e$g;->this$0:Lcom/google/android/material/textfield/e;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/google/android/material/textfield/e;->f(Lcom/google/android/material/textfield/e;)Landroid/view/accessibility/AccessibilityManager;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 69
    move-result v0

    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    iget-object v0, p0, Lcom/google/android/material/textfield/e$g;->this$0:Lcom/google/android/material/textfield/e;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/google/android/material/textfield/f;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 76
    const/4 v2, 0x2

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->F0(Landroid/view/View;I)V

    .line 80
    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/e$g;->this$0:Lcom/google/android/material/textfield/e;

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lcom/google/android/material/textfield/e;->h(Lcom/google/android/material/textfield/e;)Lcom/google/android/material/textfield/TextInputLayout$e;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$e;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 92
    return-void
.end method
