.class Lcom/google/android/material/textfield/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/a;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/a$c;->this$0:Lcom/google/android/material/textfield/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2
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
    iget-object v1, p0, Lcom/google/android/material/textfield/a$c;->this$0:Lcom/google/android/material/textfield/a;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/material/textfield/a;->e(Lcom/google/android/material/textfield/a;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/material/textfield/a$c;->this$0:Lcom/google/android/material/textfield/a;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/material/textfield/a;->g(Lcom/google/android/material/textfield/a;)Landroid/view/View$OnFocusChangeListener;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/material/textfield/a$c;->this$0:Lcom/google/android/material/textfield/a;

    .line 25
    .line 26
    iget-object v1, p1, Lcom/google/android/material/textfield/f;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/material/textfield/a;->g(Lcom/google/android/material/textfield/a;)Landroid/view/View$OnFocusChangeListener;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/material/textfield/a$c;->this$0:Lcom/google/android/material/textfield/a;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/google/android/material/textfield/a;->h(Lcom/google/android/material/textfield/a;)Landroid/text/TextWatcher;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 43
    .line 44
    iget-object p1, p0, Lcom/google/android/material/textfield/a$c;->this$0:Lcom/google/android/material/textfield/a;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/google/android/material/textfield/a;->h(Lcom/google/android/material/textfield/a;)Landroid/text/TextWatcher;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    return-void
.end method
