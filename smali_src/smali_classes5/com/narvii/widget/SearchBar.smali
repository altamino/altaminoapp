.class public Lcom/narvii/widget/SearchBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/SearchBar$OnSearchListener;,
        Lcom/narvii/widget/SearchBar$OnClearClickListener;,
        Lcom/narvii/widget/SearchBar$OnSearchEditTouchUpListener;
    }
.end annotation


# instance fields
.field private clear:Landroid/view/View;

.field private clearClickListener:Lcom/narvii/widget/SearchBar$OnClearClickListener;

.field private final clearListener:Landroid/view/View$OnClickListener;

.field private final editListener:Landroid/widget/TextView$OnEditorActionListener;

.field private focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final focusListener:Landroid/view/View$OnFocusChangeListener;

.field private hint:Landroid/view/View;

.field private hintText:Ljava/lang/CharSequence;

.field private listener:Lcom/narvii/widget/SearchBar$OnSearchListener;

.field private text:Landroid/widget/EditText;

.field private final textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$style;->SearchBar:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/widget/SearchBar$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/narvii/widget/SearchBar$1;-><init>(Lcom/narvii/widget/SearchBar;)V

    .line 11
    .line 12
    iput-object v1, p0, Lcom/narvii/widget/SearchBar;->editListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/widget/SearchBar$2;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/narvii/widget/SearchBar$2;-><init>(Lcom/narvii/widget/SearchBar;)V

    .line 18
    .line 19
    iput-object v1, p0, Lcom/narvii/widget/SearchBar;->textWatcher:Landroid/text/TextWatcher;

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/widget/SearchBar$3;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/narvii/widget/SearchBar$3;-><init>(Lcom/narvii/widget/SearchBar;)V

    .line 25
    .line 26
    iput-object v1, p0, Lcom/narvii/widget/SearchBar;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 27
    .line 28
    new-instance v1, Lcom/narvii/widget/SearchBar$4;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/narvii/widget/SearchBar$4;-><init>(Lcom/narvii/widget/SearchBar;)V

    .line 32
    .line 33
    iput-object v1, p0, Lcom/narvii/widget/SearchBar;->clearListener:Landroid/view/View$OnClickListener;

    .line 34
    .line 35
    sget-object v1, Lcom/narvii/lib/R$styleable;->SearchBar:[I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    sget p2, Lcom/narvii/lib/R$styleable;->SearchBar_searchHint:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    iput-object p2, p0, Lcom/narvii/widget/SearchBar;->hintText:Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar$OnClearClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/SearchBar;->clearClickListener:Lcom/narvii/widget/SearchBar$OnClearClickListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/SearchBar;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/SearchBar;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar$OnSearchListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/SearchBar;->listener:Lcom/narvii/widget/SearchBar$OnSearchListener;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/widget/SearchBar;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/widget/SearchBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/SearchBar;->update()V

    return-void
.end method

.method private update()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->hint:Landroid/view/View;

    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    .line 12
    move-result v3

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    move v3, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v3, v1

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->hintText:Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_4

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->hint:Landroid/view/View;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 50
    const/4 v3, 0x0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 54
    goto :goto_2

    .line 55
    .line 56
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/narvii/widget/SearchBar;->hintText:Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->clear:Landroid/view/View;

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    iget-object v3, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    .line 71
    move-result v3

    .line 72
    .line 73
    if-nez v3, :cond_5

    .line 74
    goto :goto_3

    .line 75
    :cond_5
    move v1, v2

    .line 76
    .line 77
    .line 78
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_6
    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->search_text:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/EditText;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/widget/SearchBar;->editListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/widget/SearchBar;->textWatcher:Landroid/text/TextWatcher;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/widget/SearchBar;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 33
    .line 34
    sget v0, Lcom/narvii/lib/R$id;->search_clear:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/widget/SearchBar;->clear:Landroid/view/View;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/widget/SearchBar;->clearListener:Landroid/view/View$OnClickListener;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->search_hint:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/widget/SearchBar;->hint:Landroid/view/View;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/narvii/widget/SearchBar;->update()V

    .line 59
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Landroid/os/Bundle;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "super"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 17
    .line 18
    const-string v0, "searchText"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 28
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "super"

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v2, "searchText"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 27
    return-object v0
.end method

.method public setClearClickListener(Lcom/narvii/widget/SearchBar$OnClearClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/SearchBar;->clearClickListener:Lcom/narvii/widget/SearchBar$OnClearClickListener;

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/SearchBar;->hintText:Ljava/lang/CharSequence;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/widget/SearchBar;->update()V

    .line 6
    return-void
.end method

.method public setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/SearchBar;->listener:Lcom/narvii/widget/SearchBar$OnSearchListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 15
    return-void
.end method

.method public setWrapperFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/SearchBar;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public showKeyboard()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 6
    return-void
.end method
