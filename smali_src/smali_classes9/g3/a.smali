.class public Lg3/a;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "SourceFile"


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final ENABLED_CHECKED_STATES:[[I


# instance fields
.field private centerIfNoTextEnabled:Z

.field private materialThemeColorsTintList:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private useMaterialThemeColors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget v0, Ld3/k;->Widget_MaterialComponents_CompoundButton_CheckBox:I

    sput v0, Lg3/a;->DEF_STYLE_RES:I

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const v1, 0x101009e

    const v2, 0x10100a0

    filled-new-array {v1, v2}, [I

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const v3, -0x10100a0

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const v1, -0x101009e

    filled-new-array {v1, v2}, [I

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const/4 v2, 0x3

    filled-new-array {v1, v3}, [I

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lg3/a;->ENABLED_CHECKED_STATES:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lg3/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Ld3/b;->checkboxStyle:I

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lg3/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v4, Lg3/a;->DEF_STYLE_RES:I

    .line 3
    invoke-static {p1, p2, p3, v4}, Lr3/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    sget-object v2, Ld3/l;->MaterialCheckBox:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    sget p3, Ld3/l;->MaterialCheckBox_buttonTint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 10
    :cond_0
    sget p1, Ld3/l;->MaterialCheckBox_useMaterialThemeColors:I

    .line 11
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lg3/a;->useMaterialThemeColors:Z

    .line 12
    sget p1, Ld3/l;->MaterialCheckBox_centerIfNoTextEnabled:I

    const/4 p3, 0x1

    .line 13
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lg3/a;->centerIfNoTextEnabled:Z

    .line 14
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lg3/a;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lg3/a;->ENABLED_CHECKED_STATES:[[I

    .line 7
    array-length v1, v0

    .line 8
    .line 9
    new-array v1, v1, [I

    .line 10
    .line 11
    sget v2, Ld3/b;->colorControlActivated:I

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v2}, Li3/a;->d(Landroid/view/View;I)I

    .line 15
    move-result v2

    .line 16
    .line 17
    sget v3, Ld3/b;->colorSurface:I

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v3}, Li3/a;->d(Landroid/view/View;I)I

    .line 21
    move-result v3

    .line 22
    .line 23
    sget v4, Ld3/b;->colorOnSurface:I

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v4}, Li3/a;->d(Landroid/view/View;I)I

    .line 27
    move-result v4

    .line 28
    .line 29
    const/high16 v5, 0x3f800000    # 1.0f

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v2, v5}, Li3/a;->h(IIF)I

    .line 33
    move-result v2

    .line 34
    const/4 v5, 0x0

    .line 35
    .line 36
    aput v2, v1, v5

    .line 37
    .line 38
    .line 39
    const v2, 0x3f0a3d71    # 0.54f

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4, v2}, Li3/a;->h(IIF)I

    .line 43
    move-result v2

    .line 44
    const/4 v5, 0x1

    .line 45
    .line 46
    aput v2, v1, v5

    .line 47
    const/4 v2, 0x2

    .line 48
    .line 49
    .line 50
    const v5, 0x3ec28f5c    # 0.38f

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v4, v5}, Li3/a;->h(IIF)I

    .line 54
    move-result v6

    .line 55
    .line 56
    aput v6, v1, v2

    .line 57
    const/4 v2, 0x3

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4, v5}, Li3/a;->h(IIF)I

    .line 61
    move-result v3

    .line 62
    .line 63
    aput v3, v1, v2

    .line 64
    .line 65
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 69
    .line 70
    iput-object v2, p0, Lg3/a;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    .line 71
    .line 72
    :cond_0
    iget-object v0, p0, Lg3/a;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    .line 73
    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/CheckBox;->onAttachedToWindow()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lg3/a;->useMaterialThemeColors:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->b(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lg3/a;->setUseMaterialThemeColors(Z)V

    .line 18
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lg3/a;->centerIfNoTextEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/google/android/material/internal/u;->g(Landroid/view/View;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    const/4 v1, -0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 37
    move-result v3

    .line 38
    sub-int/2addr v2, v3

    .line 39
    .line 40
    div-int/lit8 v2, v2, 0x2

    .line 41
    mul-int/2addr v2, v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    move-result v1

    .line 46
    int-to-float v3, v2

    .line 47
    const/4 v4, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    .line 52
    .line 53
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 73
    add-int/2addr v1, v2

    .line 74
    .line 75
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 76
    .line 77
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 78
    add-int/2addr v4, v2

    .line 79
    .line 80
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1, v3, v4, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->l(Landroid/graphics/drawable/Drawable;IIII)V

    .line 84
    :cond_1
    return-void

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    return-void
.end method

.method public setCenterIfNoTextEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg3/a;->centerIfNoTextEnabled:Z

    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lg3/a;->useMaterialThemeColors:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lg3/a;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 17
    :goto_0
    return-void
.end method
