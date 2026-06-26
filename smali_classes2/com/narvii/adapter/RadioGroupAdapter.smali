.class public abstract Lcom/narvii/adapter/RadioGroupAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "RadioGroupAdapter.java"


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/adapter/RadioItem;",
            ">;"
        }
    .end annotation
.end field

.field selectedItemId:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/narvii/adapter/RadioGroupAdapter;->selectedItemId:I

    return-void
.end method

.method private list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/adapter/RadioItem;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/narvii/adapter/RadioGroupAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/adapter/RadioGroupAdapter;->list:Ljava/util/List;

    .line 28
    iget-object v0, p0, Lcom/narvii/adapter/RadioGroupAdapter;->list:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/narvii/adapter/RadioGroupAdapter;->buildCells(Ljava/util/List;)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/narvii/adapter/RadioGroupAdapter;->list:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected abstract buildCells(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/adapter/RadioItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/narvii/adapter/RadioGroupAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/narvii/adapter/RadioItem;
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/narvii/adapter/RadioGroupAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/adapter/RadioItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/RadioGroupAdapter;->getItem(I)Lcom/narvii/adapter/RadioItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/RadioGroupAdapter;->getItem(I)Lcom/narvii/adapter/RadioItem;

    move-result-object p1

    iget p1, p1, Lcom/narvii/adapter/RadioItem;->id:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/adapter/RadioItem;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/narvii/adapter/RadioGroupAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/narvii/adapter/RadioGroupAdapter;->selectedItemId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 95
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/RadioGroupAdapter;->getItem(I)Lcom/narvii/adapter/RadioItem;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/narvii/adapter/RadioGroupAdapter;->layoutId()I

    move-result v1

    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 97
    sget p3, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 99
    iget-object v1, v0, Lcom/narvii/adapter/RadioItem;->name:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    sget p3, Lcom/narvii/lib/R$id;->subTitle:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 107
    iget-object v2, v0, Lcom/narvii/adapter/RadioItem;->desc:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, v0, Lcom/narvii/adapter/RadioItem;->desc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/narvii/adapter/RadioItem;->enabled:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :cond_3
    sget p3, Lcom/narvii/lib/R$id;->check:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 113
    iget-boolean v2, v0, Lcom/narvii/adapter/RadioItem;->enabled:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/narvii/adapter/RadioGroupAdapter;->isItemSelected(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_5
    iget-boolean p1, v0, Lcom/narvii/adapter/RadioItem;->enabled:Z

    if-eqz p1, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/RadioGroupAdapter;->getItem(I)Lcom/narvii/adapter/RadioItem;

    move-result-object p1

    iget-boolean p1, p1, Lcom/narvii/adapter/RadioItem;->enabled:Z

    return p1
.end method

.method public isItemSelected(I)Z
    .locals 4

    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/RadioGroupAdapter;->getItemId(I)J

    move-result-wide v0

    iget p1, p0, Lcom/narvii/adapter/RadioGroupAdapter;->selectedItemId:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected layoutId()I
    .locals 1

    .line 90
    sget v0, Lcom/narvii/lib/R$layout;->adaptet_layout_radio_group:I

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/narvii/adapter/RadioGroupAdapter;->list:Ljava/util/List;

    .line 48
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 121
    invoke-virtual {p0, p2}, Lcom/narvii/adapter/RadioGroupAdapter;->getItemId(I)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/narvii/adapter/RadioGroupAdapter;->selectedItemId:I

    .line 122
    invoke-virtual {p0}, Lcom/narvii/adapter/RadioGroupAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public setSelectedItemId(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/narvii/adapter/RadioGroupAdapter;->selectedItemId:I

    .line 61
    invoke-virtual {p0}, Lcom/narvii/adapter/RadioGroupAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
