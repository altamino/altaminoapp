.class public Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;
.super Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;
.source "SourceFile"


# instance fields
.field protected stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;


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


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->getMoodBaseAdapter()Lcom/narvii/list/MergeAdapter;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected externalOffset()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 4
    move-result v0

    .line 5
    neg-int v0, v0

    .line 6
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

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a06d5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/model/Sticker;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/narvii/model/Sticker;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;->stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v2, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1, v2}, Lcom/narvii/monetization/sticker/picker/StickerSelectListener;->onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 33
    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->editorTheme:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    const/4 v0, 0x1

    .line 38
    .line 39
    iput v0, v1, Lcom/narvii/model/Sticker;->sourceType:I

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/narvii/model/Sticker;->getStickerPath()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    instance-of v1, p1, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    check-cast p1, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v0}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 65
    :cond_1
    return-void

    .line 66
    .line 67
    .line 68
    :cond_2
    const v0, 0x7f0a0dad

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    check-cast p1, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/narvii/model/Sticker;->getStickerPath()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    const/4 v2, 0x0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1, v0, v2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;Z)V

    .line 83
    :cond_3
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 4
    .line 5
    const-string v0, "sticker"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/monetization/sticker/StickerService;

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 16
    return-void
.end method

.method public setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;->stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    return-void
.end method
