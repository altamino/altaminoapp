.class public final Lcom/narvii/video/attachment/AttachmentEditorFragment;
.super Lcom/narvii/video/BaseViceTimeLineFragment;
.source "AttachmentEditorFragment.kt"

# interfaces
.implements Lcom/narvii/app/FragmentDismissListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/video/attachment/caption/CaptionTabChangeListener;
.implements Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;
.implements Lcom/narvii/video/attachment/caption/EditCaptionTextHost;
.implements Lcom/narvii/video/attachment/caption/CaptionEditListener;
.implements Lcom/narvii/app/FragmentWillFinishListener;
.implements Lcom/narvii/util/ShareDataSourceHost;
.implements Lcom/narvii/video/interfaces/IPlayingEventListener;
.implements Lcom/narvii/video/attachment/ResetAttachmentViewsListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttachmentEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttachmentEditorFragment.kt\ncom/narvii/video/attachment/AttachmentEditorFragment\n*L\n1#1,937:1\n*E\n"
.end annotation


# instance fields
.field private final ATTACHMENT_MAX_COUNT:I

.field private final REQUEST_EDIT_TEXT:I

.field private _$_findViewCache:Ljava/util/HashMap;

.field private activeCaption:Lcom/narvii/video/model/Caption;

.field private activeSticker:Lcom/narvii/video/model/StickerInfoPack;

.field private editing:Z

.field private editingPosition:I

.field private entranceType:I

.field private hasMainTrackMovedWhenEnterEditMode:Z

.field private final hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/paging/source/DataSource<",
            "*>;>;"
        }
    .end annotation
.end field

.field private lastClickTime:J

.field private orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

.field private outputFolderPath:Ljava/lang/String;

.field private progress:Lcom/narvii/util/dialog/ProgressDialog;

.field private savedInstanceState:Landroid/os/Bundle;

.field private selectedThisEventSequence:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;-><init>()V

    const/16 v0, 0xa

    .line 47
    iput v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->ATTACHMENT_MAX_COUNT:I

    const/16 v0, 0x12c

    .line 48
    iput v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->REQUEST_EDIT_TEXT:I

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hashMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$addCaption(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->addCaption()V

    return-void
.end method

.method public static final synthetic access$addSticker(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->addSticker()V

    return-void
.end method

.method public static final synthetic access$editCurrentCaption(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editCurrentCaption()V

    return-void
.end method

.method public static final synthetic access$getAutoPlaying$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Z
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLastClickTime$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->lastClickTime:J

    return-wide v0
.end method

.method public static final synthetic access$getMainTimeLineComponent$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/widget/MediaTimeLineComponent;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOrgActiveStickerBeforeEditing$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/model/StickerInfoPack;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    return-object p0
.end method

.method public static final synthetic access$getPreviewPlayer$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$notifyCaptionChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->notifyCaptionChanged()V

    return-void
.end method

.method public static final synthetic access$onActiveAttachmentIndexChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onActiveAttachmentIndexChanged(I)V

    return-void
.end method

.method public static final synthetic access$onAttachmentChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onAttachmentChanged(Lcom/narvii/video/model/BaseAttachmentInfoPack;)V

    return-void
.end method

.method public static final synthetic access$refreshViceTimeline(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimeline(Lcom/narvii/video/model/BaseAttachmentInfoPack;Z)V

    return-void
.end method

.method public static final synthetic access$removeCurrentAttachment(Lcom/narvii/video/attachment/AttachmentEditorFragment;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->removeCurrentAttachment(I)V

    return-void
.end method

.method public static final synthetic access$setAutoPlaying$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;Z)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    return-void
.end method

.method public static final synthetic access$setLastClickTime$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->lastClickTime:J

    return-void
.end method

.method public static final synthetic access$setMainTimeLineComponent$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->setMainTimeLineComponent(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    return-void
.end method

.method public static final synthetic access$setOrgActiveStickerBeforeEditing$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    return-void
.end method

.method public static final synthetic access$setPreviewPlayer$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/interfaces/IPreviewPlayer;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewPlayer(Lcom/narvii/video/interfaces/IPreviewPlayer;)V

    return-void
.end method

.method public static final synthetic access$updateAttachmentCoordinate(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseClipInfoPack;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    return-void
.end method

.method private final addCaption()V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editCaptionText(Lcom/narvii/video/model/Caption;)V

    return-void
.end method

.method private final addSticker()V
    .locals 3

    const/4 v0, 0x1

    .line 219
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->openStickerPickerTab(Z)V

    const/4 v1, 0x0

    .line 220
    iput-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 221
    iput-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 222
    sget v2, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/attachment/DrawRectView;

    invoke-virtual {v2, v1, v0}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    return-void
.end method

.method private final changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_2

    .line 268
    iput-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 269
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 270
    move-object v0, p2

    check-cast v0, Lcom/narvii/video/model/Caption;

    iput-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz p1, :cond_0

    .line 271
    iget p1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-eqz p2, :cond_1

    .line 272
    iget v1, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    :cond_1
    if-eq p1, v1, :cond_5

    .line 274
    new-instance p1, Lcom/narvii/video/attachment/AttachmentEditorFragment$changeActiveAttachment$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment$changeActiveAttachment$1;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    .line 279
    iput-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 280
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 281
    move-object v0, p2

    check-cast v0, Lcom/narvii/video/model/StickerInfoPack;

    iput-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz p1, :cond_3

    .line 282
    iget p1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    :goto_1
    if-eqz p2, :cond_4

    .line 283
    iget v1, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    :cond_4
    if-eq p1, v1, :cond_5

    .line 285
    new-instance p1, Lcom/narvii/video/attachment/AttachmentEditorFragment$changeActiveAttachment$2;

    invoke-direct {p1, p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment$changeActiveAttachment$2;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final editCaptionText(Lcom/narvii/video/model/Caption;)V
    .locals 4

    const-string v0, "fragmentRegister"

    .line 571
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/FragmentRegister;

    if-eqz v0, :cond_3

    .line 573
    new-instance v1, Lcom/narvii/scene/model/SceneInfo;

    invoke-direct {v1}, Lcom/narvii/scene/model/SceneInfo;-><init>()V

    .line 574
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 575
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 576
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->copy()Lcom/narvii/scene/model/SceneInfo;

    move-result-object v1

    const-string v2, "sceneInfo.copy()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 577
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 578
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 580
    :cond_0
    sget-object v2, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getSnapShot(Lcom/narvii/scene/model/SceneInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    const-string v1, "captionEditText"

    .line 581
    invoke-virtual {v0, v1}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 583
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p1, :cond_1

    .line 585
    iget-object v0, p1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    iget v0, p1, Lcom/narvii/video/model/Caption;->textColor:I

    const-string v2, "color"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const-string v2, "isNew"

    .line 588
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 589
    iget p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->REQUEST_EDIT_TEXT:I

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 590
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    :cond_3
    return-void
.end method

.method private final editCurrentCaption()V
    .locals 6

    .line 596
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 599
    iput-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 600
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v0

    iput v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editingPosition:I

    .line 601
    sget v0, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/DrawRectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 602
    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    invoke-direct {v0}, Lcom/narvii/video/attachment/caption/CaptionTabFragment;-><init>()V

    .line 603
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 604
    iget-object v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "caption"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 606
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->setCaptionTabListener(Lcom/narvii/video/attachment/caption/CaptionTabFragment;)V

    .line 608
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 607
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v2, Lcom/narvii/mediaeditor/R$anim;->activity_push_bottom_in:I

    sget v3, Lcom/narvii/mediaeditor/R$anim;->activity_push_bottom_out:I

    .line 608
    sget v4, Lcom/narvii/mediaeditor/R$anim;->activity_push_bottom_in:I

    sget v5, Lcom/narvii/mediaeditor/R$anim;->activity_push_bottom_out:I

    .line 607
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 608
    sget v2, Lcom/narvii/mediaeditor/R$id;->attachment_tab:I

    const-string v3, "captionTab"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method private final getAttachmentList(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/narvii/video/model/BaseAttachmentInfoPack;",
            ">;"
        }
    .end annotation

    .line 934
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static synthetic getAttachmentList$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 933
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getAttachmentList(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final notifyCaptionChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 497
    invoke-virtual {p0, v0, v0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged(ZZZ)V

    return-void
.end method

.method private final onActiveAttachmentIndexChanged(I)V
    .locals 12

    if-nez p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    :goto_0
    if-eqz v0, :cond_1

    .line 298
    iget v1, v0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 299
    :goto_1
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViewIndexOfTrackIndex(I)I

    move-result v2

    .line 301
    sget-boolean v3, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 302
    sget v3, Lcom/narvii/mediaeditor/R$id;->debug_text:I

    invoke-virtual {p0, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v5, "debug_text"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    sget v3, Lcom/narvii/mediaeditor/R$id;->debug_text:I

    invoke-virtual {p0, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :cond_2
    sget v3, Lcom/narvii/mediaeditor/R$id;->vice_time_line_panel:I

    invoke-virtual {p0, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const-string v5, "vice_time_line_panel"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_7

    .line 306
    sget v6, Lcom/narvii/mediaeditor/R$id;->vice_time_line_panel:I

    invoke-virtual {p0, v6}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 307
    instance-of v7, v6, Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v7, :cond_6

    if-ne v5, v2, :cond_5

    .line 309
    sget v7, Lcom/narvii/mediaeditor/R$id;->vice_timeline_scroll_view:I

    invoke-virtual {p0, v7}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    const-string v8, "vice_timeline_scroll_view"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    .line 310
    sget v9, Lcom/narvii/mediaeditor/R$id;->vice_timeline_scroll_view:I

    invoke-virtual {p0, v9}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    add-int/2addr v9, v7

    .line 311
    move-object v10, v6

    check-cast v10, Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    if-ge v11, v7, :cond_3

    .line 312
    sget v7, Lcom/narvii/mediaeditor/R$id;->vice_timeline_scroll_view:I

    invoke-virtual {p0, v7}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTop()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_3

    .line 313
    :cond_3
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v7

    if-le v7, v9, :cond_4

    .line 314
    sget v7, Lcom/narvii/mediaeditor/R$id;->vice_timeline_scroll_view:I

    invoke-virtual {p0, v7}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v9

    sget v10, Lcom/narvii/mediaeditor/R$id;->vice_timeline_scroll_view:I

    invoke-virtual {p0, v10}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ScrollView;

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    sub-int/2addr v9, v8

    invoke-virtual {v7, v4, v9}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 316
    :cond_4
    :goto_3
    sget v7, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->toggleEditMode(Z)V

    .line 317
    sget v7, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    new-instance v7, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;

    invoke-direct {v7, p0, v0, v1, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;II)V

    invoke-virtual {v6, v7}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->setViceTimeLineEditCallback(Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;)V

    goto :goto_4

    .line 346
    :cond_5
    sget v7, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    invoke-virtual {v7, v4}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->toggleEditMode(Z)V

    .line 347
    sget v7, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->setViceTimeLineEditCallback(Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;)V

    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_7
    return-void
.end method

.method private final onAttachmentChanged(Lcom/narvii/video/model/BaseAttachmentInfoPack;)V
    .locals 1

    .line 885
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 886
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    return-void
.end method

.method private final openStickerPickerTab(Z)V
    .locals 5

    const-string v0, "fragmentRegister"

    .line 612
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/FragmentRegister;

    if-eqz v0, :cond_2

    const-string v1, "stickerEditorTab"

    .line 614
    invoke-virtual {v0, v1}, Lcom/narvii/app/FragmentRegister;->getFragmentClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 616
    iput-boolean v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 617
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v2

    iput v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editingPosition:I

    .line 618
    sget v2, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/attachment/DrawRectView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 619
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "tabBottom"

    .line 620
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "source"

    const-string v3, "editor"

    .line 621
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 623
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "activeSticker"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 626
    instance-of v0, p1, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;

    if-eqz v0, :cond_1

    .line 627
    move-object v0, p1

    check-cast v0, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;

    invoke-interface {v0, p0}, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;->setEditorStickerPickerCallback(Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;)V

    .line 630
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 629
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v1, Lcom/narvii/mediaeditor/R$anim;->activity_push_bottom_in:I

    sget v2, Lcom/narvii/mediaeditor/R$anim;->activity_push_bottom_out:I

    .line 630
    sget v3, Lcom/narvii/mediaeditor/R$anim;->activity_push_bottom_in:I

    sget v4, Lcom/narvii/mediaeditor/R$anim;->activity_push_bottom_out:I

    .line 629
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 630
    sget v1, Lcom/narvii/mediaeditor/R$id;->attachment_tab:I

    const-string v2, "stickerTab"

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    return-void
.end method

.method static synthetic openStickerPickerTab$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 611
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->openStickerPickerTab(Z)V

    return-void
.end method

.method private final refreshViceTimeline(Lcom/narvii/video/model/BaseAttachmentInfoPack;Z)V
    .locals 7

    .line 786
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result v0

    .line 787
    iget v3, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 788
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    sub-int v5, v0, v1

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    .line 787
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLine(Lcom/narvii/video/model/BaseClipInfoPack;IZIZ)V

    return-void
.end method

.method static synthetic refreshViceTimeline$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 785
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimeline(Lcom/narvii/video/model/BaseAttachmentInfoPack;Z)V

    return-void
.end method

.method private final refreshViceTimelines(IZ)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result p1

    .line 793
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 794
    invoke-static {p0, v1, v3, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getAttachmentList$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 795
    iget v2, v2, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 797
    :cond_1
    invoke-virtual {p0, v3, v0, p2}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel(ZLjava/util/List;Z)V

    .line 798
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateViceTimeLineSelectedStatus()V

    return-void
.end method

.method static synthetic refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 791
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines(IZ)V

    return-void
.end method

.method private final removeCurrentAttachment(I)V
    .locals 6

    if-nez p1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    goto :goto_0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    :goto_0
    if-eqz v0, :cond_b

    .line 529
    iget-boolean v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    if-nez p1, :cond_2

    .line 531
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v5, "captionTab"

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    .line 532
    :goto_1
    instance-of v5, v1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    if-eqz v5, :cond_5

    .line 533
    check-cast v1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    invoke-virtual {v1, v4}, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->dismiss(Z)V

    goto :goto_3

    :cond_2
    if-ne p1, v2, :cond_5

    .line 536
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v5, "stickerTab"

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v3

    .line 537
    :goto_2
    instance-of v5, v1, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;

    if-eqz v5, :cond_4

    .line 538
    check-cast v1, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;

    invoke-interface {v1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;->onEditorStickerRemoved()V

    .line 540
    :cond_4
    sget v1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/attachment/DrawRectView;

    invoke-virtual {v1, v3, v2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    :cond_5
    :goto_3
    const/4 v1, 0x3

    if-nez p1, :cond_7

    .line 544
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    if-eqz v0, :cond_6

    check-cast v0, Lcom/narvii/video/model/Caption;

    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->removeCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;

    .line 545
    invoke-direct {p0, v4}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->unSelectCurrentAttachment(I)V

    .line 546
    invoke-static {p0, v4, v4, v1, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V

    .line 547
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAddAttachmentButton()V

    goto :goto_4

    .line 544
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.video.model.Caption"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-ne p1, v2, :cond_a

    .line 549
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    if-eqz v0, :cond_9

    check-cast v0, Lcom/narvii/video/model/StickerInfoPack;

    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->removeSticker(Lcom/narvii/video/model/StickerInfoPack;)Ljava/util/ArrayList;

    .line 550
    iget-boolean p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    if-nez p1, :cond_8

    .line 551
    invoke-static {p0, v4, v4, v1, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V

    .line 552
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAddAttachmentButton()V

    .line 554
    :cond_8
    invoke-direct {p0, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->unSelectCurrentAttachment(I)V

    goto :goto_4

    .line 549
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.video.model.StickerInfoPack"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 556
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    :cond_b
    return-void
.end method

.method private final setCaptionTabListener(Lcom/narvii/video/attachment/caption/CaptionTabFragment;)V
    .locals 0

    .line 87
    iput-object p0, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->captionTabChangeListener:Lcom/narvii/video/attachment/caption/CaptionTabChangeListener;

    .line 88
    iput-object p0, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->captionEditListener:Lcom/narvii/video/attachment/caption/CaptionEditListener;

    .line 89
    iput-object p0, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->shareDataSourceHost:Lcom/narvii/util/ShareDataSourceHost;

    .line 90
    iput-object p0, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->resetAttachmentViewsListener:Lcom/narvii/video/attachment/ResetAttachmentViewsListener;

    .line 91
    iput-object p0, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->fragmentDismissListener:Lcom/narvii/app/FragmentDismissListener;

    .line 92
    iput-object p0, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->editCaptionTextHost:Lcom/narvii/video/attachment/caption/EditCaptionTextHost;

    return-void
.end method

.method private final unSelectCurrentAttachment(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 562
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V

    .line 563
    sget v1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/attachment/DrawRectView;

    invoke-virtual {v1, v0, p1}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 565
    invoke-direct {p0, v1, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V

    .line 566
    sget p1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/DrawRectView;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateAddAttachmentButton()V
    .locals 6

    .line 667
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 668
    iget v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->ATTACHMENT_MAX_COUNT:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 669
    :goto_0
    sget v1, Lcom/narvii/mediaeditor/R$id;->option_add_caption:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "option_add_caption"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v5, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 670
    sget v1, Lcom/narvii/mediaeditor/R$id;->option_add_caption:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 671
    sget v1, Lcom/narvii/mediaeditor/R$id;->option_add_sticker:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "option_add_sticker"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 672
    sget v1, Lcom/narvii/mediaeditor/R$id;->option_add_sticker:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method private final updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;I)V

    return-void
.end method

.method private final updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;I)V
    .locals 2

    if-eqz p1, :cond_2

    .line 689
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    if-gt v0, p2, :cond_1

    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v0, v1

    if-lt v0, p2, :cond_1

    .line 690
    instance-of p2, p1, Lcom/narvii/video/model/Caption;

    if-eqz p2, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p2

    check-cast p1, Lcom/narvii/video/model/Caption;

    invoke-interface {p2, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionViewPoints(Lcom/narvii/video/model/Caption;)Ljava/util/List;

    move-result-object p1

    .line 692
    sget p2, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/attachment/DrawRectView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    goto :goto_0

    .line 693
    :cond_0
    instance-of p2, p1, Lcom/narvii/video/model/StickerInfoPack;

    if-eqz p2, :cond_2

    .line 694
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p2

    check-cast p1, Lcom/narvii/video/model/StickerInfoPack;

    invoke-interface {p2, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerViewPoints(Lcom/narvii/video/model/StickerInfoPack;)Ljava/util/List;

    move-result-object p1

    .line 695
    sget p2, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/attachment/DrawRectView;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    goto :goto_0

    .line 698
    :cond_1
    instance-of p1, p1, Lcom/narvii/video/model/StickerInfoPack;

    .line 703
    sget p2, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/attachment/DrawRectView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final updateViceTimeLineSelectedStatus()V
    .locals 6

    .line 355
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_3
    const/4 v0, -0x1

    .line 359
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViewIndexOfTrackIndex(I)I

    move-result v0

    .line 360
    sget v1, Lcom/narvii/mediaeditor/R$id;->vice_time_line_panel:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "vice_time_line_panel"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    .line 361
    sget v4, Lcom/narvii/mediaeditor/R$id;->vice_time_line_panel:I

    invoke-virtual {p0, v4}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 362
    instance-of v5, v4, Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v5, :cond_5

    if-ne v3, v0, :cond_4

    .line 364
    sget v5, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->toggleEditMode(Z)V

    goto :goto_2

    .line 366
    :cond_4
    sget v5, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    invoke-virtual {v4, v2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->toggleEditMode(Z)V

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public editCurrentCaptionText()V
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz v0, :cond_0

    .line 891
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editCaptionText(Lcom/narvii/video/model/Caption;)V

    :cond_0
    return-void
.end method

.method public forsakePreviewSticker()V
    .locals 5

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 175
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->removeSticker(Lcom/narvii/video/model/StickerInfoPack;)Ljava/util/ArrayList;

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addSticker(Lcom/narvii/video/model/StickerInfoPack;Z)Ljava/util/ArrayList;

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 182
    iput-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 183
    iput-object v3, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    .line 184
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 187
    :cond_2
    sget v1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/attachment/DrawRectView;

    invoke-virtual {v1, v2}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 188
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    invoke-direct {p0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    .line 189
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 190
    iget-boolean v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hasMainTrackMovedWhenEnterEditMode:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 191
    iput-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hasMainTrackMovedWhenEnterEditMode:Z

    .line 192
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v1, :cond_3

    iget v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    :cond_3
    const/4 v1, 0x2

    .line 196
    invoke-static {p0, v2, v0, v1, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V

    goto :goto_0

    .line 198
    :cond_4
    iput-object v3, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 199
    sget v0, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/DrawRectView;

    invoke-virtual {v0, v3, v2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 200
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    :goto_0
    return-void
.end method

.method public final getActiveCaption()Lcom/narvii/video/model/Caption;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    return-object v0
.end method

.method public final getActiveSticker()Lcom/narvii/video/model/StickerInfoPack;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 722
    invoke-static {}, Lcom/narvii/util/Utils;->isAndroidVersion8()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Translucent_NoActionBar:I

    :goto_0
    return v0
.end method

.method public final getEditing()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    return v0
.end method

.method public final getHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/paging/source/DataSource<",
            "*>;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getSelectedThisEventSequence()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->selectedThisEventSequence:Z

    return v0
.end method

.method public getSharedDataSource(Ljava/lang/String;)Lcom/narvii/paging/source/DataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/narvii/paging/source/DataSource<",
            "*>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/paging/source/DataSource;

    return-object p1
.end method

.method public getTargetClipListForViceTracks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/video/model/BaseClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 374
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 375
    iget v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 377
    invoke-static {p0, v0, v1, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getAttachmentList$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViceTrackDataType(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 381
    invoke-static {p0, v0, v1, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getAttachmentList$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-le v1, p1, :cond_2

    .line 383
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 384
    instance-of v0, p1, Lcom/narvii/video/model/Caption;

    if-eqz v0, :cond_1

    const/16 v2, 0x66

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lcom/narvii/video/model/StickerInfoPack;

    if-eqz p1, :cond_2

    const/16 v2, 0x67

    :cond_2
    :goto_0
    return v2
.end method

.method public initComponent()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->initComponent()V

    .line 101
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_duration:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoDurationText(Landroid/widget/TextView;)V

    .line 102
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_playback_time:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeText(Landroid/widget/TextView;)V

    .line 103
    sget v0, Lcom/narvii/mediaeditor/R$id;->divider:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeDivider(Landroid/view/View;)V

    .line 104
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_view_player:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 105
    sget v0, Lcom/narvii/mediaeditor/R$id;->player_button:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPlayerButton(Landroid/widget/ImageView;)V

    .line 106
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setMainTimeLineComponent(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    .line 107
    sget v0, Lcom/narvii/mediaeditor/R$id;->vice_time_line_panel:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "vice_time_line_panel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->setViceTimeLinePanel(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public initFrameRetrieverManager()V
    .locals 7

    const-string v0, "frameRetrieverOutputFolder"

    .line 726
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->outputFolderPath:Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->outputFolderPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 728
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->outputFolderPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ZZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 3

    .line 509
    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->onAVClipsPrepared()V

    .line 510
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAddAttachmentButton()V

    .line 511
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->savedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 512
    iget v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->entranceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setSkipPauseVideo(Z)V

    .line 514
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->addCaption()V

    goto :goto_0

    .line 515
    :cond_0
    iget v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->entranceType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getStickerList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setSkipPauseVideo(Z)V

    .line 517
    invoke-direct {p0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->openStickerPickerTab(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 503
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 504
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->savedInstanceState:Landroid/os/Bundle;

    const-string p1, "attachmentEntranceType"

    const/4 v0, 0x1

    .line 505
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->entranceType:I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 746
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/video/ScrollingTimeLineFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 747
    iget v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->REQUEST_EDIT_TEXT:I

    if-ne p1, v0, :cond_5

    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    const-string v0, "isNew"

    .line 748
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "color"

    .line 749
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "text"

    .line 750
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 751
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result v1

    .line 752
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->isTailFrameCellPlaying()Lkotlin/Pair;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 754
    new-instance v0, Lcom/narvii/video/model/Caption;

    invoke-direct {v0}, Lcom/narvii/video/model/Caption;-><init>()V

    .line 755
    iput-object p3, v0, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 756
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-ne p3, v4, :cond_1

    add-int/lit16 v1, v1, -0x3e8

    :cond_1
    iput v1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    const/16 p3, 0x1388

    .line 757
    iput p3, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 758
    iget p3, v0, Lcom/narvii/video/model/Caption;->textColor:I

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    invoke-static {p1, p3}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, v0, Lcom/narvii/video/model/Caption;->textColor:I

    .line 759
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;

    .line 760
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 761
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    .line 762
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAddAttachmentButton()V

    const/4 p1, 0x3

    .line 763
    invoke-static {p0, p2, p2, p1, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V

    .line 764
    invoke-direct {p0, p2, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V

    goto :goto_1

    .line 766
    :cond_2
    iget-object p2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz p2, :cond_4

    .line 767
    iput-object p3, p2, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    .line 768
    iget p3, p2, Lcom/narvii/video/model/Caption;->textColor:I

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    invoke-static {p1, p3}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p2, Lcom/narvii/video/model/Caption;->textColor:I

    .line 769
    invoke-virtual {p0, v4}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged(Z)V

    .line 770
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p3, "captionTab"

    invoke-virtual {p1, p3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 771
    :cond_3
    instance-of p1, v3, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    if-eqz p1, :cond_4

    .line 772
    check-cast v3, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    iget p1, p2, Lcom/narvii/video/model/Caption;->textColor:I

    invoke-virtual {v3, p1}, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->setCaptionColor(I)V

    .line 777
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz p1, :cond_6

    .line 778
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editCurrentCaption()V

    goto :goto_2

    .line 781
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    :cond_6
    :goto_2
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 3

    .line 733
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "captionTab"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 734
    :goto_0
    instance-of v2, v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    if-eqz v2, :cond_1

    .line 735
    check-cast v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->dismiss(Z)V

    return p1

    .line 738
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "stickerTab"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 739
    :cond_2
    instance-of v0, v1, Lcom/narvii/app/FragmentOnBackListener;

    if-eqz v0, :cond_3

    .line 740
    check-cast v1, Lcom/narvii/app/FragmentOnBackListener;

    invoke-interface {v1, p1}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    move-result p1

    return p1

    .line 742
    :cond_3
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    move-result p1

    return p1
.end method

.method public onBlockedInstallingSticker()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->progress:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void

    :cond_0
    const-string v0, "progress"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onColorChanged(IIZ)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 830
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz p1, :cond_3

    .line 831
    iput p2, p1, Lcom/narvii/video/model/Caption;->shadowColor:I

    .line 832
    iput-boolean p3, p1, Lcom/narvii/video/model/Caption;->hasShadow:Z

    .line 833
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged()V

    goto :goto_0

    .line 823
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz p1, :cond_3

    .line 824
    iput p2, p1, Lcom/narvii/video/model/Caption;->strokeColor:I

    .line 825
    iput-boolean p3, p1, Lcom/narvii/video/model/Caption;->hasStroke:Z

    .line 826
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged()V

    goto :goto_0

    .line 817
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz p1, :cond_3

    .line 818
    iput p2, p1, Lcom/narvii/video/model/Caption;->textColor:I

    .line 819
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "captionTab"

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 74
    :goto_0
    instance-of v1, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    if-eqz v1, :cond_1

    .line 75
    check-cast p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->setCaptionTabListener(Lcom/narvii/video/attachment/caption/CaptionTabFragment;)V

    .line 77
    :cond_1
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->progress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 78
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->progress:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onCreate$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment$onCreate$1;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :cond_2
    const-string p1, "progress"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_attachment_editor:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onCurrentCaptionChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 865
    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged(Z)V

    return-void
.end method

.method public final onCurrentCaptionChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 869
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged(ZZZ)V

    return-void
.end method

.method public final onCurrentCaptionChanged(ZZZ)V
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 875
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p3

    invoke-interface {p3, v0, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetCaption(Lcom/narvii/video/model/Caption;Z)V

    .line 877
    :cond_0
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onAttachmentChanged(Lcom/narvii/video/model/BaseAttachmentInfoPack;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 879
    invoke-static {p0, p3, p3, p1, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onFontChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz v0, :cond_0

    .line 841
    iput-object p1, v0, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    .line 842
    iput-object p2, v0, Lcom/narvii/video/model/Caption;->fontObjectId:Ljava/lang/String;

    .line 843
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged()V

    :cond_0
    return-void
.end method

.method public onFragmentDismiss(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 848
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->resetViewsWhenEditing()V

    const/4 p1, 0x0

    .line 849
    iput-boolean p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 850
    sget p1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/DrawRectView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    return-void
.end method

.method public onPlayingEOF()V
    .locals 0

    .line 915
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->resetViewsWhenEditing()V

    return-void
.end method

.method public onPlayingProgress(JJ)V
    .locals 0

    return-void
.end method

.method public onPlayingStopped()V
    .locals 0

    .line 919
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->resetViewsWhenEditing()V

    return-void
.end method

.method public onStickerInstallFailed()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->progress:Lcom/narvii/util/dialog/ProgressDialog;

    const/4 v1, 0x0

    const-string v2, "progress"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->progress:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onStyleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz v0, :cond_0

    .line 803
    iput-object p1, v0, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    .line 804
    iput-object p2, v0, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 805
    invoke-virtual {p0, p2, p1, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged(ZZZ)V

    .line 806
    sget p1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/DrawRectView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 807
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->unMute()V

    .line 808
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    iget p2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v0, p2

    invoke-interface {p1, p2, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->playVideo(II)V

    :cond_0
    return-void
.end method

.method public onViceTrackClicked(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 226
    invoke-static {p0, v0, v2, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getAttachmentList$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 227
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-le v4, p1, :cond_e

    .line 228
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 230
    instance-of v4, v3, Lcom/narvii/video/model/Caption;

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 231
    :cond_1
    instance-of v4, v3, Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    .line 235
    :goto_0
    iget-object v6, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz v6, :cond_4

    if-eqz v6, :cond_3

    iget v5, v6, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 236
    :cond_4
    iget-object v6, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v6, :cond_6

    if-eqz v6, :cond_5

    iget v5, v6, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    goto :goto_1

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_6
    :goto_1
    const/4 v6, 0x2

    if-eq v5, p1, :cond_8

    .line 240
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 241
    invoke-static {p0, v2, v0, v6, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 242
    invoke-direct {p0, v4, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V

    if-ne v4, v2, :cond_7

    .line 244
    sget p1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/DrawRectView;

    invoke-virtual {p1, v2}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 246
    :cond_7
    invoke-direct {p0, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    goto :goto_3

    .line 248
    :cond_8
    iget-boolean p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    if-eqz p1, :cond_9

    return-void

    .line 251
    :cond_9
    iget p1, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    iget v5, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v5, p1

    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result v7

    if-gt p1, v7, :cond_a

    if-gt v5, v7, :cond_b

    .line 252
    :cond_a
    iput-boolean v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hasMainTrackMovedWhenEnterEditMode:Z

    .line 253
    iget p1, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->moveMainTrackTo(I)V

    .line 254
    iget p1, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    invoke-static {p0, p1, v0, v6, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V

    :cond_b
    if-nez v4, :cond_c

    .line 257
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editCurrentCaption()V

    goto :goto_3

    :cond_c
    if-ne v4, v2, :cond_e

    .line 259
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object p1

    goto :goto_2

    :cond_d
    move-object p1, v1

    :goto_2
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    .line 260
    invoke-static {p0, v0, v2, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->openStickerPickerTab$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)V

    :cond_e
    :goto_3
    return-void
.end method

.method public onViceTrackOffsetChanged(I)V
    .locals 3

    .line 896
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    if-le v0, p1, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 897
    invoke-static {p0, v2, v0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getAttachmentList$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 898
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 899
    instance-of v0, p1, Lcom/narvii/video/model/Caption;

    if-eqz v0, :cond_1

    .line 900
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    check-cast p1, Lcom/narvii/video/model/Caption;

    invoke-interface {v0, p1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetCaption(Lcom/narvii/video/model/Caption;Z)V

    goto :goto_0

    .line 901
    :cond_1
    instance-of v0, p1, Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v0, :cond_2

    .line 902
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    check-cast p1, Lcom/narvii/video/model/StickerInfoPack;

    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 904
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onVideoPlaybackStatusChanged(Z)V
    .locals 0

    .line 676
    invoke-super {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->onVideoPlaybackStatusChanged(Z)V

    if-eqz p1, :cond_2

    .line 679
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 680
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 683
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->unSelectCurrentAttachment(I)V

    :cond_2
    return-void
.end method

.method protected onVideoSeekingPositionChanged(J)V
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz v0, :cond_0

    long-to-int v1, p1

    .line 714
    invoke-direct {p0, v0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;I)V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v0, :cond_1

    long-to-int p2, p1

    .line 717
    invoke-direct {p0, v0, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;I)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 392
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_add_caption:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$1;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    :cond_0
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_add_sticker:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$2;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    :cond_1
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_done:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance p2, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$3;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    sget p1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/DrawRectView;

    new-instance p2, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$4;

    invoke-direct {p2, p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$4;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRectClickListener(Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;)V

    .line 423
    sget p1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/DrawRectView;

    new-instance p2, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$5;

    invoke-direct {p2, p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$5;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 430
    sget p1, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/attachment/DrawRectView;

    new-instance p2, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;

    invoke-direct {p2, p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/video/attachment/DrawRectView;->setOnDrawRectTouchListener(Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;)V

    .line 493
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addPlayingEventListener(Lcom/narvii/video/interfaces/IPlayingEventListener;)V

    return-void
.end method

.method public resetViewsWhenEditing()V
    .locals 2

    .line 923
    iget-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    if-eqz v0, :cond_2

    .line 924
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v0, :cond_0

    .line 925
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    goto :goto_0

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz v0, :cond_1

    .line 927
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    .line 929
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    iget v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editingPosition:I

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(I)V

    :cond_2
    return-void
.end method

.method public revertCaption(Lcom/narvii/video/model/Caption;)V
    .locals 1

    const-string v0, "caption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz v0, :cond_0

    .line 859
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 860
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged()V

    :cond_0
    return-void
.end method

.method public savePreviewSticker()V
    .locals 6

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 150
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v1}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 153
    :goto_0
    iget-object v3, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    iput-object v3, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 154
    iput-object v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    const/4 v3, 0x1

    .line 155
    invoke-direct {p0, v3, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V

    .line 156
    iget-object v4, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v4, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 159
    :cond_1
    iget-boolean v4, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hasMainTrackMovedWhenEnterEditMode:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    .line 160
    iput-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hasMainTrackMovedWhenEnterEditMode:Z

    .line 161
    iget-object v4, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v4, :cond_2

    iget v5, v4, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    :cond_2
    const/4 v4, 0x2

    .line 165
    invoke-static {p0, v5, v0, v4, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V

    .line 166
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAddAttachmentButton()V

    if-eqz v1, :cond_3

    .line 168
    sget v0, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/DrawRectView;

    invoke-virtual {v0, v3}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 169
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    :cond_3
    return-void
.end method

.method public final selectAttachmentByHandClick(Landroid/graphics/PointF;)V
    .locals 4

    const-string v0, "curPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    iget-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    if-eqz v0, :cond_0

    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz v0, :cond_2

    .line 640
    :cond_1
    sget v0, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/DrawRectView;

    invoke-virtual {v0, p1}, Lcom/narvii/video/attachment/DrawRectView;->curPointInDrawOrEditRect(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 644
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAttachmentDrawRectByTimelinePosition(ILandroid/graphics/PointF;)Lcom/narvii/video/attachment/caption/AttachmentDrawRect;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 647
    iget v0, p1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    .line 648
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    .line 651
    iget v0, v0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    iget-object v3, p1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->attachment:Lcom/narvii/video/model/BaseAttachmentInfoPack;

    iget v3, v3, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    if-eq v0, v3, :cond_7

    .line 652
    :cond_5
    iput-boolean v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->selectedThisEventSequence:Z

    .line 653
    iget v0, p1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->mode:I

    iget-object v3, p1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->attachment:Lcom/narvii/video/model/BaseAttachmentInfoPack;

    invoke-direct {p0, v0, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V

    const/4 v0, 0x0

    .line 654
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 655
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInPlay()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    .line 656
    invoke-static {p0, v2, v0, v3, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 657
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 659
    :cond_6
    sget v0, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/DrawRectView;

    invoke-virtual {v0, v2}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 660
    sget v0, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/DrawRectView;

    iget-object v1, p1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->pointList:Ljava/util/List;

    iget p1, p1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->mode:I

    invoke-virtual {v0, v1, p1}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    :cond_7
    return-void
.end method

.method public final setActiveCaption(Lcom/narvii/video/model/Caption;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    return-void
.end method

.method public final setActiveSticker(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    return-void
.end method

.method public final setEditing(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    return-void
.end method

.method public setPickedPreviewSticker(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 6

    const-string v0, "stickerInfoPack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->progress:Lcom/narvii/util/dialog/ProgressDialog;

    const-string v1, "progress"

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->progress:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object p1

    const-string v0, "stickerInfoPack.copy()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 117
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 121
    invoke-virtual {p1, v0}, Lcom/narvii/video/model/StickerInfoPack;->mergeEditings(Lcom/narvii/video/model/StickerInfoPack;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 123
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result v0

    .line 124
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->isTailFrameCellPlaying()Lkotlin/Pair;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_5

    .line 125
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    add-int/lit16 v0, v0, -0x3e8

    .line 126
    :cond_5
    iget v4, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    if-lez v4, :cond_6

    if-lt v4, v0, :cond_7

    .line 127
    :cond_6
    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 129
    :cond_7
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    if-gtz v0, :cond_8

    const-string v0, "prefs"

    .line 130
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "getService(\"prefs\")"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    .line 131
    invoke-virtual {p1}, Lcom/narvii/video/model/StickerInfoPack;->getPrefsKey()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1388

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 133
    :cond_8
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v3, :cond_9

    .line 135
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    goto :goto_3

    .line 137
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, p1, v1, v3, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->addSticker$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/model/StickerInfoPack;ZILjava/lang/Object;)Ljava/util/ArrayList;

    .line 139
    :goto_3
    invoke-virtual {p1}, Lcom/narvii/video/model/BaseAttachmentInfoPack;->hasBeenEdited()Z

    move-result v0

    if-nez v0, :cond_a

    .line 140
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    new-instance v3, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, p1, v2, v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->scaleSticker(Lcom/narvii/video/model/StickerInfoPack;FLandroid/graphics/PointF;)V

    .line 142
    :cond_a
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 143
    sget v0, Lcom/narvii/mediaeditor/R$id;->draw_rect:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/attachment/DrawRectView;

    invoke-virtual {v0, v1}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 144
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    return-void

    .line 111
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final setSelectedThisEventSequence(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->selectedThisEventSequence:Z

    return-void
.end method

.method public setSharedDataSource(Ljava/lang/String;Lcom/narvii/paging/source/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/paging/source/DataSource<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hashMap:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected showPauseButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 0

    return-void
.end method
