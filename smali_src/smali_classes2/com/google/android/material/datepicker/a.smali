.class final Lcom/google/android/material/datepicker/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final backgroundColor:Landroid/content/res/ColorStateList;

.field private final insets:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final itemShape:Lcom/google/android/material/shape/k;

.field private final strokeColor:Landroid/content/res/ColorStateList;

.field private final strokeWidth:I

.field private final textColor:Landroid/content/res/ColorStateList;


# direct methods
.method private constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/shape/k;Landroid/graphics/Rect;)V
    .locals 1
    .param p6    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iget v0, p6, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/core/util/Preconditions;->f(I)I

    .line 9
    .line 10
    iget v0, p6, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/core/util/Preconditions;->f(I)I

    .line 14
    .line 15
    iget v0, p6, Landroid/graphics/Rect;->right:I

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroidx/core/util/Preconditions;->f(I)I

    .line 19
    .line 20
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/core/util/Preconditions;->f(I)I

    .line 24
    .line 25
    iput-object p6, p0, Lcom/google/android/material/datepicker/a;->insets:Landroid/graphics/Rect;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/google/android/material/datepicker/a;->textColor:Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/material/datepicker/a;->backgroundColor:Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/google/android/material/datepicker/a;->strokeColor:Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    iput p4, p0, Lcom/google/android/material/datepicker/a;->strokeWidth:I

    .line 34
    .line 35
    iput-object p5, p0, Lcom/google/android/material/datepicker/a;->itemShape:Lcom/google/android/material/shape/k;

    .line 36
    return-void
.end method

.method static a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/a;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    const/4 v1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    .line 8
    :goto_0
    const-string v2, "Cannot create a CalendarItemStyle with a styleResId of 0"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/Object;)V

    .line 12
    .line 13
    sget-object v1, Ld3/l;->MaterialCalendarItem:[I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    sget v1, Ld3/l;->MaterialCalendarItem_android_insetLeft:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 23
    move-result v1

    .line 24
    .line 25
    sget v2, Ld3/l;->MaterialCalendarItem_android_insetTop:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 29
    move-result v2

    .line 30
    .line 31
    sget v3, Ld3/l;->MaterialCalendarItem_android_insetRight:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 35
    move-result v3

    .line 36
    .line 37
    sget v4, Ld3/l;->MaterialCalendarItem_android_insetBottom:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 41
    move-result v4

    .line 42
    .line 43
    new-instance v11, Landroid/graphics/Rect;

    .line 44
    .line 45
    .line 46
    invoke-direct {v11, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 47
    .line 48
    sget v1, Ld3/l;->MaterialCalendarItem_itemFillColor:I

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p1, v1}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 52
    move-result-object v6

    .line 53
    .line 54
    sget v1, Ld3/l;->MaterialCalendarItem_itemTextColor:I

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p1, v1}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 58
    move-result-object v7

    .line 59
    .line 60
    sget v1, Ld3/l;->MaterialCalendarItem_itemStrokeColor:I

    .line 61
    .line 62
    .line 63
    invoke-static {p0, p1, v1}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 64
    move-result-object v8

    .line 65
    .line 66
    sget v1, Ld3/l;->MaterialCalendarItem_itemStrokeWidth:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 70
    move-result v9

    .line 71
    .line 72
    sget v1, Ld3/l;->MaterialCalendarItem_itemShapeAppearance:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 76
    move-result v1

    .line 77
    .line 78
    sget v2, Ld3/l;->MaterialCalendarItem_itemShapeAppearanceOverlay:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 82
    move-result v0

    .line 83
    .line 84
    .line 85
    invoke-static {p0, v1, v0}, Lcom/google/android/material/shape/k;->b(Landroid/content/Context;II)Lcom/google/android/material/shape/k$b;

    .line 86
    move-result-object p0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/google/android/material/shape/k$b;->m()Lcom/google/android/material/shape/k;

    .line 90
    move-result-object v10

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    .line 95
    new-instance p0, Lcom/google/android/material/datepicker/a;

    .line 96
    move-object v5, p0

    .line 97
    .line 98
    .line 99
    invoke-direct/range {v5 .. v11}, Lcom/google/android/material/datepicker/a;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/shape/k;Landroid/graphics/Rect;)V

    .line 100
    return-object p0
.end method


# virtual methods
.method b()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->insets:Landroid/graphics/Rect;

    .line 3
    .line 4
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 5
    return v0
.end method

.method c()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->insets:Landroid/graphics/Rect;

    .line 3
    .line 4
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 5
    return v0
.end method

.method d(Landroid/widget/TextView;)V
    .locals 9
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/material/shape/g;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/material/shape/g;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/android/material/shape/g;-><init>()V

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->itemShape:Lcom/google/android/material/shape/k;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/g;->setShapeAppearanceModel(Lcom/google/android/material/shape/k;)V

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->itemShape:Lcom/google/android/material/shape/k;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/g;->setShapeAppearanceModel(Lcom/google/android/material/shape/k;)V

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->backgroundColor:Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/g;->Z(Landroid/content/res/ColorStateList;)V

    .line 26
    .line 27
    iget v2, p0, Lcom/google/android/material/datepicker/a;->strokeWidth:I

    .line 28
    int-to-float v2, v2

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/material/datepicker/a;->strokeColor:Landroid/content/res/ColorStateList;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/shape/g;->j0(FLandroid/content/res/ColorStateList;)V

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->textColor:Landroid/content/res/ColorStateList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 39
    .line 40
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->textColor:Landroid/content/res/ColorStateList;

    .line 43
    .line 44
    const/16 v3, 0x1e

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 52
    .line 53
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/google/android/material/datepicker/a;->insets:Landroid/graphics/Rect;

    .line 56
    .line 57
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 58
    .line 59
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 60
    .line 61
    iget v7, v1, Landroid/graphics/Rect;->right:I

    .line 62
    .line 63
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 64
    move-object v3, v0

    .line 65
    .line 66
    .line 67
    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->y0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method
