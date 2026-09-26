.class public Landroidx/preference/EditTextPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragment;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SAVE_STATE_TEXT:Ljava/lang/String; = "EditTextPreferenceDialogFragment.text"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragment;-><init>()V

    .line 4
    return-void
.end method

.method private h()Landroidx/preference/EditTextPreference;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->a()Landroidx/preference/DialogPreference;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/preference/EditTextPreference;

    .line 7
    return-object v0
.end method

.method public static i(Ljava/lang/String;)Landroidx/preference/EditTextPreferenceDialogFragment;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/preference/EditTextPreferenceDialogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/preference/EditTextPreferenceDialogFragment;-><init>()V

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
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 20
    return-object v0
.end method


# virtual methods
.method protected b()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method protected c(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->c(Landroid/view/View;)V

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
    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

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
    return-void

    .line 41
    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "Dialog view must contain an EditText with id @android:id/edit"

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1
.end method

.method public e(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

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
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragment;->h()Landroidx/preference/EditTextPreference;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->b(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragment;->h()Landroidx/preference/EditTextPreference;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->G0(Ljava/lang/String;)V

    .line 30
    :cond_0
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
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragment;->h()Landroidx/preference/EditTextPreference;

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
    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

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
    iput-object p1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

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
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "EditTextPreferenceDialogFragment.text"

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 11
    return-void
.end method
