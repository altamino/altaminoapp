.class Lcom/google/android/material/textfield/e$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$g;


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
    iput-object p1, p0, Lcom/google/android/material/textfield/e$h;->this$0:Lcom/google/android/material/textfield/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 5
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
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/material/textfield/e$h$a;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, p0, v0}, Lcom/google/android/material/textfield/e$h$a;-><init>(Lcom/google/android/material/textfield/e$h;Landroid/widget/AutoCompleteTextView;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/material/textfield/e$h;->this$0:Lcom/google/android/material/textfield/e;

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Lcom/google/android/material/textfield/e;->i(Lcom/google/android/material/textfield/e;)Landroid/view/View$OnFocusChangeListener;

    .line 29
    move-result-object v3

    .line 30
    const/4 v4, 0x0

    .line 31
    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/material/textfield/e;->j()Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 48
    .line 49
    :cond_1
    if-ne p2, v1, :cond_2

    .line 50
    .line 51
    iget-object p2, p0, Lcom/google/android/material/textfield/e$h;->this$0:Lcom/google/android/material/textfield/e;

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lcom/google/android/material/textfield/e;->k(Lcom/google/android/material/textfield/e;)Landroid/view/View$OnAttachStateChangeListener;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 59
    .line 60
    iget-object p1, p0, Lcom/google/android/material/textfield/e$h;->this$0:Lcom/google/android/material/textfield/e;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/google/android/material/textfield/e;->l(Lcom/google/android/material/textfield/e;)V

    .line 64
    :cond_2
    return-void
.end method
