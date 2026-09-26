.class Lcom/google/android/material/textfield/a;
.super Lcom/google/android/material/textfield/f;
.source "SourceFile"


# static fields
.field private static final ANIMATION_FADE_DURATION:I = 0x64

.field private static final ANIMATION_SCALE_DURATION:I = 0x96

.field private static final ANIMATION_SCALE_FROM_VALUE:F = 0.8f


# instance fields
.field private final clearTextEndIconTextWatcher:Landroid/text/TextWatcher;

.field private final clearTextOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$f;

.field private final endIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$g;

.field private iconInAnim:Landroid/animation/AnimatorSet;

.field private iconOutAnim:Landroid/animation/ValueAnimator;

.field private final onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 0
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/f;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 4
    .line 5
    new-instance p1, Lcom/google/android/material/textfield/a$a;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/a$a;-><init>(Lcom/google/android/material/textfield/a;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/material/textfield/a;->clearTextEndIconTextWatcher:Landroid/text/TextWatcher;

    .line 11
    .line 12
    new-instance p1, Lcom/google/android/material/textfield/a$b;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/a$b;-><init>(Lcom/google/android/material/textfield/a;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/material/textfield/a;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 18
    .line 19
    new-instance p1, Lcom/google/android/material/textfield/a$c;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/a$c;-><init>(Lcom/google/android/material/textfield/a;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/material/textfield/a;->clearTextOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$f;

    .line 25
    .line 26
    new-instance p1, Lcom/google/android/material/textfield/a$d;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/a$d;-><init>(Lcom/google/android/material/textfield/a;)V

    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/material/textfield/a;->endIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$g;

    .line 32
    return-void
.end method

.method static synthetic e(Lcom/google/android/material/textfield/a;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/textfield/a;->m()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic f(Lcom/google/android/material/textfield/a;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/a;->i(Z)V

    .line 4
    return-void
.end method

.method static synthetic g(Lcom/google/android/material/textfield/a;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/textfield/a;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/textfield/a;)Landroid/text/TextWatcher;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/textfield/a;->clearTextEndIconTextWatcher:Landroid/text/TextWatcher;

    .line 3
    return-object p0
.end method

.method private i(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->K()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    .line 13
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/material/textfield/a;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->iconOutAnim:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_1
    if-nez p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->iconOutAnim:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->iconOutAnim:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 59
    :cond_2
    :goto_1
    return-void
.end method

.method private varargs j([F)Landroid/animation/ValueAnimator;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget-object v0, Le3/a;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    .line 11
    const-wide/16 v0, 0x64

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/material/textfield/a$h;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/a$h;-><init>(Lcom/google/android/material/textfield/a;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    return-object p1
.end method

.method private k()Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sget-object v1, Le3/a;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    .line 17
    const-wide/16 v1, 0x96

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    new-instance v1, Lcom/google/android/material/textfield/a$i;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/a$i;-><init>(Lcom/google/android/material/textfield/a;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private l()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/textfield/a;->k()Landroid/animation/ValueAnimator;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    new-array v2, v1, [F

    .line 8
    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v2}, Lcom/google/android/material/textfield/a;->j([F)Landroid/animation/ValueAnimator;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 17
    .line 18
    .line 19
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 20
    .line 21
    iput-object v3, p0, Lcom/google/android/material/textfield/a;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 22
    .line 23
    new-array v4, v1, [Landroid/animation/Animator;

    .line 24
    const/4 v5, 0x0

    .line 25
    .line 26
    aput-object v0, v4, v5

    .line 27
    const/4 v0, 0x1

    .line 28
    .line 29
    aput-object v2, v4, v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->iconInAnim:Landroid/animation/AnimatorSet;

    .line 35
    .line 36
    new-instance v2, Lcom/google/android/material/textfield/a$f;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/a$f;-><init>(Lcom/google/android/material/textfield/a;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    .line 44
    new-array v0, v1, [F

    .line 45
    .line 46
    .line 47
    fill-array-data v0, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/a;->j([F)Landroid/animation/ValueAnimator;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iput-object v0, p0, Lcom/google/android/material/textfield/a;->iconOutAnim:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    new-instance v1, Lcom/google/android/material/textfield/a$g;

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/a$g;-><init>(Lcom/google/android/material/textfield/a;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    return-void

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private m()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 30
    move-result v0

    .line 31
    .line 32
    if-lez v0, :cond_1

    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/material/textfield/f;->customEndIcon:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget v1, Ld3/e;->mtrl_ic_cancel:I

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    sget v2, Ld3/j;->clear_text_end_icon_content_description:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 35
    .line 36
    new-instance v1, Lcom/google/android/material/textfield/a$e;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/a$e;-><init>(Lcom/google/android/material/textfield/a;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/android/material/textfield/a;->clearTextOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$f;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->g(Lcom/google/android/material/textfield/TextInputLayout$f;)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/android/material/textfield/a;->endIconChangedListener:Lcom/google/android/material/textfield/TextInputLayout$g;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->h(Lcom/google/android/material/textfield/TextInputLayout$g;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/google/android/material/textfield/a;->l()V

    .line 60
    return-void
.end method

.method c(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/a;->i(Z)V

    .line 13
    return-void
.end method
