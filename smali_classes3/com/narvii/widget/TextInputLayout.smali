.class public Lcom/narvii/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/TextInputLayout$SavedState;
    }
.end annotation


# static fields
.field public static final PASS_LIMIT:I = 0x6


# instance fields
.field private editText:Landroid/widget/EditText;

.field private errorHintView:Landroid/widget/TextView;

.field private imgPasswordVisiableToggleView:Landroid/widget/ImageView;

.field private inputStatusIndicator:Landroid/view/View;

.field private passCountLimit:I

.field private passwordHintView:Landroid/view/View;

.field private showPasswordVisiableToggle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget-object v0, Lcom/narvii/amino/R$styleable;->TextInputLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x10

    const/4 v0, 0x6

    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/TextInputLayout;->passCountLimit:I

    const/16 p2, 0x11

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/TextInputLayout;->showPasswordVisiableToggle:Z

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/narvii/widget/TextInputLayout;->passwordHintView:Landroid/view/View;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/narvii/widget/TextInputLayout;->passCountLimit:I

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/TextInputLayout;->imgPasswordVisiableToggleView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-boolean p1, p0, Lcom/narvii/widget/TextInputLayout;->showPasswordVisiableToggle:Z

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    :cond_3
    invoke-virtual {p0, v2}, Lcom/narvii/widget/TextInputLayout;->updateStatus(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 178
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getEditContent()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/narvii/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090824

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    .line 142
    instance-of p1, p1, Landroid/text/method/PasswordTransformationMethod;

    xor-int/lit8 p1, p1, 0x1

    .line 143
    iget-object v0, p0, Lcom/narvii/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 145
    iget-object v0, p0, Lcom/narvii/widget/TextInputLayout;->imgPasswordVisiableToggleView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_2

    const p1, 0x7f08038b

    goto :goto_1

    :cond_2
    const p1, 0x7f0804f5

    :goto_1
    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object p1, p0, Lcom/narvii/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :goto_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0903cd

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/TextInputLayout;->inputStatusIndicator:Landroid/view/View;

    const v0, 0x7f0903bb

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const v0, 0x7f0905aa

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/TextInputLayout;->errorHintView:Landroid/widget/TextView;

    const v0, 0x7f090824

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/widget/TextInputLayout;->imgPasswordVisiableToggleView:Landroid/widget/ImageView;

    const v0, 0x7f090823

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/TextInputLayout;->passwordHintView:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/narvii/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0902f5

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/narvii/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/narvii/account/mobile/MyPhoneCountryCodePicker;->bindPhoneNumberEdit(Landroid/widget/EditText;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TextInputLayout;->imgPasswordVisiableToggleView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 184
    check-cast p1, Lcom/narvii/widget/TextInputLayout$SavedState;

    .line 185
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 186
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 187
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p1, Lcom/narvii/widget/TextInputLayout$SavedState;->childrenStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 161
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 162
    new-instance v1, Lcom/narvii/widget/TextInputLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/narvii/widget/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 163
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/narvii/widget/TextInputLayout$SavedState;->childrenStates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 164
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 165
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v1, Lcom/narvii/widget/TextInputLayout$SavedState;->childrenStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setError(I)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/widget/TextInputLayout;->setError(Ljava/lang/String;)V

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/widget/TextInputLayout;->errorHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/narvii/widget/TextInputLayout;->updateStatus(Z)V

    return-void
.end method

.method public setInputText(Ljava/lang/String;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/narvii/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/narvii/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public updateStatus(Z)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/narvii/widget/TextInputLayout;->errorHintView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 103
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/TextInputLayout;->inputStatusIndicator:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/high16 v1, -0x10000

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    .line 106
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    if-eqz p1, :cond_4

    .line 109
    iget-object p1, p0, Lcom/narvii/widget/TextInputLayout;->errorHintView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010048

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    return-void
.end method
