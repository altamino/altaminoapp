.class public Lcom/narvii/list/DividerAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "DividerAdapter.java"


# static fields
.field protected static final DIVIDER:Lcom/narvii/util/Tag;

.field public static final SHOW_DIVIDER_AT_BOTTOM:I = 0x2

.field public static final SHOW_DIVIDER_AT_TOP:I = 0x1

.field public static final SHOW_DIVIDER_WHEN_EMPTY:I = 0x8


# instance fields
.field protected flags:I

.field private isDarkTheme:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "divider"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/list/DividerAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 35
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/list/DividerAdapter;->isDarkTheme:Z

    goto :goto_1

    .line 38
    :cond_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isDarkTheme()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/list/DividerAdapter;->isDarkTheme:Z

    :goto_1
    return-void
.end method

.method private getPos(I)I
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 86
    :cond_0
    iget v0, p0, Lcom/narvii/list/DividerAdapter;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 93
    :cond_2
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_3

    .line 94
    div-int/lit8 p1, p1, 0x2

    .line 95
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    return p1

    :cond_3
    return v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 67
    iget v0, p0, Lcom/narvii/list/DividerAdapter;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v2

    .line 74
    iget v1, p0, Lcom/narvii/list/DividerAdapter;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 77
    :cond_3
    iget v1, p0, Lcom/narvii/list/DividerAdapter;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method protected getDividerLayoutId()I
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/narvii/list/DividerAdapter;->isDarkTheme:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/narvii/lib/R$layout;->list_divider_dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/narvii/lib/R$layout;->list_divider:I

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Lcom/narvii/list/DividerAdapter;->getPos(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 105
    sget-object p1, Lcom/narvii/list/DividerAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 110
    invoke-direct {p0, p1}, Lcom/narvii/list/DividerAdapter;->getPos(I)I

    move-result v0

    if-gez v0, :cond_0

    int-to-long v0, p1

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 121
    invoke-direct {p0, p1}, Lcom/narvii/list/DividerAdapter;->getPos(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 145
    invoke-direct {p0, p1}, Lcom/narvii/list/DividerAdapter;->getPos(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/narvii/list/DividerAdapter;->getDividerLayoutId()I

    move-result p1

    .line 148
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 139
    invoke-direct {p0, p1}, Lcom/narvii/list/DividerAdapter;->getPos(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 157
    invoke-direct {p0, p2}, Lcom/narvii/list/DividerAdapter;->getPos(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 158
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 159
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 167
    invoke-direct {p0, p2}, Lcom/narvii/list/DividerAdapter;->getPos(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 168
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;I)V
    .locals 0

    .line 59
    iput p2, p0, Lcom/narvii/list/DividerAdapter;->flags:I

    .line 60
    invoke-super {p0, p1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDarkTheme(ZI)V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/narvii/list/DividerAdapter;->isDarkTheme:Z

    if-eq v0, p1, :cond_0

    .line 44
    iput p2, p0, Lcom/narvii/list/NVAdapter;->backgroundColor:I

    .line 45
    iput-boolean p1, p0, Lcom/narvii/list/DividerAdapter;->isDarkTheme:Z

    .line 46
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
