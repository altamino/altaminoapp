.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SeekBarPreference$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarPreference"


# instance fields
.field mAdjustable:Z

.field private mMax:I

.field mMin:I

.field mSeekBar:Landroid/widget/SeekBar;

.field private final mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarIncrement:I

.field private final mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field mSeekBarValue:I

.field private mSeekBarValueTextView:Landroid/widget/TextView;

.field private mShowSeekBarValue:Z

.field mTrackingTouch:Z

.field mUpdatesContinuously:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    sget v0, Landroidx/preference/R$attr;->seekBarPreferenceStyle:I

    .line 13
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 12
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v0, Landroidx/preference/SeekBarPreference$1;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$1;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3
    new-instance v0, Landroidx/preference/SeekBarPreference$2;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$2;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 4
    sget-object v0, Landroidx/preference/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_min:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 6
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_android_max:I

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->y0(I)V

    .line 7
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->z0(I)V

    .line 8
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_adjustable:I

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->mAdjustable:Z

    .line 9
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->mShowSeekBarValue:Z

    .line 10
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_updatesContinuously:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->mUpdatesContinuously:Z

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private A0(IZ)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 3
    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    move p1, v0

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    .line 8
    .line 9
    if-le p1, v0, :cond_1

    .line 10
    move p1, v0

    .line 11
    .line 12
    :cond_1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    .line 13
    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    iput p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->C0(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a0(I)Z

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()V

    .line 28
    :cond_2
    return-void
.end method


# virtual methods
.method B0(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr v0, v1

    .line 8
    .line 9
    iget v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->b(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    const/4 p1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0, p1}, Landroidx/preference/SeekBarPreference;->A0(IZ)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    .line 29
    .line 30
    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 31
    sub-int/2addr v0, v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 35
    .line 36
    iget p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->C0(I)V

    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method C0(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_0
    return-void
.end method

.method public N(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2
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
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 11
    .line 12
    sget v0, Landroidx/preference/R$id;->seekbar:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->a(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/widget/SeekBar;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 21
    .line 22
    sget v0, Landroidx/preference/R$id;->seekbar_value:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->a(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    .line 31
    .line 32
    iget-boolean v0, p0, Landroidx/preference/SeekBarPreference;->mShowSeekBarValue:Z

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    const/16 v0, 0x8

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    const/4 p1, 0x0

    .line 46
    .line 47
    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    .line 48
    .line 49
    :goto_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    const-string p1, "SeekBarPreference"

    .line 54
    .line 55
    const-string v0, "SeekBar view is null in onBindViewHolder."

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 65
    .line 66
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 67
    .line 68
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    .line 69
    .line 70
    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 71
    sub-int/2addr v0, v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 75
    .line 76
    iget p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_2
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getKeyProgressIncrement()I

    .line 90
    move-result p1

    .line 91
    .line 92
    iput p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 93
    .line 94
    :goto_1
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 95
    .line 96
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    .line 97
    .line 98
    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 99
    sub-int/2addr v0, v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 103
    .line 104
    iget p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->C0(I)V

    .line 108
    .line 109
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/preference/Preference;->F()Z

    .line 113
    move-result v0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 117
    return-void
.end method

.method protected R(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 5
    move-result p1

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method protected V(Landroid/os/Parcelable;)V
    .locals 2
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-class v1, Landroidx/preference/SeekBarPreference$SavedState;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    check-cast p1, Landroidx/preference/SeekBarPreference$SavedState;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-super {p0, v0}, Landroidx/preference/Preference;->V(Landroid/os/Parcelable;)V

    .line 25
    .line 26
    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->mSeekBarValue:I

    .line 27
    .line 28
    iput v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    .line 29
    .line 30
    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->mMin:I

    .line 31
    .line 32
    iput v0, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 33
    .line 34
    iget p1, p1, Landroidx/preference/SeekBarPreference$SavedState;->mMax:I

    .line 35
    .line 36
    iput p1, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()V

    .line 40
    return-void

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->V(Landroid/os/Parcelable;)V

    .line 44
    return-void
.end method

.method protected W()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/preference/Preference;->W()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->G()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    new-instance v1, Landroidx/preference/SeekBarPreference$SavedState;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0}, Landroidx/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 17
    .line 18
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    .line 19
    .line 20
    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->mSeekBarValue:I

    .line 21
    .line 22
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 23
    .line 24
    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->mMin:I

    .line 25
    .line 26
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    .line 27
    .line 28
    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->mMax:I

    .line 29
    return-object v1
.end method

.method public final y0(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 3
    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    move p1, v0

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    iput p1, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()V

    .line 15
    :cond_1
    return-void
.end method

.method public final z0(I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/preference/SeekBarPreference;->mMax:I

    .line 7
    .line 8
    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 13
    move-result p1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 17
    move-result p1

    .line 18
    .line 19
    iput p1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()V

    .line 23
    :cond_0
    return-void
.end method
