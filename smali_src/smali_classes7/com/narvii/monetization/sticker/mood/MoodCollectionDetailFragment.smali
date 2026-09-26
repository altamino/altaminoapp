.class public Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;
.super Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;-><init>()V

    .line 4
    return-void
.end method

.method private updateHeader()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0704e1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 19
    .line 20
    .line 21
    const v2, 0x7f0d06fd

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 27
    .line 28
    .line 29
    const v2, 0x7f0a042d

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/monetization/sticker/collection/HeaderLayout;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->setHeight1(I)V

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v2}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0d06fe

    .line 14
    .line 15
    .line 16
    filled-new-array {v1}, [I

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment$DetailAdapter;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment$DetailAdapter;-><init>(Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 37
    .line 38
    .line 39
    const v1, 0x7f0d05ba

    .line 40
    .line 41
    .line 42
    filled-new-array {v1}, [I

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->getMoodBaseAdapter()Lcom/narvii/list/MergeAdapter;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method protected isMoodClickable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "Store Detail"

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->source:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0ab1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/list/overlay/OverlayLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1, p2}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->updateHeader()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 45
    move-result p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 49
    move-result v0

    .line 50
    add-int/2addr p2, v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 54
    :cond_0
    return-void
.end method
