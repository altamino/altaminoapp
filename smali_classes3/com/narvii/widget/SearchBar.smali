.class public Lcom/narvii/widget/SearchBar;
.super Landroid/widget/RelativeLayout;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/SearchBar$OnClearClickListener;,
        Lcom/narvii/widget/SearchBar$OnSearchEditTouchUpListener;,
        Lcom/narvii/widget/SearchBar$OnSearchListener;
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

    .line 46
    sget v0, Lcom/narvii/lib/R$style;->SearchBar:I

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    new-instance v0, Lcom/narvii/widget/SearchBar$1;

    invoke-direct {v0, p0}, Lcom/narvii/widget/SearchBar$1;-><init>(Lcom/narvii/widget/SearchBar;)V

    iput-object v0, p0, Lcom/narvii/widget/SearchBar;->editListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 107
    new-instance v0, Lcom/narvii/widget/SearchBar$2;

    invoke-direct {v0, p0}, Lcom/narvii/widget/SearchBar$2;-><init>(Lcom/narvii/widget/SearchBar;)V

    iput-object v0, p0, Lcom/narvii/widget/SearchBar;->textWatcher:Landroid/text/TextWatcher;

    .line 126
    new-instance v0, Lcom/narvii/widget/SearchBar$3;

    invoke-direct {v0, p0}, Lcom/narvii/widget/SearchBar$3;-><init>(Lcom/narvii/widget/SearchBar;)V

    iput-object v0, p0, Lcom/narvii/widget/SearchBar;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 152
    new-instance v0, Lcom/narvii/widget/SearchBar$4;

    invoke-direct {v0, p0}, Lcom/narvii/widget/SearchBar$4;-><init>(Lcom/narvii/widget/SearchBar;)V

    iput-object v0, p0, Lcom/narvii/widget/SearchBar;->clearListener:Landroid/view/View$OnClickListener;

    .line 48
    sget-object v0, Lcom/narvii/lib/R$styleable;->SearchBar:[I

    sget v1, Lcom/narvii/lib/R$style;->SearchBar:I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    sget p2, Lcom/narvii/lib/R$styleable;->SearchBar_searchHint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/SearchBar;->hintText:Ljava/lang/CharSequence;

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar$OnSearchListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/widget/SearchBar;->listener:Lcom/narvii/widget/SearchBar$OnSearchListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/widget/SearchBar;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/narvii/widget/SearchBar;->update()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/widget/SearchBar;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/widget/SearchBar;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/widget/SearchBar;)Landroid/widget/EditText;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar$OnClearClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/widget/SearchBar;->clearClickListener:Lcom/narvii/widget/SearchBar$OnClearClickListener;

    return-object p0
.end method

.method private update()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->hint:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    .line 138
    iget-object v3, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->hintText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->hint:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 142
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/narvii/widget/SearchBar;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 147
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->clear:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 148
    iget-object v3, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v1, 0x4

    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 61
    sget v0, Lcom/narvii/lib/R$id;->search_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    .line 62
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/narvii/widget/SearchBar;->editListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 63
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/narvii/widget/SearchBar;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/narvii/widget/SearchBar;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 65
    sget v0, Lcom/narvii/lib/R$id;->search_clear:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/SearchBar;->clear:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->clear:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/narvii/widget/SearchBar;->clearListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->search_hint:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/SearchBar;->hint:Landroid/view/View;

    .line 72
    invoke-direct {p0}, Lcom/narvii/widget/SearchBar;->update()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 186
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 187
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "super"

    .line 188
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 189
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "searchText"

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "super"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    iget-object v1, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "searchText"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public setClearClickListener(Lcom/narvii/widget/SearchBar$OnClearClickListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/narvii/widget/SearchBar;->clearClickListener:Lcom/narvii/widget/SearchBar$OnClearClickListener;

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/narvii/widget/SearchBar;->hintText:Ljava/lang/CharSequence;

    .line 77
    invoke-direct {p0}, Lcom/narvii/widget/SearchBar;->update()V

    return-void
.end method

.method public setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/narvii/widget/SearchBar;->listener:Lcom/narvii/widget/SearchBar$OnSearchListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object p1, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public setWrapperFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/narvii/widget/SearchBar;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public showKeyboard()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/widget/SearchBar;->text:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
