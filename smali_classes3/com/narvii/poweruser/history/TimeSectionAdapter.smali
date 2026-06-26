.class public Lcom/narvii/poweruser/history/TimeSectionAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "TimeSectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poweruser/history/TimeSectionAdapter$TimeSection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Lcom/narvii/list/ProxyAdapter;"
    }
.end annotation


# instance fields
.field dateFormatWithYear:Ljava/text/SimpleDateFormat;

.field dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

.field l:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 31
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "MMMM d"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/narvii/poweruser/history/TimeSectionAdapter;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 32
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyy-MM-dd"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/narvii/poweruser/history/TimeSectionAdapter;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private addTimeSection()V
    .locals 6

    .line 144
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/narvii/list/NVPagedAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 146
    iput-object v1, p0, Lcom/narvii/poweruser/history/TimeSectionAdapter;->l:Ljava/util/List;

    goto :goto_1

    .line 147
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/poweruser/history/TimeSectionAdapter;->l:Ljava/util/List;

    goto :goto_1

    .line 150
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/narvii/poweruser/history/TimeSectionAdapter;->l:Ljava/util/List;

    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/NVObject;

    .line 153
    instance-of v3, v2, Lcom/narvii/poweruser/history/TimeSectionInterface;

    if-eqz v3, :cond_3

    .line 154
    move-object v3, v2

    check-cast v3, Lcom/narvii/poweruser/history/TimeSectionInterface;

    invoke-interface {v3}, Lcom/narvii/poweruser/history/TimeSectionInterface;->significantTime()Ljava/util/Date;

    move-result-object v3

    .line 155
    invoke-static {v1, v3}, Lcom/narvii/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/narvii/poweruser/history/TimeSectionAdapter;->l:Ljava/util/List;

    new-instance v4, Lcom/narvii/poweruser/history/TimeSectionAdapter$TimeSection;

    invoke-direct {p0, v3}, Lcom/narvii/poweruser/history/TimeSectionAdapter;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/narvii/poweruser/history/TimeSectionAdapter$TimeSection;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v1, v3

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/narvii/poweruser/history/TimeSectionAdapter;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 169
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->today:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 171
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isYesterday(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->yesterday:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 173
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isSameYear(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/narvii/poweruser/history/TimeSectionAdapter;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/narvii/poweruser/history/TimeSectionAdapter;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/narvii/poweruser/history/TimeSectionAdapter;->l:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/poweruser/history/TimeSectionAdapter;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/history/TimeSectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 89
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_0

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 117
    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/history/TimeSectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 118
    instance-of v0, v0, Lcom/narvii/poweruser/history/TimeSectionAdapter$TimeSection;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/narvii/poweruser/history/TimeSectionAdapter;->getViewTypeCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 126
    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/history/TimeSectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 127
    instance-of v1, v0, Lcom/narvii/poweruser/history/TimeSectionAdapter$TimeSection;

    if-eqz v1, :cond_0

    .line 128
    sget p1, Lcom/narvii/lib/R$layout;->item_section_layout:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 129
    check-cast v0, Lcom/narvii/poweruser/history/TimeSectionAdapter$TimeSection;

    iget-object p2, v0, Lcom/narvii/poweruser/history/TimeSectionAdapter$TimeSection;->time:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/history/TimeSectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 104
    instance-of p1, p1, Lcom/narvii/poweruser/history/TimeSectionAdapter$TimeSection;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/narvii/poweruser/history/TimeSectionAdapter;->addTimeSection()V

    .line 64
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 139
    invoke-direct {p0}, Lcom/narvii/poweruser/history/TimeSectionAdapter;->addTimeSection()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 50
    instance-of v0, p1, Lcom/narvii/list/NVPagedAdapter;

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the adapter must be a nvapageadapter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
