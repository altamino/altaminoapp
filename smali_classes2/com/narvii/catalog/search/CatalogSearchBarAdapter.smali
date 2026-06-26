.class public Lcom/narvii/catalog/search/CatalogSearchBarAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "CatalogSearchBarAdapter.java"


# instance fields
.field gold:Z

.field inSelect:Z

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 24
    instance-of v0, p1, Lcom/narvii/catalog/CatalogThemeFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/catalog/CatalogThemeFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogThemeFragment;->isGoldTheme()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->gold:Z

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->inSelect:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 91
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 64
    instance-of p1, p0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->view:Landroid/view/View;

    if-nez p1, :cond_0

    const p1, 0x7f0b0602

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->view:Landroid/view/View;

    :cond_0
    check-cast p1, Lcom/narvii/widget/SearchBar;

    .line 66
    move-object p2, p0

    check-cast p2, Lcom/narvii/widget/SearchBar$OnSearchListener;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 67
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 68
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f0f4b

    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/SearchBar;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->view:Landroid/view/View;

    if-nez p1, :cond_2

    const p1, 0x7f0b0604

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->view:Landroid/view/View;

    :cond_2
    const p2, 0x7f0909cd

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :goto_0
    iget-boolean p2, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->gold:Z

    if-eqz p2, :cond_4

    const p2, 0x7f0909d6

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    :goto_1
    if-ge v0, p3, :cond_4

    .line 78
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 79
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 80
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setInSelect(Z)V
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->inSelect:Z

    if-eq v0, p1, :cond_1

    .line 29
    iput-boolean p1, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->inSelect:Z

    .line 30
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method
