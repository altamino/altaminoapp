.class public Landroidx/preference/internal/PreferenceImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# instance fields
.field private mMaxHeight:I

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/preference/internal/PreferenceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/internal/PreferenceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/preference/internal/PreferenceImageView;->mMaxWidth:I

    iput v0, p0, Landroidx/preference/internal/PreferenceImageView;->mMaxHeight:I

    .line 4
    sget-object v1, Landroidx/preference/R$styleable;->PreferenceImageView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Landroidx/preference/R$styleable;->PreferenceImageView_maxWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/internal/PreferenceImageView;->setMaxWidth(I)V

    .line 6
    sget p2, Landroidx/preference/R$styleable;->PreferenceImageView_maxHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/internal/PreferenceImageView;->setMaxHeight(I)V

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroidx/preference/internal/PreferenceImageView;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroidx/preference/internal/PreferenceImageView;->mMaxWidth:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    const/high16 v2, -0x80000000

    .line 10
    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 17
    move-result v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/preference/internal/PreferenceImageView;->getMaxWidth()I

    .line 21
    move-result v4

    .line 22
    .line 23
    if-eq v4, v1, :cond_2

    .line 24
    .line 25
    if-lt v4, v3, :cond_1

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 31
    move-result p1

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eq v0, v2, :cond_3

    .line 38
    .line 39
    if-nez v0, :cond_5

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 43
    move-result v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/preference/internal/PreferenceImageView;->getMaxHeight()I

    .line 47
    move-result v4

    .line 48
    .line 49
    if-eq v4, v1, :cond_5

    .line 50
    .line 51
    if-lt v4, v3, :cond_4

    .line 52
    .line 53
    if-nez v0, :cond_5

    .line 54
    .line 55
    .line 56
    :cond_4
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 57
    move-result p2

    .line 58
    .line 59
    .line 60
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 61
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/preference/internal/PreferenceImageView;->mMaxHeight:I

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 6
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/preference/internal/PreferenceImageView;->mMaxWidth:I

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 6
    return-void
.end method
