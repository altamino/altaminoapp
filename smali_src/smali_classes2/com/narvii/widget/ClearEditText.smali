.class public Lcom/narvii/widget/ClearEditText;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mClearDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/ClearEditText;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/widget/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/util/FontAwesomeDrawable;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    sget v2, Lcom/narvii/lib/R$string;->ion_android_close:I

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    const v1, 0x3f59999a    # 0.85f

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/narvii/util/FontAwesomeDrawable;->setFocalArea(F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentHintTextColor()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/widget/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 43
    move-result v1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/widget/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v3}, Lcom/narvii/widget/ClearEditText;->setClearIconVisible(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/widget/ClearEditText;->setClearIconVisible(Z)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/widget/ClearEditText;->setClearIconVisible(Z)V

    .line 22
    .line 23
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/ClearEditText;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 29
    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 4
    move-result p2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ClearEditText;->setClearIconVisible(Z)V

    .line 19
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    aget-object v0, v0, v1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    aget-object v0, v0, v1

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 40
    move-result v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 44
    move-result v1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/widget/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 50
    move-result v2

    .line 51
    add-int/2addr v1, v2

    .line 52
    int-to-float v1, v1

    .line 53
    .line 54
    cmpg-float v0, v0, v1

    .line 55
    .line 56
    if-gez v0, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 60
    move-result v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 64
    move-result v1

    .line 65
    int-to-float v1, v1

    .line 66
    .line 67
    cmpl-float v0, v0, v1

    .line 68
    .line 69
    if-lez v0, :cond_2

    .line 70
    goto :goto_1

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 74
    move-result v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 78
    move-result v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 82
    move-result v2

    .line 83
    sub-int/2addr v1, v2

    .line 84
    .line 85
    iget-object v2, p0, Lcom/narvii/widget/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 89
    move-result v2

    .line 90
    sub-int/2addr v1, v2

    .line 91
    int-to-float v1, v1

    .line 92
    .line 93
    cmpl-float v0, v0, v1

    .line 94
    .line 95
    if-lez v0, :cond_2

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 99
    move-result v0

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 103
    move-result v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 107
    move-result v2

    .line 108
    sub-int/2addr v1, v2

    .line 109
    int-to-float v1, v1

    .line 110
    .line 111
    cmpg-float v0, v0, v1

    .line 112
    .line 113
    if-gez v0, :cond_2

    .line 114
    .line 115
    :goto_1
    const-string v0, ""

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const/4 v0, 0x0

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 126
    move-result p1

    .line 127
    return p1
.end method

.method public setClearIconColor(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/util/FontAwesomeDrawable;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/FontAwesomeDrawable;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    .line 12
    :cond_0
    return-void
.end method

.method protected setClearIconVisible(Z)V
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/widget/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    move-object v0, p1

    .line 14
    goto :goto_1

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    aget-object v0, v0, v1

    .line 22
    .line 23
    .line 24
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x1

    .line 27
    .line 28
    aget-object v1, v1, v2

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 38
    move-result-object p1

    .line 39
    const/4 v2, 0x2

    .line 40
    .line 41
    aget-object p1, p1, v2

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x3

    .line 47
    .line 48
    aget-object v2, v2, v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 11
    move-result p1

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ClearEditText;->setClearIconVisible(Z)V

    .line 20
    return-void
.end method

.method public setFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/ClearEditText;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method
