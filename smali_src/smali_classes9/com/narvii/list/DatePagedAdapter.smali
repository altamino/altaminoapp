.class public Lcom/narvii/list/DatePagedAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "SourceFile"


# instance fields
.field public datePageHelper:Lcom/narvii/list/DatePageHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
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

    sget v0, Lcom/narvii/lib/R$layout;->date_section_header:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/date/DateSection;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/list/DatePagedAdapter;->getViewTypeCount()I

    .line 14
    move-result p1

    .line 15
    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 17
    return p1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItemViewType(I)I

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/date/DateSection;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/DatePagedAdapter;->dateSectionLayoutId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    sget p3, Lcom/narvii/lib/R$id;->time:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    check-cast p3, Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/date/DateSection;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/date/DateSection;->time:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-object p2

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/ProxyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->getViewTypeCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/ProxyAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/date/DateSection;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->isEnabled(I)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method protected newDatePageHelper(Lcom/narvii/list/NVPagedAdapter;)Lcom/narvii/list/DatePageHelper;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/narvii/list/select/SharedPhotoDatePageHelper;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    .line 6
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/DatePagedAdapter;->datePageHelper:Lcom/narvii/list/DatePageHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/DatePageHelper;->addDateSection()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/list/DatePagedAdapter;->datePageHelper:Lcom/narvii/list/DatePageHelper;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/list/DatePageHelper;->addDateSection()V

    .line 11
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    .line 5
    instance-of v0, p1, Lcom/narvii/list/NVPagedAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/list/NVPagedAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/list/DatePagedAdapter;->newDatePageHelper(Lcom/narvii/list/NVPagedAdapter;)Lcom/narvii/list/DatePageHelper;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/list/DatePagedAdapter;->datePageHelper:Lcom/narvii/list/DatePageHelper;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVPagedAdapter;->setDatePageHelper(Lcom/narvii/list/DatePageHelper;)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v0, "param adapter must be NVPagedAdapter"

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method
