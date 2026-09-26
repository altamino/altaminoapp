.class public abstract Lcom/narvii/adapter/RadioGroupAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 p1, -0x1

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/adapter/RadioGroupAdapter;->selectedItemId:I

    .line 7
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/RadioGroupAdapter;->list:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/adapter/RadioGroupAdapter;->list:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/adapter/RadioGroupAdapter;->buildCells(Ljava/util/List;)V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/adapter/RadioGroupAdapter;->list:Ljava/util/List;

    .line 17
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/adapter/RadioGroupAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItem(I)Lcom/narvii/adapter/RadioItem;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/narvii/adapter/RadioGroupAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/adapter/RadioItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/RadioGroupAdapter;->getItem(I)Lcom/narvii/adapter/RadioItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/RadioGroupAdapter;->getItem(I)Lcom/narvii/adapter/RadioItem;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget p1, p1, Lcom/narvii/adapter/RadioItem;->id:I

    .line 7
    int-to-long v0, p1

    .line 8
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

    iget-object v0, p0, Lcom/narvii/adapter/RadioGroupAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    iget v0, p0, Lcom/narvii/adapter/RadioGroupAdapter;->selectedItemId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/RadioGroupAdapter;->getItem(I)Lcom/narvii/adapter/RadioItem;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/adapter/RadioGroupAdapter;->layoutId()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    sget p3, Lcom/narvii/lib/R$id;->title:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Landroid/widget/TextView;

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    iget-object v1, v0, Lcom/narvii/adapter/RadioItem;->name:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    :cond_0
    sget p3, Lcom/narvii/lib/R$id;->subTitle:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    check-cast p3, Landroid/widget/TextView;

    .line 36
    const/4 v1, 0x0

    .line 37
    .line 38
    if-eqz p3, :cond_3

    .line 39
    .line 40
    iget-object v2, v0, Lcom/narvii/adapter/RadioItem;->desc:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    iget-object v2, v0, Lcom/narvii/adapter/RadioItem;->desc:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v2

    .line 50
    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    iget-boolean v2, v0, Lcom/narvii/adapter/RadioItem;->enabled:Z

    .line 54
    .line 55
    if-nez v2, :cond_1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v2, v1

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_2
    :goto_0
    const/16 v2, 0x8

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    :cond_3
    sget p3, Lcom/narvii/lib/R$id;->check:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p3

    .line 70
    .line 71
    if-eqz p3, :cond_5

    .line 72
    .line 73
    iget-boolean v2, v0, Lcom/narvii/adapter/RadioItem;->enabled:Z

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/RadioGroupAdapter;->isItemSelected(I)Z

    .line 79
    move-result p1

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    const/4 v1, 0x4

    .line 84
    .line 85
    .line 86
    :goto_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    :cond_5
    iget-boolean p1, v0, Lcom/narvii/adapter/RadioItem;->enabled:Z

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    const/high16 p1, 0x3f800000    # 1.0f

    .line 93
    goto :goto_3

    .line 94
    .line 95
    :cond_6
    const/high16 p1, 0x3f000000    # 0.5f

    .line 96
    .line 97
    .line 98
    :goto_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 99
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/RadioGroupAdapter;->getItem(I)Lcom/narvii/adapter/RadioItem;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-boolean p1, p1, Lcom/narvii/adapter/RadioItem;->enabled:Z

    .line 7
    return p1
.end method

.method public isItemSelected(I)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/RadioGroupAdapter;->getItemId(I)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget p1, p0, Lcom/narvii/adapter/RadioGroupAdapter;->selectedItemId:I

    .line 7
    int-to-long v2, p1

    .line 8
    .line 9
    cmp-long p1, v0, v2

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1
.end method

.method protected layoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->adaptet_layout_radio_group:I

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/adapter/RadioGroupAdapter;->list:Ljava/util/List;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/adapter/RadioGroupAdapter;->getItemId(I)J

    .line 4
    move-result-wide p1

    .line 5
    long-to-int p1, p1

    .line 6
    .line 7
    iput p1, p0, Lcom/narvii/adapter/RadioGroupAdapter;->selectedItemId:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/adapter/RadioGroupAdapter;->notifyDataSetChanged()V

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public setSelectedItemId(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/adapter/RadioGroupAdapter;->selectedItemId:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/adapter/RadioGroupAdapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
