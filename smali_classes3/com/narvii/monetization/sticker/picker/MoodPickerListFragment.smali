.class public Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;
.super Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;
.source "MoodPickerListFragment.java"


# instance fields
.field protected stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->getMoodBaseAdapter()Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected externalOffset()I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public isNestedScrollingChild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onMoodClicked(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f090562

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 34
    new-instance v1, Lcom/narvii/model/Sticker;

    invoke-direct {v1, v0}, Lcom/narvii/model/Sticker;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;->stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    if-eqz v0, :cond_0

    .line 36
    new-instance v2, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/narvii/monetization/sticker/picker/StickerSelectListener;->onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 38
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->editorTheme:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 39
    iput v0, v1, Lcom/narvii/model/Sticker;->sourceType:I

    .line 40
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-virtual {v1}, Lcom/narvii/model/Sticker;->getStickerPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 43
    instance-of v1, p1, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    if-eqz v1, :cond_1

    .line 44
    check-cast p1, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    invoke-interface {p1, v0}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f090ab3

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 49
    invoke-virtual {v1}, Lcom/narvii/model/Sticker;->getStickerPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    const-string v0, "sticker"

    .line 72
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/StickerService;

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    return-void
.end method

.method public setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;->stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    return-void
.end method
