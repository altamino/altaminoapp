.class public final Lcom/narvii/video/attachment/AttachmentEditorFragment;
.super Lcom/narvii/video/BaseViceTimeLineFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentDismissListener;
.implements Lcom/narvii/video/attachment/caption/CaptionTabChangeListener;
.implements Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;
.implements Lcom/narvii/video/attachment/caption/EditCaptionTextHost;
.implements Lcom/narvii/video/attachment/caption/CaptionEditListener;
.implements Lcom/narvii/app/FragmentWillFinishListener;
.implements Lcom/narvii/util/ShareDataSourceHost;
.implements Lcom/narvii/video/interfaces/IPlayingEventListener;
.implements Lcom/narvii/video/attachment/ResetAttachmentViewsListener;


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ATTACHMENT_MAX_COUNT:I

.field private final REQUEST_EDIT_TEXT:I

.field private activeCaption:Lcom/narvii/video/model/Caption;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private activeSticker:Lcom/narvii/video/model/StickerInfoPack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastClickTime:J

.field private orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private outputFolderPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private progress:Lcom/narvii/util/dialog/ProgressDialog;

.field private savedInstanceState:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectedThisEventSequence:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v1, Lkotlin/jvm/internal/g0;

    .line 6
    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    const-string v3, "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/g0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    aput-object v1, v0, v5

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->ATTACHMENT_MAX_COUNT:I

    .line 8
    .line 9
    const/16 v0, 0x12c

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->REQUEST_EDIT_TEXT:I

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hashMap:Ljava/util/HashMap;

    .line 19
    .line 20
    sget-object v0, Lcom/narvii/video/attachment/AttachmentEditorFragment$binding$2;->INSTANCE:Lcom/narvii/video/attachment/AttachmentEditorFragment$binding$2;

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->binding$delegate:Lkotlin/properties/d;

    .line 27
    return-void
.end method

.method public static synthetic D(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onViewCreated$lambda$13(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onViewCreated$lambda$12(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment$lambda$8(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    return-void
.end method

.method public static synthetic G(Lcom/narvii/video/attachment/AttachmentEditorFragment;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onViewCreated$lambda$14(Lcom/narvii/video/attachment/AttachmentEditorFragment;I)V

    return-void
.end method

.method public static synthetic H(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onViewCreated$lambda$15(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic I(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onViewCreated$lambda$11(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic J(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCreate$lambda$0(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic K(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment$lambda$9(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    return-void
.end method

.method public static final synthetic access$editCurrentCaption(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editCurrentCaption()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getMainTimeLineComponent(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/widget/MediaTimeLineComponent;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getPreviewPlayer(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$notifyCaptionChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->notifyCaptionChanged()V

    .line 4
    return-void
.end method

.method public static final synthetic access$onAttachmentChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onAttachmentChanged(Lcom/narvii/video/model/BaseAttachmentInfoPack;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$refreshViceTimeline(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimeline(Lcom/narvii/video/model/BaseAttachmentInfoPack;Z)V

    .line 4
    return-void
.end method

.method public static final synthetic access$removeCurrentAttachment(Lcom/narvii/video/attachment/AttachmentEditorFragment;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->removeCurrentAttachment(I)V

    .line 4
    return-void
.end method

.method public static final synthetic access$setOrgActiveStickerBeforeEditing$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    .line 3
    return-void
.end method

.method private final addCaption()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editCaptionText(Lcom/narvii/video/model/Caption;)V

    .line 5
    return-void
.end method

.method private final addSticker()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->openStickerPickerTab(Z)V

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iput-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    iget-object v2, v2, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1, v0}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 19
    return-void
.end method

.method private final changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-eq p1, v2, :cond_0

    .line 8
    goto :goto_2

    .line 9
    .line 10
    :cond_0
    iput-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 13
    move-object v0, p2

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/video/model/StickerInfoPack;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget p1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move p1, v1

    .line 24
    .line 25
    :goto_0
    if-eqz p2, :cond_2

    .line 26
    .line 27
    iget v1, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 28
    .line 29
    :cond_2
    if-eq p1, v1, :cond_6

    .line 30
    .line 31
    new-instance p1, Lcom/narvii/video/attachment/b;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/narvii/video/attachment/b;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 38
    goto :goto_2

    .line 39
    .line 40
    :cond_3
    iput-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 43
    move-object v0, p2

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/video/model/Caption;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    iget p1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    move p1, v1

    .line 54
    .line 55
    :goto_1
    if-eqz p2, :cond_5

    .line 56
    .line 57
    iget v1, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 58
    .line 59
    :cond_5
    if-eq p1, v1, :cond_6

    .line 60
    .line 61
    new-instance p1, Lcom/narvii/video/attachment/a;

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, p0}, Lcom/narvii/video/attachment/a;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 68
    :cond_6
    :goto_2
    return-void
.end method

.method private static final changeActiveAttachment$lambda$8(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onActiveAttachmentIndexChanged(I)V

    .line 11
    return-void
.end method

.method private static final changeActiveAttachment$lambda$9(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onActiveAttachmentIndexChanged(I)V

    .line 11
    return-void
.end method

.method private final editCaptionText(Lcom/narvii/video/model/Caption;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "fragmentRegister"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/FragmentRegister;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/scene/model/SceneInfo;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Lcom/narvii/scene/model/SceneInfo;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->copy()Lcom/narvii/scene/model/SceneInfo;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    const-string v2, "copy(...)"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 53
    .line 54
    if-ltz v3, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 58
    move-result v2

    .line 59
    .line 60
    if-ge v3, v2, :cond_0

    .line 61
    .line 62
    iget-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    .line 63
    .line 64
    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    .line 69
    :cond_0
    sget-object v2, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    .line 76
    invoke-interface {v3, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getSnapShot(Lcom/narvii/scene/model/SceneInfo;)Landroid/graphics/Bitmap;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 81
    .line 82
    const-string v1, "captionEditText"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    new-instance v1, Landroid/content/Intent;

    .line 91
    .line 92
    const-string v2, "android.intent.action.VIEW"

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    .line 97
    if-eqz p1, :cond_1

    .line 98
    .line 99
    .line 100
    const-string/jumbo v0, "text"

    .line 101
    .line 102
    iget-object v2, p1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    .line 107
    const-string v0, "color"

    .line 108
    .line 109
    iget v2, p1, Lcom/narvii/video/model/Caption;->textColor:I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    :cond_1
    const/4 v0, 0x0

    .line 114
    .line 115
    if-nez p1, :cond_2

    .line 116
    const/4 p1, 0x1

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    move p1, v0

    .line 119
    .line 120
    :goto_0
    const-string v2, "isNew"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    .line 125
    iget p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->REQUEST_EDIT_TEXT:I

    .line 126
    .line 127
    .line 128
    invoke-static {p0, v1, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 132
    :cond_3
    return-void
.end method

.method private final editCurrentCaption()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 16
    move-result v0

    .line 17
    .line 18
    iput v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editingPosition:I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Lcom/narvii/video/attachment/caption/CaptionTabFragment;-><init>()V

    .line 34
    .line 35
    new-instance v1, Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    const-string v3, "caption"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->setCaptionTabListener(Lcom/narvii/video/attachment/caption/CaptionTabFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    sget v2, Lcom/narvii/mediaeditor/R$anim;->activity_push_bottom_in:I

    .line 70
    .line 71
    sget v3, Lcom/narvii/mediaeditor/R$anim;->activity_push_bottom_out:I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2, v3, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    sget v2, Lcom/narvii/mediaeditor/R$id;->attachment_tab:I

    .line 80
    .line 81
    const-string v3, "captionTab"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 91
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method static synthetic getAttachmentList$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getAttachmentList(Z)Ljava/util/List;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/video/attachment/AttachmentEditorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lkotlin/properties/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 14
    return-object v0
.end method

.method private final notifyCaptionChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, v0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged(ZZZ)V

    .line 5
    return-void
.end method

.method private final onActiveAttachmentIndexChanged(I)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 12
    .line 13
    :goto_0
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget v2, v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v2, -0x1

    .line 18
    .line 19
    .line 20
    :goto_1
    invoke-virtual {p0, v2}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViewIndexOfTrackIndex(I)I

    .line 21
    move-result v3

    .line 22
    .line 23
    sget-boolean v4, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 24
    const/4 v5, 0x0

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    iget-object v4, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->debugText:Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    iget-object v4, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->debugText:Landroid/widget/TextView;

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 37
    move-result-object v6

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    :cond_2
    iget-object v4, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    move-result v4

    .line 47
    move v6, v5

    .line 48
    .line 49
    :goto_2
    if-ge v6, v4, :cond_7

    .line 50
    .line 51
    iget-object v7, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    move-result-object v7

    .line 56
    .line 57
    instance-of v8, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 58
    .line 59
    if-eqz v8, :cond_6

    .line 60
    .line 61
    sget v8, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v8

    .line 66
    .line 67
    check-cast v8, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 68
    .line 69
    if-ne v6, v3, :cond_5

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 73
    move-result-object v9

    .line 74
    .line 75
    iget-object v9, v9, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->viceTimelineScrollView:Landroid/widget/ScrollView;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    .line 79
    move-result v9

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 83
    move-result-object v10

    .line 84
    .line 85
    iget-object v10, v10, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->viceTimelineScrollView:Landroid/widget/ScrollView;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 89
    move-result v10

    .line 90
    add-int/2addr v10, v9

    .line 91
    .line 92
    check-cast v7, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 96
    move-result v11

    .line 97
    .line 98
    if-ge v11, v9, :cond_3

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 102
    move-result-object v9

    .line 103
    .line 104
    iget-object v9, v9, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->viceTimelineScrollView:Landroid/widget/ScrollView;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 108
    move-result v7

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9, v5, v7}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 112
    goto :goto_3

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 116
    move-result v9

    .line 117
    .line 118
    if-le v9, v10, :cond_4

    .line 119
    .line 120
    .line 121
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 122
    move-result-object v9

    .line 123
    .line 124
    iget-object v9, v9, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->viceTimelineScrollView:Landroid/widget/ScrollView;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 128
    move-result v7

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 132
    move-result-object v10

    .line 133
    .line 134
    iget-object v10, v10, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->viceTimelineScrollView:Landroid/widget/ScrollView;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 138
    move-result v10

    .line 139
    sub-int/2addr v7, v10

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9, v5, v7}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 143
    :cond_4
    :goto_3
    const/4 v7, 0x1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8, v7}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->toggleEditMode(Z)V

    .line 147
    .line 148
    new-instance v7, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1;

    .line 149
    .line 150
    .line 151
    invoke-direct {v7, v1, v2, p1, p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1;-><init>(Lcom/narvii/video/model/BaseAttachmentInfoPack;IILcom/narvii/video/attachment/AttachmentEditorFragment;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v7}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->setViceTimeLineEditCallback(Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;)V

    .line 155
    goto :goto_4

    .line 156
    .line 157
    .line 158
    :cond_5
    invoke-virtual {v8, v5}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->toggleEditMode(Z)V

    .line 159
    const/4 v7, 0x0

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v7}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->setViceTimeLineEditCallback(Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;)V

    .line 163
    .line 164
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 165
    goto :goto_2

    .line 166
    :cond_7
    return-void
.end method

.method private final onAttachmentChanged(Lcom/narvii/video/model/BaseAttachmentInfoPack;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    .line 11
    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string/jumbo p1, "stickerTab"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    .line 22
    :goto_0
    instance-of p1, p0, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    check-cast p0, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;->onLocalAnimatedStickerConvertTerminated()V

    .line 30
    :cond_1
    return-void
.end method

.method private static final onViewCreated$lambda$11(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 p1, 0x2

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v1, v2, p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->addCaption()V

    .line 17
    return-void
.end method

.method private static final onViewCreated$lambda$12(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 p1, 0x2

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v1, v2, p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->addSticker()V

    .line 20
    return-void
.end method

.method private static final onViewCreated$lambda$13(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance p1, Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getMediaLengthInMs()I

    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v1

    .line 25
    :goto_0
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v1, v2, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getAttachmentList$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)Ljava/util/List;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    check-cast v2, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 47
    .line 48
    iget v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 49
    .line 50
    iget v4, v2, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 51
    .line 52
    add-int v5, v3, v4

    .line 53
    .line 54
    if-le v5, v0, :cond_1

    .line 55
    add-int/2addr v4, v3

    .line 56
    sub-int/2addr v4, v0

    .line 57
    sub-int/2addr v3, v4

    .line 58
    .line 59
    iput v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    const-string v1, "captionList"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    const-string/jumbo v1, "stickerList"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const/4 v0, -0x1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 102
    return-void
.end method

.method private static final onViewCreated$lambda$14(Lcom/narvii/video/attachment/AttachmentEditorFragment;I)V
    .locals 4

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->selectedThisEventSequence:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->lastClickTime:J

    .line 19
    sub-long/2addr v0, v2

    .line 20
    .line 21
    const-wide/16 v2, 0x1f4

    .line 22
    .line 23
    cmp-long p1, v0, v2

    .line 24
    .line 25
    if-lez p1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    move-result-wide v0

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->lastClickTime:J

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editCurrentCaptionText()V

    .line 35
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$15(Lcom/narvii/video/attachment/AttachmentEditorFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method private final openStickerPickerTab(Z)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "fragmentRegister"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/FragmentRegister;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const-string/jumbo v1, "stickerEditorTab"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/app/FragmentRegister;->getFragmentClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 29
    move-result v2

    .line 30
    .line 31
    iput v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editingPosition:I

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    iget-object v2, v2, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 42
    .line 43
    new-instance v2, Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v3, "tabBottom"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    .line 54
    const-string/jumbo v1, "source"

    .line 55
    .line 56
    const-string v3, "editor"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    if-nez p1, :cond_0

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    const-string v1, "activeSticker"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v0, v2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    const-string v0, "instantiate(...)"

    .line 87
    .line 88
    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    instance-of v0, p1, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;

    .line 92
    .line 93
    if-eqz v0, :cond_1

    .line 94
    move-object v0, p1

    .line 95
    .line 96
    check-cast v0, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, p0}, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;->setEditorStickerPickerCallback(Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    sget v1, Lcom/narvii/mediaeditor/R$anim;->activity_push_bottom_in:I

    .line 114
    .line 115
    sget v2, Lcom/narvii/mediaeditor/R$anim;->activity_push_bottom_out:I

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1, v2, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    sget v1, Lcom/narvii/mediaeditor/R$id;->attachment_tab:I

    .line 124
    .line 125
    const-string/jumbo v2, "stickerTab"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    if-eqz p1, :cond_2

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 135
    :cond_2
    return-void
.end method

.method static synthetic openStickerPickerTab$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->openStickerPickerTab(Z)V

    .line 9
    return-void
.end method

.method private final refreshViceTimeline(Lcom/narvii/video/model/BaseAttachmentInfoPack;Z)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v3, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 7
    const/4 v4, 0x1

    .line 8
    .line 9
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 10
    .line 11
    sub-int v5, v0, v1

    .line 12
    move-object v1, p0

    .line 13
    move-object v2, p1

    .line 14
    move v6, p2

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLine(Lcom/narvii/video/model/BaseClipInfoPack;IZIZ)V

    .line 18
    return-void
.end method

.method static synthetic refreshViceTimeline$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimeline(Lcom/narvii/video/model/BaseAttachmentInfoPack;Z)V

    .line 9
    return-void
.end method

.method private final refreshViceTimelines(IZ)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 7
    move-result p1

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1, v3, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getAttachmentList$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    check-cast v2, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 36
    .line 37
    iget v2, v2, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 38
    .line 39
    sub-int v2, p1, v2

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0, v3, v0, p2}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel(ZLjava/util/List;Z)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateViceTimeLineSelectedStatus()V

    .line 54
    return-void
.end method

.method static synthetic refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p3, 0x1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p1, -0x1

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines(IZ)V

    .line 14
    return-void
.end method

.method private final removeCurrentAttachment(I)V
    .locals 6

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 8
    .line 9
    :goto_0
    if-eqz v0, :cond_a

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    .line 16
    if-eqz v1, :cond_6

    .line 17
    .line 18
    if-eqz p1, :cond_4

    .line 19
    .line 20
    if-eq p1, v2, :cond_1

    .line 21
    goto :goto_3

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const-string/jumbo v5, "stickerTab"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 33
    move-result-object v1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move-object v1, v3

    .line 36
    .line 37
    :goto_1
    instance-of v5, v1, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;

    .line 38
    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    check-cast v1, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;->onEditorStickerRemoved()V

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3, v2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 54
    goto :goto_3

    .line 55
    .line 56
    .line 57
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    const-string v5, "captionTab"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 66
    move-result-object v1

    .line 67
    goto :goto_2

    .line 68
    :cond_5
    move-object v1, v3

    .line 69
    .line 70
    :goto_2
    instance-of v5, v1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 71
    .line 72
    if-eqz v5, :cond_6

    .line 73
    .line 74
    check-cast v1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v4}, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->dismiss(Z)V

    .line 78
    :cond_6
    :goto_3
    const/4 v1, 0x3

    .line 79
    .line 80
    if-eqz p1, :cond_9

    .line 81
    .line 82
    if-eq p1, v2, :cond_7

    .line 83
    goto :goto_4

    .line 84
    .line 85
    .line 86
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    check-cast v0, Lcom/narvii/video/model/StickerInfoPack;

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->removeSticker(Lcom/narvii/video/model/StickerInfoPack;)Ljava/util/ArrayList;

    .line 93
    .line 94
    iget-boolean p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 95
    .line 96
    if-nez p1, :cond_8

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v4, v4, v1, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAddAttachmentButton()V

    .line 103
    .line 104
    .line 105
    :cond_8
    invoke-direct {p0, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->unSelectCurrentAttachment(I)V

    .line 106
    goto :goto_4

    .line 107
    .line 108
    .line 109
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    check-cast v0, Lcom/narvii/video/model/Caption;

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->removeCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, v4}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->unSelectCurrentAttachment(I)V

    .line 119
    .line 120
    .line 121
    invoke-static {p0, v4, v4, v1, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAddAttachmentButton()V

    .line 125
    .line 126
    .line 127
    :goto_4
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 132
    :cond_a
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private final setCaptionTabListener(Lcom/narvii/video/attachment/caption/CaptionTabFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p0, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->captionTabChangeListener:Lcom/narvii/video/attachment/caption/CaptionTabChangeListener;

    .line 3
    .line 4
    iput-object p0, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->captionEditListener:Lcom/narvii/video/attachment/caption/CaptionEditListener;

    .line 5
    .line 6
    iput-object p0, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->shareDataSourceHost:Lcom/narvii/util/ShareDataSourceHost;

    .line 7
    .line 8
    iput-object p0, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->resetAttachmentViewsListener:Lcom/narvii/video/attachment/ResetAttachmentViewsListener;

    .line 9
    .line 10
    iput-object p0, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->fragmentDismissListener:Lcom/narvii/app/FragmentDismissListener;

    .line 11
    .line 12
    iput-object p0, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->editCaptionTextHost:Lcom/narvii/video/attachment/caption/EditCaptionTextHost;

    .line 13
    return-void
.end method

.method private final unSelectCurrentAttachment(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    if-eq p1, v1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0, p1}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 34
    :goto_0
    return-void
.end method

.method private final updateAddAttachmentButton()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v2

    .line 29
    add-int/2addr v1, v2

    .line 30
    .line 31
    iget v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->ATTACHMENT_MAX_COUNT:I

    .line 32
    .line 33
    if-ge v1, v2, :cond_0

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    .line 38
    :goto_0
    iget-object v2, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->optionAddCaption:Landroid/widget/ImageView;

    .line 39
    .line 40
    const/high16 v3, 0x3f000000    # 0.5f

    .line 41
    .line 42
    const/high16 v4, 0x3f800000    # 1.0f

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    move v5, v4

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v5, v3

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 51
    .line 52
    iget-object v2, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->optionAddCaption:Landroid/widget/ImageView;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 56
    .line 57
    iget-object v2, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->optionAddSticker:Landroid/widget/ImageView;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    move v3, v4

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 64
    .line 65
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->optionAddSticker:Landroid/widget/ImageView;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 69
    return-void
.end method

.method private final updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V
    .locals 1

    .line 10
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

    .line 1
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    if-gt v0, p2, :cond_1

    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v0, v1

    if-lt v0, p2, :cond_1

    .line 2
    instance-of p2, p1, Lcom/narvii/video/model/Caption;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p2

    check-cast p1, Lcom/narvii/video/model/Caption;

    invoke-interface {p2, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionViewPoints(Lcom/narvii/video/model/Caption;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of p2, p1, Lcom/narvii/video/model/StickerInfoPack;

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p2

    check-cast p1, Lcom/narvii/video/model/StickerInfoPack;

    invoke-interface {p2, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerViewPoints(Lcom/narvii/video/model/StickerInfoPack;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of p1, p1, Lcom/narvii/video/model/StickerInfoPack;

    .line 9
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final updateViceTimeLineSelectedStatus()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    iget v0, v0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 18
    .line 19
    iget v0, v0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, -0x1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->getViewIndexOfTrackIndex(I)I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    move v3, v2

    .line 38
    .line 39
    :goto_1
    if-ge v3, v1, :cond_4

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    iget-object v4, v4, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    sget v5, Lcom/narvii/mediaeditor/R$id;->vice_time_line_wrapper:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    check-cast v5, Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 58
    .line 59
    instance-of v4, v4, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    if-ne v3, v0, :cond_2

    .line 64
    const/4 v4, 0x1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v4}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->toggleEditMode(Z)V

    .line 68
    goto :goto_2

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {v5, v2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->toggleEditMode(Z)V

    .line 72
    .line 73
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    return-void
.end method


# virtual methods
.method public editCurrentCaptionText()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editCaptionText(Lcom/narvii/video/model/Caption;)V

    .line 8
    :cond_0
    return-void
.end method

.method public forsakePreviewSticker()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-interface {v2, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->removeSticker(Lcom/narvii/video/model/StickerInfoPack;)Ljava/util/ArrayList;

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-interface {v3, v1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addSticker(Lcom/narvii/video/model/StickerInfoPack;Z)Ljava/util/ArrayList;

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    .line 29
    const/4 v3, 0x0

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    iput-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 34
    .line 35
    iput-object v3, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    .line 44
    invoke-interface {v4, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 66
    .line 67
    iget-boolean v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hasMainTrackMovedWhenEnterEditMode:Z

    .line 68
    const/4 v2, -0x1

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    iput-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hasMainTrackMovedWhenEnterEditMode:Z

    .line 73
    .line 74
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    iget v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 79
    :cond_3
    const/4 v1, 0x2

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v2, v0, v1, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_4
    iput-object v3, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v3, v2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 102
    :goto_0
    return-void
.end method

.method public final getActiveCaption()Lcom/narvii/video/model/Caption;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    return-object v0
.end method

.method public final getActiveSticker()Lcom/narvii/video/model/StickerInfoPack;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isAndroidVersion8()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Translucent_NoActionBar:I

    .line 12
    :goto_0
    return v0
.end method

.method public final getEditing()Z
    .locals 1

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getSelectedThisEventSequence()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->selectedThisEventSequence:Z

    return v0
.end method

.method public getSharedDataSource(Ljava/lang/String;)Lcom/narvii/paging/source/DataSource;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/narvii/paging/source/DataSource<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "type"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hashMap:Ljava/util/HashMap;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/paging/source/DataSource;

    .line 15
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lw7/u;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    check-cast v2, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 51
    .line 52
    iget v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 56
    move-result v3

    .line 57
    .line 58
    iput v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x1

    .line 61
    const/4 v1, 0x0

    .line 62
    const/4 v2, 0x0

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v2, v0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getAttachmentList$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)Ljava/util/List;

    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method public getViceTrackDataType(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v2, v0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getAttachmentList$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)Ljava/util/List;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, -0x1

    .line 9
    .line 10
    if-ltz p1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-ge p1, v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 23
    .line 24
    instance-of v0, p1, Lcom/narvii/video/model/Caption;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/16 v1, 0x66

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    instance-of p1, p1, Lcom/narvii/video/model/StickerInfoPack;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const/16 v1, 0x67

    .line 36
    :cond_1
    :goto_0
    return v1
.end method

.method public initComponent()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->initComponent()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->videoDuration:Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoDurationText(Landroid/widget/TextView;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->videoPlaybackTime:Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeText(Landroid/widget/TextView;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->divider:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeDivider(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->videoViewPlayer:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->playerButton:Landroid/widget/ImageView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPlayerButton(Landroid/widget/ImageView;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setMainTimeLineComponent(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    .line 66
    const-string/jumbo v1, "viceTimeLinePanel"

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->setViceTimeLinePanel(Landroid/widget/LinearLayout;)V

    .line 73
    return-void
.end method

.method public initFrameRetrieverManager()V
    .locals 7

    .line 1
    .line 2
    const-string v0, "frameRetrieverOutputFolder"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->outputFolderPath:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->outputFolderPath:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x4

    .line 23
    const/4 v6, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static/range {v1 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 27
    :cond_0
    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->onAVClipsPrepared()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAddAttachmentButton()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->savedInstanceState:Landroid/os/Bundle;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->entranceType:I

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getCaptionList()Ljava/util/ArrayList;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setSkipPauseVideo(Z)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->addCaption()V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->entranceType:I

    .line 35
    const/4 v2, 0x2

    .line 36
    .line 37
    if-ne v0, v2, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getStickerList()Ljava/util/ArrayList;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setSkipPauseVideo(Z)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->openStickerPickerTab(Z)V

    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->savedInstanceState:Landroid/os/Bundle;

    .line 6
    .line 7
    const-string p1, "attachmentEntranceType"

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 12
    move-result p1

    .line 13
    .line 14
    iput p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->entranceType:I

    .line 15
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/video/ScrollingTimeLineFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->REQUEST_EDIT_TEXT:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_5

    .line 8
    const/4 p1, -0x1

    .line 9
    .line 10
    if-ne p2, p1, :cond_5

    .line 11
    .line 12
    if-eqz p3, :cond_5

    .line 13
    .line 14
    const-string p2, "isNew"

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 19
    move-result p2

    .line 20
    .line 21
    const-string v1, "color"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    move-result p1

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "text"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x0

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->isTailFrameCellPlaying()Lw7/u;

    .line 47
    move-result-object v2

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v2, v3

    .line 50
    :goto_0
    const/4 v4, 0x1

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    new-instance p2, Lcom/narvii/video/model/Caption;

    .line 55
    .line 56
    .line 57
    invoke-direct {p2}, Lcom/narvii/video/model/Caption;-><init>()V

    .line 58
    .line 59
    iput-object p3, p2, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lw7/u;->c()Ljava/lang/Object;

    .line 65
    move-result-object p3

    .line 66
    .line 67
    check-cast p3, Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    move-result p3

    .line 72
    .line 73
    if-ne p3, v4, :cond_1

    .line 74
    .line 75
    add-int/lit16 v1, v1, -0x3e8

    .line 76
    .line 77
    :cond_1
    iput v1, p2, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 78
    .line 79
    const/16 p3, 0x1388

    .line 80
    .line 81
    iput p3, p2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 82
    .line 83
    iget p3, p2, Lcom/narvii/video/model/Caption;->textColor:I

    .line 84
    .line 85
    .line 86
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    .line 87
    move-result p3

    .line 88
    .line 89
    .line 90
    invoke-static {p1, p3}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 91
    move-result p1

    .line 92
    .line 93
    iput p1, p2, Lcom/narvii/video/model/Caption;->textColor:I

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addCaption(Lcom/narvii/video/model/Caption;)Ljava/util/ArrayList;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAddAttachmentButton()V

    .line 114
    const/4 p1, 0x3

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v0, v0, p1, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, v0, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V

    .line 121
    goto :goto_1

    .line 122
    .line 123
    :cond_2
    iget-object p2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 124
    .line 125
    if-eqz p2, :cond_4

    .line 126
    .line 127
    iput-object p3, p2, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    .line 128
    .line 129
    iget p3, p2, Lcom/narvii/video/model/Caption;->textColor:I

    .line 130
    .line 131
    .line 132
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    .line 133
    move-result p3

    .line 134
    .line 135
    .line 136
    invoke-static {p1, p3}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 137
    move-result p1

    .line 138
    .line 139
    iput p1, p2, Lcom/narvii/video/model/Caption;->textColor:I

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v4}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged(Z)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    if-eqz p1, :cond_3

    .line 149
    .line 150
    const-string p3, "captionTab"

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 154
    move-result-object v3

    .line 155
    .line 156
    :cond_3
    instance-of p1, v3, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 157
    .line 158
    if-eqz p1, :cond_4

    .line 159
    .line 160
    check-cast v3, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 161
    .line 162
    iget p1, p2, Lcom/narvii/video/model/Caption;->textColor:I

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, p1}, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->setCaptionColor(I)V

    .line 166
    .line 167
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 168
    .line 169
    if-nez p1, :cond_6

    .line 170
    .line 171
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 172
    .line 173
    if-eqz p1, :cond_6

    .line 174
    .line 175
    .line 176
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editCurrentCaption()V

    .line 177
    goto :goto_2

    .line 178
    .line 179
    .line 180
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 181
    move-result-object p1

    .line 182
    .line 183
    .line 184
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 185
    :cond_6
    :goto_2
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 3
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v2, "captionTab"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    .line 17
    :goto_0
    instance-of v2, v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 22
    const/4 p1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/narvii/video/attachment/caption/CaptionTabFragment;->dismiss(Z)V

    .line 26
    return p1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const-string/jumbo v1, "stickerTab"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    :cond_2
    instance-of v0, v1, Lcom/narvii/app/FragmentOnBackListener;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    check-cast v1, Lcom/narvii/app/FragmentOnBackListener;

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, p1}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 53
    move-result p1

    .line 54
    return p1
.end method

.method public onBlockedInstallingSticker()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->progress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "progress"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 14
    return-void
.end method

.method public onColorChanged(IIZ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    iput p2, p1, Lcom/narvii/video/model/Caption;->shadowColor:I

    .line 17
    .line 18
    iput-boolean p3, p1, Lcom/narvii/video/model/Caption;->hasShadow:Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged()V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iput p2, p1, Lcom/narvii/video/model/Caption;->strokeColor:I

    .line 29
    .line 30
    iput-boolean p3, p1, Lcom/narvii/video/model/Caption;->hasStroke:Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged()V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iput p2, p1, Lcom/narvii/video/model/Caption;->textColor:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged()V

    .line 44
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string v0, "captionTab"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    .line 19
    :goto_0
    instance-of v0, p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->setCaptionTabListener(Lcom/narvii/video/attachment/caption/CaptionTabFragment;)V

    .line 27
    .line 28
    :cond_1
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->progress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/video/attachment/h;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/narvii/video/attachment/h;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final onCurrentCaptionChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged(Z)V

    return-void
.end method

.method public final onCurrentCaptionChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged(ZZZ)V

    return-void
.end method

.method public final onCurrentCaptionChanged(ZZZ)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p3

    invoke-interface {p3, v0, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetCaption(Lcom/narvii/video/model/Caption;Z)V

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onAttachmentChanged(Lcom/narvii/video/model/BaseAttachmentInfoPack;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 5
    invoke-static {p0, p3, p3, p1, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onFontChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object p1, v0, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, v0, Lcom/narvii/video/model/Caption;->fontObjectId:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged()V

    .line 12
    :cond_0
    return-void
.end method

.method public onFragmentDismiss(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->resetViewsWhenEditing()V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 17
    return-void
.end method

.method public onPlayingEOF()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->resetViewsWhenEditing()V

    .line 4
    return-void
.end method

.method public onPlayingProgress(JJ)V
    .locals 0

    return-void
.end method

.method public onPlayingStopped()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->resetViewsWhenEditing()V

    .line 4
    return-void
.end method

.method public onStickerInstallFailed()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->progress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-string v2, "progress"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->progress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v0

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 30
    :cond_2
    return-void
.end method

.method public onStyleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object p1, v0, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, v0, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    .line 9
    const/4 p1, 0x0

    .line 10
    const/4 p2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged(ZZZ)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    iget-object p2, p2, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1, p1}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->unMute()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iget p2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 37
    .line 38
    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 39
    add-int/2addr v0, p2

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, p2, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->playVideo(II)V

    .line 43
    :cond_0
    return-void
.end method

.method public onViceTrackClicked(I)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0, v1, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getAttachmentList$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)Ljava/util/List;

    .line 7
    move-result-object v3

    .line 8
    .line 9
    if-ltz p1, :cond_b

    .line 10
    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 13
    move-result v4

    .line 14
    .line 15
    if-ge p1, v4, :cond_b

    .line 16
    .line 17
    .line 18
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    check-cast v3, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 22
    .line 23
    instance-of v4, v3, Lcom/narvii/video/model/Caption;

    .line 24
    const/4 v5, -0x1

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    move v4, v0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    instance-of v4, v3, Lcom/narvii/video/model/StickerInfoPack;

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    move v4, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v4, v5

    .line 36
    .line 37
    :goto_0
    iget-object v6, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 38
    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 43
    .line 44
    iget v5, v6, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_2
    iget-object v6, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 48
    .line 49
    if-eqz v6, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 53
    .line 54
    iget v5, v6, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 55
    :cond_3
    :goto_1
    const/4 v6, 0x2

    .line 56
    .line 57
    if-eq v5, p1, :cond_5

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v1, v0, v6, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v4, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V

    .line 67
    .line 68
    if-ne v4, v1, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-direct {p0, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    .line 81
    goto :goto_4

    .line 82
    .line 83
    :cond_5
    iget-boolean p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 84
    .line 85
    if-eqz p1, :cond_6

    .line 86
    return-void

    .line 87
    .line 88
    :cond_6
    iget p1, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 89
    .line 90
    iget v5, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 91
    add-int/2addr v5, p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 95
    move-result v7

    .line 96
    .line 97
    if-gt p1, v7, :cond_7

    .line 98
    .line 99
    if-ge v7, v5, :cond_7

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :cond_7
    iput-boolean v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hasMainTrackMovedWhenEnterEditMode:Z

    .line 103
    .line 104
    iget p1, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->moveMainTrackTo(I)V

    .line 108
    .line 109
    iget p1, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 110
    .line 111
    .line 112
    invoke-static {p0, p1, v0, v6, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V

    .line 113
    .line 114
    :goto_2
    if-eqz v4, :cond_a

    .line 115
    .line 116
    if-eq v4, v1, :cond_8

    .line 117
    goto :goto_4

    .line 118
    .line 119
    :cond_8
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 120
    .line 121
    if-eqz p1, :cond_9

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    .line 125
    move-result-object p1

    .line 126
    goto :goto_3

    .line 127
    :cond_9
    move-object p1, v2

    .line 128
    .line 129
    :goto_3
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    .line 130
    .line 131
    .line 132
    invoke-static {p0, v0, v1, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->openStickerPickerTab$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)V

    .line 133
    goto :goto_4

    .line 134
    .line 135
    .line 136
    :cond_a
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editCurrentCaption()V

    .line 137
    :cond_b
    :goto_4
    return-void
.end method

.method public onViceTrackOffsetChanged(I)V
    .locals 3

    .line 1
    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v1

    .line 27
    add-int/2addr v0, v1

    .line 28
    .line 29
    if-ge p1, v0, :cond_2

    .line 30
    const/4 v0, 0x1

    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v2, v0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getAttachmentList$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)Ljava/util/List;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 43
    .line 44
    instance-of v0, p1, Lcom/narvii/video/model/Caption;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast p1, Lcom/narvii/video/model/Caption;

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, p1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetCaption(Lcom/narvii/video/model/Caption;Z)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_0
    instance-of v0, p1, Lcom/narvii/video/model/StickerInfoPack;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast p1, Lcom/narvii/video/model/StickerInfoPack;

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 77
    :cond_2
    return-void
.end method

.method protected onVideoPlaybackStatusChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->onVideoPlaybackStatusChanged(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, -0x1

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->unSelectCurrentAttachment(I)V

    .line 22
    :cond_2
    return-void
.end method

.method protected onVideoSeekingPositionChanged(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    long-to-int v1, p1

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;I)V

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    long-to-int p1, p1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;I)V

    .line 17
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->optionAddCaption:Landroid/widget/ImageView;

    .line 16
    .line 17
    new-instance p2, Lcom/narvii/video/attachment/c;

    .line 18
    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/narvii/video/attachment/c;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->optionAddSticker:Landroid/widget/ImageView;

    .line 30
    .line 31
    new-instance p2, Lcom/narvii/video/attachment/d;

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/narvii/video/attachment/d;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->optionDone:Landroid/widget/ImageView;

    .line 44
    .line 45
    new-instance p2, Lcom/narvii/video/attachment/e;

    .line 46
    .line 47
    .line 48
    invoke-direct {p2, p0}, Lcom/narvii/video/attachment/e;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 58
    .line 59
    new-instance p2, Lcom/narvii/video/attachment/f;

    .line 60
    .line 61
    .line 62
    invoke-direct {p2, p0}, Lcom/narvii/video/attachment/f;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRectClickListener(Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 72
    .line 73
    new-instance p2, Lcom/narvii/video/attachment/g;

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, p0}, Lcom/narvii/video/attachment/g;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 86
    .line 87
    new-instance p2, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;

    .line 88
    .line 89
    .line 90
    invoke-direct {p2, p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;-><init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/narvii/video/attachment/DrawRectView;->setOnDrawRectTouchListener(Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, p0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addPlayingEventListener(Lcom/narvii/video/interfaces/IPlayingEventListener;)V

    .line 101
    return-void
.end method

.method public resetViewsWhenEditing()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editingPosition:I

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(I)V

    .line 29
    :cond_2
    return-void
.end method

.method public revertCaption(Lcom/narvii/video/model/Caption;)V
    .locals 1
    .param p1    # Lcom/narvii/video/model/Caption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "caption"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged()V

    .line 15
    :cond_0
    return-void
.end method

.method public savePreviewSticker()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v2

    .line 15
    .line 16
    :goto_0
    iget-object v3, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    .line 17
    .line 18
    iput-object v3, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 19
    .line 20
    iput-object v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->orgActiveStickerBeforeEditing:Lcom/narvii/video/model/StickerInfoPack;

    .line 21
    const/4 v3, 0x1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v3, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V

    .line 25
    .line 26
    iget-object v4, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    .line 35
    invoke-interface {v5, v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 36
    .line 37
    :cond_1
    iget-boolean v4, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hasMainTrackMovedWhenEnterEditMode:Z

    .line 38
    const/4 v5, -0x1

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hasMainTrackMovedWhenEnterEditMode:Z

    .line 43
    .line 44
    iget-object v4, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    iget v5, v4, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 49
    :cond_2
    const/4 v4, 0x2

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v5, v0, v4, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->refreshViceTimelines$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;IZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAddAttachmentButton()V

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    .line 72
    :cond_3
    return-void
.end method

.method public final selectAttachmentByHandClick(Landroid/graphics/PointF;)V
    .locals 5
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "curPoint"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/narvii/video/attachment/DrawRectView;->curPointInDrawOrEditRect(Landroid/graphics/PointF;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    return-void

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 43
    move-result v1

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAttachmentDrawRectByTimelinePosition(ILandroid/graphics/PointF;)Lcom/narvii/video/attachment/caption/AttachmentDrawRect;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    if-eqz p1, :cond_7

    .line 50
    .line 51
    iget v0, p1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->mode:I

    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v2, 0x1

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    iget-object v3, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_3
    if-ne v0, v2, :cond_4

    .line 61
    .line 62
    iget-object v3, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    move-object v3, v1

    .line 65
    .line 66
    :goto_0
    if-eqz v3, :cond_5

    .line 67
    .line 68
    iget v3, v3, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 69
    .line 70
    iget-object v4, p1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->attachment:Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 71
    .line 72
    iget v4, v4, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 73
    .line 74
    if-eq v3, v4, :cond_7

    .line 75
    .line 76
    :cond_5
    iput-boolean v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->selectedThisEventSequence:Z

    .line 77
    .line 78
    iget-object v3, p1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->attachment:Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0, v3}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V

    .line 82
    const/4 v0, 0x0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInPlay()Z

    .line 89
    move-result v3

    .line 90
    .line 91
    if-eqz v3, :cond_6

    .line 92
    const/4 v3, 0x2

    .line 93
    .line 94
    .line 95
    invoke-static {p0, v2, v0, v3, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 103
    .line 104
    .line 105
    :cond_6
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 118
    .line 119
    iget-object v1, p1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->pointList:Ljava/util/List;

    .line 120
    .line 121
    iget p1, p1, Lcom/narvii/video/attachment/caption/AttachmentDrawRect;->mode:I

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1, p1}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 125
    :cond_7
    return-void
.end method

.method public final setActiveCaption(Lcom/narvii/video/model/Caption;)V
    .locals 0
    .param p1    # Lcom/narvii/video/model/Caption;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeCaption:Lcom/narvii/video/model/Caption;

    return-void
.end method

.method public final setActiveSticker(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 0
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    return-void
.end method

.method public final setEditing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editing:Z

    return-void
.end method

.method public setPickedPreviewSticker(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 6
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "stickerInfoPack"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->progress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    const-string v1, "progress"

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 16
    move-object v0, v2

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->progress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 30
    move-object v0, v2

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string v0, "copy(...)"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 45
    const/4 v1, 0x0

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v3

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    return-void

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 66
    move-result v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/narvii/video/model/StickerInfoPack;->mergeEditings(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    move v3, v1

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 75
    move-result v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    if-eqz v4, :cond_5

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->isTailFrameCellPlaying()Lw7/u;

    .line 85
    move-result-object v4

    .line 86
    goto :goto_1

    .line 87
    :cond_5
    move-object v4, v2

    .line 88
    .line 89
    :goto_1
    if-eqz v4, :cond_6

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Lw7/u;->c()Ljava/lang/Object;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    check-cast v4, Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    move-result v4

    .line 100
    const/4 v5, 0x1

    .line 101
    .line 102
    if-ne v4, v5, :cond_6

    .line 103
    .line 104
    add-int/lit16 v0, v0, -0x3e8

    .line 105
    .line 106
    :cond_6
    iget v4, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 107
    .line 108
    if-lez v4, :cond_7

    .line 109
    .line 110
    if-lt v4, v0, :cond_8

    .line 111
    .line 112
    :cond_7
    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 113
    .line 114
    :cond_8
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 115
    .line 116
    if-gtz v0, :cond_9

    .line 117
    .line 118
    const-string v0, "prefs"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    const-string v4, "getService(...)"

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    check-cast v0, Landroid/content/SharedPreferences;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/narvii/video/model/StickerInfoPack;->getPrefsKey()Ljava/lang/String;

    .line 133
    move-result-object v4

    .line 134
    .line 135
    const/16 v5, 0x1388

    .line 136
    .line 137
    .line 138
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 139
    move-result v0

    .line 140
    .line 141
    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 142
    .line 143
    :cond_9
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->activeSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 144
    .line 145
    if-eqz v3, :cond_a

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    .line 152
    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 153
    goto :goto_2

    .line 154
    .line 155
    .line 156
    :cond_a
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 157
    move-result-object v0

    .line 158
    const/4 v3, 0x2

    .line 159
    .line 160
    .line 161
    invoke-static {v0, p1, v1, v3, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->addSticker$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/model/StickerInfoPack;ZILjava/lang/Object;)Ljava/util/ArrayList;

    .line 162
    .line 163
    .line 164
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/video/model/BaseAttachmentInfoPack;->hasBeenEdited()Z

    .line 165
    move-result v0

    .line 166
    .line 167
    if-nez v0, :cond_b

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    new-instance v2, Landroid/graphics/PointF;

    .line 174
    const/4 v3, 0x0

    .line 175
    .line 176
    .line 177
    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 178
    .line 179
    const/high16 v3, 0x3f000000    # 0.5f

    .line 180
    .line 181
    .line 182
    invoke-interface {v0, p1, v3, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->scaleSticker(Lcom/narvii/video/model/StickerInfoPack;FLandroid/graphics/PointF;)V

    .line 183
    .line 184
    .line 185
    :cond_b
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 186
    move-result-object v0

    .line 187
    .line 188
    .line 189
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 190
    .line 191
    .line 192
    invoke-direct {p0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;

    .line 193
    move-result-object v0

    .line 194
    .line 195
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAttachmentEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 199
    .line 200
    .line 201
    invoke-direct {p0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->updateAttachmentCoordinate(Lcom/narvii/video/model/BaseClipInfoPack;)V

    .line 202
    return-void
.end method

.method public final setSelectedThisEventSequence(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->selectedThisEventSequence:Z

    return-void
.end method

.method public setSharedDataSource(Ljava/lang/String;Lcom/narvii/paging/source/DataSource;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/paging/source/DataSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/paging/source/DataSource<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "type"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment;->hashMap:Ljava/util/HashMap;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method

.method protected showPauseButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
