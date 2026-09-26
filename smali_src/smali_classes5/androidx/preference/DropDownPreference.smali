.class public Landroidx/preference/DropDownPreference;
.super Landroidx/preference/ListPreference;
.source "SourceFile"


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Landroidx/preference/R$attr;->dropdownPreferenceStyle:I

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Landroidx/preference/DropDownPreference$1;

    invoke-direct {p2, p0}, Landroidx/preference/DropDownPreference$1;-><init>(Landroidx/preference/DropDownPreference;)V

    iput-object p2, p0, Landroidx/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-object p1, p0, Landroidx/preference/DropDownPreference;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroidx/preference/DropDownPreference;->L0()Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 7
    invoke-direct {p0}, Landroidx/preference/DropDownPreference;->N0()V

    return-void
.end method

.method private M0(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->H0()[Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    array-length v1, v0

    .line 10
    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v1, :cond_1

    .line 14
    .line 15
    aget-object v2, v0, v1

    .line 16
    .line 17
    .line 18
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    return v1

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, -0x1

    .line 31
    return p1
.end method

.method private N0()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->F0()[Ljava/lang/CharSequence;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->F0()[Ljava/lang/CharSequence;

    .line 15
    move-result-object v0

    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    :goto_0
    if-ge v2, v1, :cond_0

    .line 20
    .line 21
    aget-object v3, v0, v2

    .line 22
    .line 23
    iget-object v4, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 24
    .line 25
    .line 26
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method protected J()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/preference/Preference;->J()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 11
    :cond_0
    return-void
.end method

.method protected L0()Landroid/widget/ArrayAdapter;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/preference/DropDownPreference;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    const v2, 0x1090009

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 11
    return-object v0
.end method

.method public N(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1    # Landroidx/preference/PreferenceViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3
    .line 4
    sget v1, Landroidx/preference/R$id;->spinner:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/widget/Spinner;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->I0()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Landroidx/preference/DropDownPreference;->M0(Ljava/lang/String;)I

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 38
    .line 39
    .line 40
    invoke-super {p0, p1}, Landroidx/preference/Preference;->N(Landroidx/preference/PreferenceViewHolder;)V

    .line 41
    return-void
.end method

.method protected O()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 6
    return-void
.end method
