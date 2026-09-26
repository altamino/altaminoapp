.class public Lcom/narvii/wallet/optinads/OptinAdsAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "SourceFile"


# static fields
.field public static final ADS:Lcom/narvii/util/Tag;


# instance fields
.field private A:I

.field private B:I

.field private ROLLING:I

.field private adUnitId:Ljava/lang/String;

.field private adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

.field public addDivider:Z

.field private darkTheme:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "ads"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->ADS:Lcom/narvii/util/Tag;

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;IILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    const/16 p1, 0x32

    .line 6
    .line 7
    iput p1, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->ROLLING:I

    .line 8
    .line 9
    iput p2, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->A:I

    .line 10
    .line 11
    iput p3, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->B:I

    .line 12
    .line 13
    iput-object p4, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->adUnitId:Ljava/lang/String;

    .line 14
    .line 15
    new-instance p1, Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Lai/medialab/medialabads2/banners/MediaLabAdView;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 25
    .line 26
    const-string p2, "feed"

    .line 27
    .line 28
    sget-object p3, Lai/medialab/medialabads2/data/AdSize;->MEDIUM_RECTANGLE:Lai/medialab/medialabads2/data/AdSize;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2, p3}, Lai/medialab/medialabads2/banners/MediaLabAdView;->initialize(Ljava/lang/String;Lai/medialab/medialabads2/data/AdSize;)V

    .line 32
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->A:I

    .line 9
    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    sub-int v1, v0, v1

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    iget v2, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->B:I

    .line 17
    div-int/2addr v1, v2

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    add-int/2addr v0, v1

    .line 21
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->trans(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-gez p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->ADS:Lcom/narvii/util/Tag;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->trans(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-gez p1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->ADS:Lcom/narvii/util/Tag;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 12
    move-result v0

    .line 13
    .line 14
    shl-int/lit8 v0, v0, 0x20

    .line 15
    or-int/2addr p1, v0

    .line 16
    int-to-long v0, p1

    .line 17
    return-wide v0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 23
    move-result-wide v0

    .line 24
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->trans(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-gez p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 12
    move-result v0

    .line 13
    neg-int p1, p1

    .line 14
    .line 15
    iget v1, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->ROLLING:I

    .line 16
    rem-int/2addr p1, v1

    .line 17
    add-int/2addr v0, p1

    .line 18
    return v0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->trans(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-gez p1, :cond_2

    .line 7
    .line 8
    instance-of p1, p2, Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 9
    .line 10
    const-string p3, "OptinAdsAdapter"

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p1, "MediaLab MedRect - Returning old ad view"

    .line 15
    .line 16
    .line 17
    invoke-static {p3, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-object p2

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lai/medialab/medialabads2/banners/MediaLabAdView;->showPreloadedAd()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const-string p1, "MediaLab MedRect - New ad view ready"

    .line 29
    .line 30
    .line 31
    invoke-static {p3, p1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    const p2, 0x7f070056

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    move-result p1

    .line 47
    .line 48
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 49
    .line 50
    mul-int/lit8 p1, p1, 0x2

    .line 51
    .line 52
    sget-object p3, Lai/medialab/medialabads2/data/AdSize;->MEDIUM_RECTANGLE:Lai/medialab/medialabads2/data/AdSize;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v0}, Lai/medialab/medialabads2/data/AdSize;->getHeightPx(Landroid/content/Context;)I

    .line 60
    move-result p3

    .line 61
    add-int/2addr p1, p3

    .line 62
    const/4 p3, -0x1

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, p3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/util/MLUtilsKt;->centerMRECView(Lai/medialab/medialabads2/banners/MediaLabAdView;)Lw7/l0;

    .line 76
    .line 77
    iget-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 78
    return-object p1

    .line 79
    .line 80
    :cond_1
    const-string p1, "MediaLab MedRect - No ad view available"

    .line 81
    .line 82
    .line 83
    invoke-static {p3, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    new-instance p1, Landroid/view/View;

    .line 86
    .line 87
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 88
    .line 89
    .line 90
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 91
    move-result-object p2

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 95
    return-object p1

    .line 96
    .line 97
    :cond_2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 98
    .line 99
    .line 100
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 101
    move-result-object p1

    .line 102
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->ROLLING:I

    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->trans(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-gez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->trans(I)I

    .line 4
    move-result v2

    .line 5
    .line 6
    if-gez v2, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    move-object v5, p5

    .line 14
    .line 15
    .line 16
    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->trans(I)I

    .line 4
    move-result v2

    .line 5
    .line 6
    if-gez v2, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    move-object v5, p5

    .line 14
    .line 15
    .line 16
    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public set(II)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->A:I

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->B:I

    .line 7
    .line 8
    if-eq p2, v0, :cond_1

    .line 9
    .line 10
    :cond_0
    iput p1, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->A:I

    .line 11
    .line 12
    iput p2, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->B:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16
    :cond_1
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->darkTheme:Z

    return-void
.end method

.method protected trans(I)I
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->A:I

    .line 3
    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    return p1

    .line 6
    .line 7
    :cond_0
    if-ne p1, v0, :cond_1

    .line 8
    const/4 p1, -0x1

    .line 9
    return p1

    .line 10
    :cond_1
    sub-int/2addr p1, v0

    .line 11
    .line 12
    add-int/lit8 v1, p1, -0x1

    .line 13
    .line 14
    if-lez v1, :cond_2

    .line 15
    .line 16
    iget v2, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->B:I

    .line 17
    .line 18
    add-int/lit8 v3, v2, 0x1

    .line 19
    .line 20
    rem-int v3, p1, v3

    .line 21
    .line 22
    if-nez v3, :cond_2

    .line 23
    neg-int p1, p1

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    div-int/2addr p1, v2

    .line 27
    .line 28
    add-int/lit8 p1, p1, -0x1

    .line 29
    return p1

    .line 30
    .line 31
    :cond_2
    iget p1, p0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->B:I

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    div-int p1, v1, p1

    .line 36
    sub-int/2addr v1, p1

    .line 37
    add-int/2addr v1, v0

    .line 38
    return v1
.end method
