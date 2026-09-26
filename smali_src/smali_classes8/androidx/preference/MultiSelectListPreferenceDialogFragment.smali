.class public Landroidx/preference/MultiSelectListPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragment;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SAVE_STATE_CHANGED:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragment.changed"

.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragment.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragment.entryValues"

.field private static final SAVE_STATE_VALUES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragment.values"


# instance fields
.field mEntries:[Ljava/lang/CharSequence;

.field mEntryValues:[Ljava/lang/CharSequence;

.field mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPreferenceChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashSet;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    .line 11
    return-void
.end method

.method private h()Landroidx/preference/MultiSelectListPreference;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->a()Landroidx/preference/DialogPreference;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/preference/MultiSelectListPreference;

    .line 7
    return-object v0
.end method

.method public static i(Ljava/lang/String;)Landroidx/preference/MultiSelectListPreferenceDialogFragment;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/preference/MultiSelectListPreferenceDialogFragment;-><init>()V

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
    invoke-direct {p0}, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->h()Landroidx/preference/MultiSelectListPreference;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->b(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroidx/preference/MultiSelectListPreference;->H0(Ljava/util/Set;)V

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    .line 24
    iput-boolean p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 25
    return-void
.end method

.method protected f(Landroid/app/AlertDialog$Builder;)V
    .locals 5
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
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 6
    array-length v0, v0

    .line 7
    .line 8
    new-array v1, v0, [Z

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    .line 14
    .line 15
    iget-object v4, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 16
    .line 17
    aget-object v4, v4, v2

    .line 18
    .line 19
    .line 20
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    .line 24
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v3

    .line 26
    .line 27
    aput-boolean v3, v1, v2

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 33
    .line 34
    new-instance v2, Landroidx/preference/MultiSelectListPreferenceDialogFragment$1;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, p0}, Landroidx/preference/MultiSelectListPreferenceDialogFragment$1;-><init>(Landroidx/preference/MultiSelectListPreferenceDialogFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->h()Landroidx/preference/MultiSelectListPreference;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->E0()[Ljava/lang/CharSequence;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->F0()[Ljava/lang/CharSequence;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->G0()Ljava/util/Set;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    iput-boolean v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->E0()[Ljava/lang/CharSequence;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iput-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->F0()[Ljava/lang/CharSequence;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iput-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v0, "MultiSelectListPreference requires an entries array and an entryValues array."

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1

    .line 60
    .line 61
    :cond_1
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    .line 67
    .line 68
    const-string v2, "MultiSelectListPreferenceDialogFragment.values"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    .line 75
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 76
    .line 77
    const-string v1, "MultiSelectListPreferenceDialogFragment.changed"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 81
    move-result v0

    .line 82
    .line 83
    iput-boolean v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 84
    .line 85
    const-string v0, "MultiSelectListPreferenceDialogFragment.entries"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    iput-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 92
    .line 93
    const-string v0, "MultiSelectListPreferenceDialogFragment.entryValues"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    iput-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 100
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
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    const-string v1, "MultiSelectListPreferenceDialogFragment.values"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 16
    .line 17
    const-string v0, "MultiSelectListPreferenceDialogFragment.changed"

    .line 18
    .line 19
    iget-boolean v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    .line 24
    const-string v0, "MultiSelectListPreferenceDialogFragment.entries"

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    const-string v0, "MultiSelectListPreferenceDialogFragment.entryValues"

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method
