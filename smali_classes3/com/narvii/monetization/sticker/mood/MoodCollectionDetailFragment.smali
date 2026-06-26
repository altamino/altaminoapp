.class public Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;
.super Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;
.source "MoodCollectionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment$DetailAdapter;
    }
.end annotation


# instance fields
.field header:Lcom/narvii/list/overlay/OverlayLayout;

.field storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;-><init>()V

    return-void
.end method

.method private updateHeader()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v2, 0x7f0b0646

    invoke-virtual {v1, v2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 75
    iget-object v1, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v2, 0x7f09034a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/sticker/collection/HeaderLayout;

    .line 77
    invoke-virtual {v1, v0}, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->setHeight1(I)V

    .line 78
    new-instance v0, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 83
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 85
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f0b0647

    aput v4, v2, v3

    .line 86
    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 87
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    new-instance v0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment$DetailAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment$DetailAdapter;-><init>(Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    new-array v1, v1, [I

    const v2, 0x7f0b0532

    aput v2, v1, v3

    .line 92
    invoke-virtual {v0, v1}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 93
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->getMoodBaseAdapter()Lcom/narvii/list/MergeAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method protected isMoodClickable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Store Detail"

    .line 42
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->source:Ljava/lang/String;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1, p2}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f09080a

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/overlay/OverlayLayout;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 49
    invoke-super {p0, p1, p2}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 52
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->updateHeader()V

    .line 53
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result p2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    :cond_0
    return-void
.end method
