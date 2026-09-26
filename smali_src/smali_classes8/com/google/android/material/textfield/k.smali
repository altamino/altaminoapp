.class Lcom/google/android/material/textfield/k;
.super Lcom/google/android/material/textfield/f;
.source "SourceFile"


# instance fields
.field private final onEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$f;

.field private final onEndIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$g;

.field private final textWatcher:Landroid/text/TextWatcher;


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
    .line 5
    new-instance p1, Lcom/google/android/material/textfield/k$a;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/k$a;-><init>(Lcom/google/android/material/textfield/k;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/material/textfield/k;->textWatcher:Landroid/text/TextWatcher;

    .line 11
    .line 12
    new-instance p1, Lcom/google/android/material/textfield/k$b;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/k$b;-><init>(Lcom/google/android/material/textfield/k;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/material/textfield/k;->onEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$f;

    .line 18
    .line 19
    new-instance p1, Lcom/google/android/material/textfield/k$c;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/k$c;-><init>(Lcom/google/android/material/textfield/k;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/material/textfield/k;->onEndIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$g;

    .line 25
    return-void
.end method

.method static synthetic e(Lcom/google/android/material/textfield/k;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/textfield/k;->g()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic f(Lcom/google/android/material/textfield/k;)Landroid/text/TextWatcher;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/textfield/k;->textWatcher:Landroid/text/TextWatcher;

    .line 3
    return-object p0
.end method

.method private g()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method private static h(Landroid/widget/EditText;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x10

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 14
    move-result v0

    .line 15
    .line 16
    const/16 v1, 0x80

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 22
    move-result v0

    .line 23
    .line 24
    const/16 v1, 0x90

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 30
    move-result p0

    .line 31
    .line 32
    const/16 v0, 0xe0

    .line 33
    .line 34
    if-ne p0, v0, :cond_1

    .line 35
    :cond_0
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    :goto_0
    return p0
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/material/textfield/f;->customEndIcon:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget v1, Ld3/e;->design_password_eye:I

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    sget v2, Ld3/j;->password_toggle_content_description:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 40
    .line 41
    new-instance v1, Lcom/google/android/material/textfield/k$d;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/k$d;-><init>(Lcom/google/android/material/textfield/k;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/android/material/textfield/k;->onEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$f;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->g(Lcom/google/android/material/textfield/TextInputLayout$f;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/material/textfield/k;->onEndIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$g;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->h(Lcom/google/android/material/textfield/TextInputLayout$g;)V

    .line 62
    .line 63
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lcom/google/android/material/textfield/k;->h(Landroid/widget/EditText;)Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 81
    :cond_1
    return-void
.end method
