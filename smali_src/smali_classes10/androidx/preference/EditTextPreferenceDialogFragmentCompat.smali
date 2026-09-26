.class public Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "SourceFile"


# static fields
.field private static final SAVE_STATE_TEXT:Ljava/lang/String; = "EditTextPreferenceDialogFragment.text"

.field private static final SHOW_REQUEST_TIMEOUT:I = 0x3e8


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mShowRequestTime:J

.field private final mShowSoftInputRunnable:Ljava/lang/Runnable;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat$1;-><init>(Landroidx/preference/EditTextPreferenceDialogFragmentCompat;)V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowSoftInputRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    .line 15
    return-void
.end method

.method private n()Landroidx/preference/EditTextPreference;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->f()Landroidx/preference/DialogPreference;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/preference/EditTextPreference;

    .line 7
    return-object v0
.end method

.method private o()Z
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    .line 3
    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const-wide/16 v2, 0x3e8

    .line 11
    add-long/2addr v0, v2

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 15
    move-result-wide v2

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public static p(Ljava/lang/String;)Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 12
    .line 13
    const-string v2, "key"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 20
    return-object v0
.end method

.method private r(Z)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 6
    move-result-wide v0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    :goto_0
    iput-wide v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    .line 12
    return-void
.end method


# virtual methods
.method protected g()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method protected h(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->h(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x1020003

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Landroid/widget/EditText;

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 36
    move-result v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->n()Landroidx/preference/EditTextPreference;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->E0()Landroidx/preference/EditTextPreference$OnBindEditTextListener;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->n()Landroidx/preference/EditTextPreference;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->E0()Landroidx/preference/EditTextPreference$OnBindEditTextListener;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v0}, Landroidx/preference/EditTextPreference$OnBindEditTextListener;->a(Landroid/widget/EditText;)V

    .line 63
    :cond_0
    return-void

    .line 64
    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v0, "Dialog view must contain an EditText with id @android:id/edit"

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1
.end method

.method public j(Z)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->n()Landroidx/preference/EditTextPreference;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->b(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->G0(Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method

.method protected m()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->r(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->q()V

    .line 8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->n()Landroidx/preference/EditTextPreference;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->F0()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    .line 25
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "EditTextPreferenceDialogFragment.text"

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 11
    return-void
.end method

.method q()V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->o()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v2, "input_method"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->r(Z)V

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowSoftInputRunnable:Ljava/lang/Runnable;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowSoftInputRunnable:Ljava/lang/Runnable;

    .line 56
    .line 57
    const-wide/16 v2, 0x32

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    goto :goto_1

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->r(Z)V

    .line 65
    :cond_3
    :goto_1
    return-void
.end method
