.class public Lcom/narvii/widget/TagEditText;
.super Lcom/tokenautocomplete/TokenCompleteTextView;
.source "TagEditText.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tokenautocomplete/TokenCompleteTextView<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 24
    invoke-virtual {p0, p2}, Landroid/widget/MultiAutoCompleteTextView;->setLongClickable(Z)V

    const/4 p2, 0x0

    .line 25
    invoke-virtual {p0, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess(Z)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse(Z)V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/TagEditText;->inflater:Landroid/view/LayoutInflater;

    .line 30
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/narvii/lib/R$layout;->simple_dropdown_item:I

    new-array p2, p2, [Ljava/lang/String;

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    new-instance p1, Lcom/narvii/widget/TagEditText$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/TagEditText$1;-><init>(Lcom/narvii/widget/TagEditText;)V

    invoke-virtual {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TagEditText;->defaultObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected defaultObject(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x2c

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getViewForObject(Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/TagEditText;->getViewForObject(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getViewForObject(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/narvii/widget/TagEditText;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/narvii/lib/R$layout;->keyword_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    sget v1, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method protected removeListeners()V
    .locals 0

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clear()V

    const-string v0, ","

    .line 72
    invoke-static {p1, v0}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    return-void
.end method
