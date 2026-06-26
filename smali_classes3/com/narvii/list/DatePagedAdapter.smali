.class public Lcom/narvii/list/DatePagedAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "DatePagedAdapter.java"


# instance fields
.field public datePageHelper:Lcom/narvii/list/DatePageHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected dateSectionLayoutId()I
    .locals 1

    .line 86
    sget v0, Lcom/narvii/lib/R$layout;->date_section_header:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/date/DateSection;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/narvii/list/DatePagedAdapter;->getViewTypeCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 91
    invoke-virtual {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/date/DateSection;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/narvii/list/DatePagedAdapter;->dateSectionLayoutId()I

    move-result v0

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 93
    sget p3, Lcom/narvii/lib/R$id;->time:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 94
    invoke-virtual {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/date/DateSection;

    iget-object p1, p1, Lcom/narvii/date/DateSection;->time:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    .line 97
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/ProxyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 79
    invoke-virtual {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/date/DateSection;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method protected newDatePageHelper(Lcom/narvii/list/NVPagedAdapter;)Lcom/narvii/list/DatePageHelper;
    .locals 1

    .line 56
    new-instance v0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;

    invoke-direct {v0, p1}, Lcom/narvii/list/select/SharedPhotoDatePageHelper;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/narvii/list/DatePagedAdapter;->datePageHelper:Lcom/narvii/list/DatePageHelper;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/narvii/list/DatePageHelper;->addDateSection()V

    .line 28
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 34
    iget-object p1, p0, Lcom/narvii/list/DatePagedAdapter;->datePageHelper:Lcom/narvii/list/DatePageHelper;

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/narvii/list/DatePageHelper;->addDateSection()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    instance-of v0, p1, Lcom/narvii/list/NVPagedAdapter;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lcom/narvii/list/NVPagedAdapter;

    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/list/DatePagedAdapter;->newDatePageHelper(Lcom/narvii/list/NVPagedAdapter;)Lcom/narvii/list/DatePageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/DatePagedAdapter;->datePageHelper:Lcom/narvii/list/DatePageHelper;

    .line 49
    iget-object v0, p0, Lcom/narvii/list/DatePagedAdapter;->datePageHelper:Lcom/narvii/list/DatePageHelper;

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVPagedAdapter;->setDatePageHelper(Lcom/narvii/list/DatePageHelper;)V

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "param adapter must be NVPagedAdapter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
