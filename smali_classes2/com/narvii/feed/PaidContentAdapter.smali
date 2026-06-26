.class public Lcom/narvii/feed/PaidContentAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "PaidContentAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field data:Ljava/lang/Object;

.field optinAds:Z

.field paidContentManager:Lcom/narvii/ads/PaidContentManager;

.field paidContentView:Landroid/view/View;

.field userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/narvii/feed/PaidContentAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/feed/PaidContentAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 34
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 35
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/PaidContentAdapter;->userId:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/narvii/feed/PaidContentAdapter;->supportPaidContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/narvii/ads/PaidContentManager;

    invoke-direct {v0, p1}, Lcom/narvii/ads/PaidContentManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/feed/PaidContentAdapter;->paidContentManager:Lcom/narvii/ads/PaidContentManager;

    .line 39
    iget-object p1, p0, Lcom/narvii/feed/PaidContentAdapter;->paidContentManager:Lcom/narvii/ads/PaidContentManager;

    invoke-virtual {p1}, Lcom/narvii/ads/PaidContentManager;->init()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/narvii/feed/PaidContentAdapter;->supportPaidContent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getHeaderBackgroundColor()I
    .locals 1

    const v0, 0x32ffffff

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/feed/PaidContentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 94
    invoke-virtual {p0, p1}, Lcom/narvii/feed/PaidContentAdapter;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f0b0151

    const-string v0, "paidContentHeader"

    .line 95
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090564

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p3, 0x7f090b5b

    .line 97
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 99
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080451

    goto :goto_0

    :cond_0
    const v0, 0x7f080452

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f0d2d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-boolean p2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    goto :goto_1

    :cond_1
    const p2, -0x777778

    :goto_1
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0901b9

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/narvii/feed/PaidContentAdapter;->getHeaderBackgroundColor()I

    move-result p3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0600ef

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    .line 106
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/PaidContentAdapter;->paidContentManager:Lcom/narvii/ads/PaidContentManager;

    const-string v0, "paidContent"

    invoke-virtual {p1, p3, p2, v0}, Lcom/narvii/ads/PaidContentManager;->createView(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/PaidContentAdapter;->paidContentView:Landroid/view/View;

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/narvii/feed/PaidContentAdapter;->paidContentView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 115
    invoke-static {p1}, Lcom/narvii/nvplayerview/Utils;->getVisibilityPercentage(Landroid/view/View;)I

    move-result p1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 118
    :cond_0
    iget-object p2, p0, Lcom/narvii/feed/PaidContentAdapter;->paidContentManager:Lcom/narvii/ads/PaidContentManager;

    invoke-virtual {p2, p1}, Lcom/narvii/ads/PaidContentManager;->contentVisiblePercentage(I)V

    :cond_1
    return-void
.end method

.method public setDarkTheme(ZI)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->setDarkTheme(ZI)V

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 2

    .line 57
    iput-object p1, p0, Lcom/narvii/feed/PaidContentAdapter;->data:Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Lcom/narvii/feed/PaidContentAdapter;->supportPaidContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/narvii/feed/PaidContentAdapter;->paidContentManager:Lcom/narvii/ads/PaidContentManager;

    iget-boolean v1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {v0, p1, v1}, Lcom/narvii/ads/PaidContentManager;->setData(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method protected supportPaidContent()Z
    .locals 1

    const v0, 0x0

    return v0
.end method
