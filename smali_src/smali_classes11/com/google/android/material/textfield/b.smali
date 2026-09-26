.class Lcom/google/android/material/textfield/b;
.super Lcom/google/android/material/textfield/f;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 0
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/f;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 4
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/material/textfield/f;->customEndIcon:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 19
    return-void
.end method
