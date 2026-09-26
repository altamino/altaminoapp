.class public abstract Landroidx/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
.implements Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;
.implements Landroidx/preference/DialogPreference$TargetFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceFragment$DividerDecoration;,
        Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;,
        Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;,
        Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;,
        Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private final mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

.field private final mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field mList:Landroidx/recyclerview/widget/RecyclerView;

.field private mPreferenceManager:Landroidx/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;

.field private mStyledContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/preference/PreferenceFragment$DividerDecoration;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$DividerDecoration;-><init>(Landroidx/preference/PreferenceFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    .line 11
    .line 12
    sget v0, Landroidx/preference/R$layout;->preference_list_fragment:I

    .line 13
    .line 14
    iput v0, p0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    .line 15
    .line 16
    new-instance v0, Landroidx/preference/PreferenceFragment$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$1;-><init>(Landroidx/preference/PreferenceFragment;)V

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v0, Landroidx/preference/PreferenceFragment$2;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$2;-><init>(Landroidx/preference/PreferenceFragment;)V

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 29
    return-void
.end method

.method private q()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->h()Landroidx/preference/PreferenceScreen;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->Q()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->n()V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method b()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->h()Landroidx/preference/PreferenceScreen;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->g()Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->j(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->M()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->i()V

    .line 24
    return-void
.end method

.method public c(Landroidx/preference/Preference;)V
    .locals 3
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->f()Landroid/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->f()Landroid/app/Fragment;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->a(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    instance-of v2, v2, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->a(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    :cond_1
    if-eqz v0, :cond_2

    .line 44
    return-void

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    return-void

    .line 58
    .line 59
    :cond_3
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/preference/Preference;->q()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Landroidx/preference/EditTextPreferenceDialogFragment;->i(Ljava/lang/String;)Landroidx/preference/EditTextPreferenceDialogFragment;

    .line 69
    move-result-object p1

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_4
    instance-of v0, p1, Landroidx/preference/ListPreference;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/preference/Preference;->q()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Landroidx/preference/ListPreferenceDialogFragment;->i(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragment;

    .line 82
    move-result-object p1

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_5
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    .line 86
    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/preference/Preference;->q()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->i(Ljava/lang/String;)Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-virtual {p1, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 106
    return-void

    .line 107
    .line 108
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    const-string v0, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    throw p1
.end method

.method public d(Landroidx/preference/Preference;)Z
    .locals 2
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/preference/Preference;->l()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->f()Landroid/app/Fragment;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v0, v0, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->f()Landroid/app/Fragment;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->a(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    :cond_0
    if-nez v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    instance-of v0, v0, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->a(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    .line 45
    move-result v1

    .line 46
    :cond_1
    return v1
.end method

.method public e(Landroidx/preference/PreferenceScreen;)V
    .locals 1
    .param p1    # Landroidx/preference/PreferenceScreen;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->f()Landroid/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->f()Landroid/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->a(Landroidx/preference/PreferenceFragment;Landroidx/preference/PreferenceScreen;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    instance-of v0, v0, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->a(Landroidx/preference/PreferenceFragment;Landroidx/preference/PreferenceScreen;)Z

    .line 38
    :cond_1
    return-void
.end method

.method public f()Landroid/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public h()Landroidx/preference/PreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->j()Landroidx/preference/PreferenceScreen;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected i()V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    return-void
.end method

.method protected j(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .param p1    # Landroidx/preference/PreferenceScreen;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 6
    return-object v0
.end method

.method public k()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 10
    return-object v0
.end method

.method public abstract l(Landroid/os/Bundle;Ljava/lang/String;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public m(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object p3, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object p3

    .line 7
    .line 8
    const-string v0, "android.hardware.type.automotive"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 12
    move-result p3

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    sget p3, Landroidx/preference/R$id;->recycler_view:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    return-object p3

    .line 26
    .line 27
    :cond_0
    sget p3, Landroidx/preference/R$layout;->preference_recyclerview:I

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->k()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 42
    .line 43
    new-instance p2, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    .line 44
    .line 45
    .line 46
    invoke-direct {p2, p1}, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 50
    return-object p1
.end method

.method protected n()V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    return-void
.end method

.method public o(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceFragment$DividerDecoration;->e(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    sget v2, Landroidx/preference/R$attr;->preferenceTheme:I

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 23
    .line 24
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    sget v0, Landroidx/preference/R$style;->PreferenceThemeOverlay:I

    .line 29
    .line 30
    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 38
    .line 39
    iput-object v1, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 40
    .line 41
    new-instance v0, Landroidx/preference/PreferenceManager;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroidx/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->m(Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x0

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/preference/PreferenceFragment;->l(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 3
    .line 4
    sget-object v1, Landroidx/preference/R$styleable;->PreferenceFragment:[I

    .line 5
    .line 6
    sget v2, Landroidx/preference/R$attr;->preferenceFragmentStyle:I

    .line 7
    .line 8
    .line 9
    const v3, 0x1010506

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->a(Landroid/content/Context;II)I

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    sget v1, Landroidx/preference/R$styleable;->PreferenceFragment_android_layout:I

    .line 22
    .line 23
    iget v2, p0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 27
    move-result v1

    .line 28
    .line 29
    iput v1, p0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    .line 30
    .line 31
    sget v1, Landroidx/preference/R$styleable;->PreferenceFragment_android_divider:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    sget v2, Landroidx/preference/R$styleable;->PreferenceFragment_android_dividerHeight:I

    .line 38
    const/4 v3, -0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 42
    move-result v2

    .line 43
    .line 44
    sget v5, Landroidx/preference/R$styleable;->PreferenceFragment_allowDividerAfterLastItem:I

    .line 45
    const/4 v6, 0x1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 49
    move-result v5

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iget v0, p0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    const v0, 0x102003f

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    instance-of v4, v0, Landroid/view/ViewGroup;

    .line 74
    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1, v0, p3}, Landroidx/preference/PreferenceFragment;->m(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    iput-object p1, p0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    iget-object p3, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragment;->o(Landroid/graphics/drawable/Drawable;)V

    .line 94
    .line 95
    if-eq v2, v3, :cond_0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragment;->p(I)V

    .line 99
    .line 100
    :cond_0
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceFragment$DividerDecoration;->d(Z)V

    .line 104
    .line 105
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    if-nez p1, :cond_1

    .line 112
    .line 113
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    .line 118
    :cond_1
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 119
    .line 120
    iget-object p3, p0, Landroidx/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-object p2

    .line 125
    .line 126
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 127
    .line 128
    const-string p2, "Could not create RecyclerView"

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p1

    .line 133
    .line 134
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 135
    .line 136
    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    .line 137
    .line 138
    .line 139
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 140
    throw p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    iget-boolean v0, p0, Landroidx/preference/PreferenceFragment;->mHavePrefs:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;->q()V

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    .line 26
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 27
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
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->h()Landroidx/preference/PreferenceScreen;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->g0(Landroid/os/Bundle;)V

    .line 18
    .line 19
    const-string v0, "android:preferences"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 23
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->n(Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->l(Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 14
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->n(Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->l(Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 15
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string p1, "android:preferences"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->h()Landroidx/preference/PreferenceScreen;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->f0(Landroid/os/Bundle;)V

    .line 23
    .line 24
    :cond_0
    iget-boolean p1, p0, Landroidx/preference/PreferenceFragment;->mHavePrefs:Z

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->b()V

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 37
    const/4 p1, 0x0

    .line 38
    .line 39
    iput-object p1, p0, Landroidx/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 40
    :cond_1
    const/4 p1, 0x1

    .line 41
    .line 42
    iput-boolean p1, p0, Landroidx/preference/PreferenceFragment;->mInitDone:Z

    .line 43
    return-void
.end method

.method public p(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceFragment$DividerDecoration;->f(I)V

    .line 6
    return-void
.end method
