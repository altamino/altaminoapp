.class public Landroidx/preference/SwitchPreference;
.super Landroidx/preference/TwoStatePreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Landroidx/preference/SwitchPreference$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Landroidx/preference/R$attr;->switchPreferenceStyle:I

    const v1, 0x101036d

    .line 11
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 10
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v0, Landroidx/preference/SwitchPreference$Listener;

    invoke-direct {v0, p0}, Landroidx/preference/SwitchPreference$Listener;-><init>(Landroidx/preference/SwitchPreference;)V

    iput-object v0, p0, Landroidx/preference/SwitchPreference;->mListener:Landroidx/preference/SwitchPreference$Listener;

    .line 3
    sget-object v0, Landroidx/preference/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Landroidx/preference/R$styleable;->SwitchPreference_summaryOn:I

    sget p3, Landroidx/preference/R$styleable;->SwitchPreference_android_summaryOn:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->o(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->C0(Ljava/lang/CharSequence;)V

    .line 5
    sget p2, Landroidx/preference/R$styleable;->SwitchPreference_summaryOff:I

    sget p3, Landroidx/preference/R$styleable;->SwitchPreference_android_summaryOff:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->o(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->B0(Ljava/lang/CharSequence;)V

    .line 6
    sget p2, Landroidx/preference/R$styleable;->SwitchPreference_switchTextOn:I

    sget p3, Landroidx/preference/R$styleable;->SwitchPreference_android_switchTextOn:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->o(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/SwitchPreference;->G0(Ljava/lang/CharSequence;)V

    .line 7
    sget p2, Landroidx/preference/R$styleable;->SwitchPreference_switchTextOff:I

    sget p3, Landroidx/preference/R$styleable;->SwitchPreference_android_switchTextOff:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->o(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/SwitchPreference;->F0(Ljava/lang/CharSequence;)V

    .line 8
    sget p2, Landroidx/preference/R$styleable;->SwitchPreference_disableDependentsState:I

    sget p3, Landroidx/preference/R$styleable;->SwitchPreference_android_disableDependentsState:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->A0(Z)V

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private H0(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Landroid/widget/Switch;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v1, p1

    .line 6
    .line 7
    check-cast v1, Landroid/widget/Switch;

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 12
    .line 13
    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    move-object v1, p1

    .line 17
    .line 18
    check-cast v1, Landroid/widget/Checkable;

    .line 19
    .line 20
    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 24
    .line 25
    :cond_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    check-cast p1, Landroid/widget/Switch;

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/preference/SwitchPreference;->mListener:Landroidx/preference/SwitchPreference$Listener;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    :cond_2
    return-void
.end method

.method private I0(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "accessibility"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    .line 22
    :cond_0
    const v0, 0x1020040

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Landroidx/preference/SwitchPreference;->H0(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    const v0, 0x1020010

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->D0(Landroid/view/View;)V

    .line 40
    return-void
.end method


# virtual methods
.method public F0(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()V

    .line 6
    return-void
.end method

.method public G0(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()V

    .line 6
    return-void
.end method

.method public N(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1    # Landroidx/preference/PreferenceViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/preference/Preference;->N(Landroidx/preference/PreferenceViewHolder;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x1020040

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->a(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroidx/preference/SwitchPreference;->H0(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->E0(Landroidx/preference/PreferenceViewHolder;)V

    .line 17
    return-void
.end method

.method protected Y(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/preference/Preference;->Y(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreference;->I0(Landroid/view/View;)V

    .line 7
    return-void
.end method
