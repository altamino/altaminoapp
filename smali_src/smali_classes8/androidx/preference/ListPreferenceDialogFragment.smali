.class public Landroidx/preference/ListPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragment;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "ListPreferenceDialogFragment.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "ListPreferenceDialogFragment.entryValues"

.field private static final SAVE_STATE_INDEX:Ljava/lang/String; = "ListPreferenceDialogFragment.index"


# instance fields
.field mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


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

.method private h()Landroidx/preference/ListPreference;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->a()Landroidx/preference/DialogPreference;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/preference/ListPreference;

    .line 7
    return-object v0
.end method

.method public static i(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragment;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/preference/ListPreferenceDialogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/preference/ListPreferenceDialogFragment;-><init>()V

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
.method public e(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragment;->h()Landroidx/preference/ListPreference;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Landroidx/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 9
    .line 10
    if-ltz p1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 13
    .line 14
    aget-object p1, v1, p1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->b(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->K0(Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method protected f(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1    # Landroid/app/AlertDialog$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->f(Landroid/app/AlertDialog$Builder;)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 6
    .line 7
    iget v1, p0, Landroidx/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 8
    .line 9
    new-instance v2, Landroidx/preference/ListPreferenceDialogFragment$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, p0}, Landroidx/preference/ListPreferenceDialogFragment$1;-><init>(Landroidx/preference/ListPreferenceDialogFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 20
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
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
    if-nez p1, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragment;->h()Landroidx/preference/ListPreference;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->F0()[Ljava/lang/CharSequence;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->H0()[Ljava/lang/CharSequence;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->I0()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->E0(Ljava/lang/String;)I

    .line 29
    move-result v0

    .line 30
    .line 31
    iput v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->F0()[Ljava/lang/CharSequence;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iput-object v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->H0()[Ljava/lang/CharSequence;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "ListPreference requires an entries array and an entryValues array."

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    .line 54
    :cond_1
    const-string v0, "ListPreferenceDialogFragment.index"

    .line 55
    const/4 v1, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 59
    move-result v0

    .line 60
    .line 61
    iput v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 62
    .line 63
    const-string v0, "ListPreferenceDialogFragment.entries"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iput-object v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 70
    .line 71
    const-string v0, "ListPreferenceDialogFragment.entryValues"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    iput-object p1, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 78
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
    const-string v0, "ListPreferenceDialogFragment.index"

    .line 6
    .line 7
    iget v1, p0, Landroidx/preference/ListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    const-string v0, "ListPreferenceDialogFragment.entries"

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    const-string v0, "ListPreferenceDialogFragment.entryValues"

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/preference/ListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method
