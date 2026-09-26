.class Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollToPreferenceObserver"
.end annotation


# instance fields
.field private final mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end field

.field private final mKey:Ljava/lang/String;

.field private final mList:Landroidx/recyclerview/widget/RecyclerView;

.field private final mPreference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/preference/Preference;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mPreference:Landroidx/preference/Preference;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mPreference:Landroidx/preference/Preference;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 12
    .line 13
    check-cast v1, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v0}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->b(Landroidx/preference/Preference;)I

    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 21
    .line 22
    check-cast v0, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->d(Ljava/lang/String;)I

    .line 28
    move-result v0

    .line 29
    :goto_0
    const/4 v1, -0x1

    .line 30
    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 37
    :cond_1
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->a()V

    .line 4
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->a()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->a()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->a()V

    .line 4
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->a()V

    .line 4
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->a()V

    .line 4
    return-void
.end method
