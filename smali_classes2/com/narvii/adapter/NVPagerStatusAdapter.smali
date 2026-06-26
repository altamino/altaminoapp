.class public Lcom/narvii/adapter/NVPagerStatusAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "NVPagerStatusAdapter.java"


# static fields
.field public static final VIEW_TYPE_EMPTY:I = -0x1

.field public static final VIEW_TYPE_ERROR:I = -0x2

.field public static final VIEW_TYPE_LOADING:I = -0x3


# instance fields
.field protected boundAdapter:Lcom/narvii/list/NVAdapter;

.field private emptyListener:Landroid/view/View$OnClickListener;

.field private errorListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 23
    new-instance p1, Lcom/narvii/adapter/NVPagerStatusAdapter$1;

    invoke-direct {p1, p0}, Lcom/narvii/adapter/NVPagerStatusAdapter$1;-><init>(Lcom/narvii/adapter/NVPagerStatusAdapter;)V

    iput-object p1, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->emptyListener:Landroid/view/View$OnClickListener;

    .line 29
    new-instance p1, Lcom/narvii/adapter/NVPagerStatusAdapter$2;

    invoke-direct {p1, p0}, Lcom/narvii/adapter/NVPagerStatusAdapter$2;-><init>(Lcom/narvii/adapter/NVPagerStatusAdapter;)V

    iput-object p1, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->errorListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public createEmptyView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->emptyLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->emptyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget p2, Lcom/narvii/lib/R$id;->empty_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 90
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, -0xaaaaab

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    sget p2, Lcom/narvii/lib/R$id;->empty_retry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 93
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 94
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    sget v2, Lcom/narvii/lib/R$color;->button_text_gray_w:I

    goto :goto_3

    :cond_3
    :goto_2
    sget v2, Lcom/narvii/lib/R$color;->button_text_light:I

    :goto_3
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->emptyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget p2, Lcom/narvii/lib/R$id;->main:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getMinHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 99
    sget p2, Lcom/narvii/lib/R$id;->main:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 100
    invoke-virtual {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getMinHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    return-object p1
.end method

.method public createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    sget v1, Lcom/narvii/lib/R$layout;->status_error_view:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->errorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget p2, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$string;->normal_error_offline1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$string;->normal_error_offline2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->isDeviceOffline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p3, v0

    :cond_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    const v0, -0xaaaaab

    const/4 v1, -0x1

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const p3, -0xaaaaab

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, -0x1

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    sget p2, Lcom/narvii/lib/R$id;->error:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 73
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    const/4 v0, -0x1

    :cond_4
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    sget p2, Lcom/narvii/lib/R$id;->retry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    sget v0, Lcom/narvii/lib/R$color;->button_text_gray_w:I

    goto :goto_3

    :cond_6
    :goto_2
    sget v0, Lcom/narvii/lib/R$color;->button_text_light:I

    :goto_3
    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object p3, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->errorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget p2, Lcom/narvii/lib/R$id;->main:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 80
    invoke-virtual {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getMinHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setMinimumHeight(I)V

    return-object p1
.end method

.method public createLoadingView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    sget v1, Lcom/narvii/lib/R$layout;->status_loading_view:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 112
    sget p2, Lcom/narvii/lib/R$id;->main:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 113
    invoke-virtual {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getMinHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 115
    sget p2, Lcom/narvii/lib/R$id;->loading:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/SpinningView;

    .line 116
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, -0xaaaaab

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    return-object p1
.end method

.method protected emptyLayoutId()I
    .locals 1

    .line 106
    sget v0, Lcom/narvii/lib/R$layout;->status_empty_view:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected getMinHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 148
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getItemViewType(I)I

    move-result p1

    .line 149
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x3

    if-eq p1, v1, :cond_2

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 159
    invoke-virtual {p0, p3, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;->createEmptyView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    invoke-virtual {p0, p3, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;->createEmptyView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 153
    :cond_1
    invoke-virtual {p0, p3, p2, v0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 157
    :cond_2
    invoke-virtual {p0, p3, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;->createLoadingView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected onEmptyClickRetry()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method protected onErrorClickRetry()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 41
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 42
    check-cast p1, Lcom/narvii/list/NVAdapter;

    iput-object p1, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not NVPagedAdapter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Ljava/lang/Boolean;)V
    .locals 1

    .line 50
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Lcom/narvii/list/NVAdapter;

    iput-object p1, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    .line 52
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not NVPagedAdapter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
