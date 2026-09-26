.class public Lcom/narvii/catalog/search/CatalogSearchBarAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# instance fields
.field gold:Z

.field inSelect:Z

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    instance-of v0, p1, Lcom/narvii/catalog/CatalogThemeFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/catalog/CatalogThemeFragment;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogThemeFragment;->isGoldTheme()Z

    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    .line 17
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->gold:Z

    .line 18
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

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->inSelect:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 10
    move-result p1

    .line 11
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    move-result p1

    .line 5
    int-to-long v0, p1

    .line 6
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    instance-of p1, p0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->view:Landroid/view/View;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    const p1, 0x7f0d06b6

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->view:Landroid/view/View;

    .line 19
    .line 20
    :cond_0
    check-cast p1, Lcom/narvii/widget/SearchBar;

    .line 21
    move-object p2, p0

    .line 22
    .line 23
    check-cast p2, Lcom/narvii/widget/SearchBar$OnSearchListener;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    const p3, 0x7f121059

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SearchBar;->setHintText(Ljava/lang/CharSequence;)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->view:Landroid/view/View;

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    .line 55
    const p1, 0x7f0d06b8

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->view:Landroid/view/View;

    .line 62
    .line 63
    .line 64
    :cond_2
    const p2, 0x7f0a0c95

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    :goto_0
    iget-boolean p2, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->gold:Z

    .line 76
    .line 77
    if-eqz p2, :cond_4

    .line 78
    .line 79
    .line 80
    const p2, 0x7f0a0c9e

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object p2

    .line 85
    .line 86
    check-cast p2, Landroid/view/ViewGroup;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 90
    move-result p3

    .line 91
    .line 92
    :goto_1
    if-ge v0, p3, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    instance-of v2, v1, Landroid/widget/TextView;

    .line 99
    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    check-cast v1, Landroid/widget/TextView;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    .line 113
    const v3, 0x7f060131

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 117
    move-result v2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    .line 122
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 123
    goto :goto_1

    .line 124
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

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->inSelect:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->inSelect:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->view:Landroid/view/View;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    const p1, 0x3e4ccccd    # 0.2f

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 26
    :cond_1
    return-void
.end method
