.class public final Lcom/narvii/video/MediaSplitFragment;
.super Lcom/narvii/video/ScrollingTimeLineFragment;
.source "MediaSplitFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaSplitFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaSplitFragment.kt\ncom/narvii/video/MediaSplitFragment\n*L\n1#1,278:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private orgClipCount:I

.field private outputFolderPath:Ljava/lang/String;

.field private pendingSplit:Z

.field private pendingUndoSplit:Z

.field private splitEnabled:Z

.field private final splitOpStack$delegate:Lkotlin/Lazy;

.field private final splitTimeStack$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/video/MediaSplitFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "splitOpStack"

    const-string v4, "getSplitOpStack()Ljava/util/Stack;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/video/MediaSplitFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "splitTimeStack"

    const-string v4, "getSplitTimeStack()Ljava/util/Stack;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/video/MediaSplitFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;-><init>()V

    .line 36
    sget-object v0, Lcom/narvii/video/MediaSplitFragment$splitOpStack$2;->INSTANCE:Lcom/narvii/video/MediaSplitFragment$splitOpStack$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->splitOpStack$delegate:Lkotlin/Lazy;

    .line 37
    sget-object v0, Lcom/narvii/video/MediaSplitFragment$splitTimeStack$2;->INSTANCE:Lcom/narvii/video/MediaSplitFragment$splitTimeStack$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->splitTimeStack$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/narvii/video/MediaSplitFragment;->splitEnabled:Z

    return-void
.end method

.method public static final synthetic access$doSplit(Lcom/narvii/video/MediaSplitFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->doSplit()V

    return-void
.end method

.method public static final synthetic access$getOrgClipCount$p(Lcom/narvii/video/MediaSplitFragment;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/narvii/video/MediaSplitFragment;->orgClipCount:I

    return p0
.end method

.method public static final synthetic access$getPendingSplit$p(Lcom/narvii/video/MediaSplitFragment;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/narvii/video/MediaSplitFragment;->pendingSplit:Z

    return p0
.end method

.method public static final synthetic access$getPendingUndoSplit$p(Lcom/narvii/video/MediaSplitFragment;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/narvii/video/MediaSplitFragment;->pendingUndoSplit:Z

    return p0
.end method

.method public static final synthetic access$setOrgClipCount$p(Lcom/narvii/video/MediaSplitFragment;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/narvii/video/MediaSplitFragment;->orgClipCount:I

    return-void
.end method

.method public static final synthetic access$setPendingSplit$p(Lcom/narvii/video/MediaSplitFragment;Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/narvii/video/MediaSplitFragment;->pendingSplit:Z

    return-void
.end method

.method public static final synthetic access$setPendingUndoSplit$p(Lcom/narvii/video/MediaSplitFragment;Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/narvii/video/MediaSplitFragment;->pendingUndoSplit:Z

    return-void
.end method

.method public static final synthetic access$undoSplit(Lcom/narvii/video/MediaSplitFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->undoSplit()V

    return-void
.end method

.method private final checkSplitAvailability(J)V
    .locals 9

    .line 185
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "do_split"

    const/16 v5, 0x1e

    if-lt v0, v5, :cond_1

    .line 186
    sget p1, Lcom/narvii/mediaeditor/R$id;->do_split:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v3

    if-nez p1, :cond_0

    .line 187
    sget p1, Lcom/narvii/mediaeditor/R$id;->do_split:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 189
    :cond_0
    iput-boolean v2, p0, Lcom/narvii/video/MediaSplitFragment;->splitEnabled:Z

    return-void

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 194
    iget v5, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v8

    invoke-interface {v8}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {v8}, Lcom/narvii/video/model/AVClipInfoPack;->clipLength()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    int-to-long v5, v7

    sub-long/2addr p1, v5

    const/16 v5, 0x64

    int-to-long v5, v5

    .line 197
    div-long/2addr p1, v5

    mul-long p1, p1, v5

    const/16 v5, 0x3e8

    int-to-long v6, v5

    cmp-long v8, p1, v6

    if-ltz v8, :cond_5

    .line 198
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    move-result v0

    sub-int/2addr v0, v5

    int-to-long v5, v0

    cmp-long v0, p1, v5

    if-lez v0, :cond_3

    goto :goto_1

    .line 204
    :cond_3
    sget p1, Lcom/narvii/mediaeditor/R$id;->do_split:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v3

    if-eqz p1, :cond_4

    .line 205
    sget p1, Lcom/narvii/mediaeditor/R$id;->do_split:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_4
    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lcom/narvii/video/MediaSplitFragment;->splitEnabled:Z

    goto :goto_2

    .line 199
    :cond_5
    :goto_1
    sget p1, Lcom/narvii/mediaeditor/R$id;->do_split:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v3

    if-nez p1, :cond_6

    .line 200
    sget p1, Lcom/narvii/mediaeditor/R$id;->do_split:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 202
    :cond_6
    iput-boolean v2, p0, Lcom/narvii/video/MediaSplitFragment;->splitEnabled:Z

    :cond_7
    :goto_2
    return-void
.end method

.method private final checkUndoStatus()V
    .locals 2

    .line 213
    sget v0, Lcom/narvii/mediaeditor/R$id;->undo_split:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "undo_split"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getSplitOpStack()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private final doSplit()V
    .locals 14

    .line 217
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/mediaeditor/R$string;->reach_max_clips:I

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    .line 222
    iget-boolean v2, p0, Lcom/narvii/video/MediaSplitFragment;->splitEnabled:Z

    if-eqz v2, :cond_5

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 225
    invoke-virtual {p0, v2, v2}, Lcom/narvii/video/ScrollingTimeLineFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 226
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getVideoPlaybackTimeText()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 228
    :goto_0
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getSplitOpStack()Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getSplitTimeStack()Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v5

    .line 231
    iget v3, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 232
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInClip()I

    move-result v4

    int-to-double v6, v4

    iget-wide v8, v0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    const/16 v4, 0x64

    int-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    double-to-int v6, v6

    mul-int/lit8 v6, v6, 0x64

    .line 233
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v4

    sub-int/2addr v4, v6

    .line 234
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v7

    const-string v8, "currentClip.copy()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget v8, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    add-int/2addr v8, v6

    .line 236
    iput v8, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 237
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v6

    iput v6, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 238
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    .line 239
    iput v8, v7, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    add-int/2addr v8, v4

    .line 240
    iput v8, v7, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 241
    invoke-virtual {v7}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v0

    iput v0, v7, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/lit8 v0, v3, 0x1

    .line 242
    invoke-virtual {v5, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 243
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move v6, v0

    invoke-static/range {v4 .. v9}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 244
    invoke-virtual {p0, v2, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    .line 245
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v8

    if-eqz v8, :cond_3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    move v9, v0

    invoke-static/range {v8 .. v13}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLineToClip$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I

    .line 246
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getVideoPlaybackTimeText()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_4
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->checkUndoStatus()V

    .line 248
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/narvii/video/MediaSplitFragment;->checkSplitAvailability(J)V

    :cond_5
    :goto_1
    return-void
.end method

.method private final getSplitOpStack()Ljava/util/Stack;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->splitOpStack$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/video/MediaSplitFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method private final getSplitTimeStack()Ljava/util/Stack;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->splitTimeStack$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/video/MediaSplitFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method private final undoSplit()V
    .locals 7

    .line 252
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getSplitOpStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getSplitTimeStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getSplitTimeStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 257
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getSplitOpStack()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 258
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v2

    .line 259
    iget v3, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-ltz v3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    invoke-virtual {p0, v5, v5}, Lcom/narvii/video/ScrollingTimeLineFragment;->changeVideoPlaybackStatus(ZZ)V

    const/4 v3, 0x0

    .line 264
    invoke-virtual {p0, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 265
    iget v4, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    add-int/lit8 v6, v4, 0x1

    .line 266
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 270
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v6

    invoke-interface {v6}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {v6}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v3

    const-string v6, "inClipOffsetInMs"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v2, v4, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetVideoClipList(Ljava/util/ArrayList;II)Lcom/narvii/video/model/AVClipInfoPack;

    .line 273
    invoke-virtual {p0, v5, v4}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    const-string v1, "splitTimelinePosition"

    .line 274
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->moveMainTrackTo(I)V

    .line 275
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->checkUndoStatus()V

    .line 276
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/narvii/video/MediaSplitFragment;->checkSplitAvailability(J)V

    return-void

    .line 260
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->checkUndoStatus()V

    return-void

    .line 253
    :cond_4
    :goto_2
    sget v0, Lcom/narvii/mediaeditor/R$id;->undo_split:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "undo_split"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/video/MediaSplitFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 86
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

.method public initComponent()V
    .locals 4

    .line 52
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_playback_time:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeText(Landroid/widget/TextView;)V

    .line 53
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_view_player:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 54
    sget v0, Lcom/narvii/mediaeditor/R$id;->player_button:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPlayerButton(Landroid/widget/ImageView;)V

    .line 55
    sget v0, Lcom/narvii/mediaeditor/R$id;->pause_shadow:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPauseShadow(Landroid/view/View;)V

    .line 56
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setMainTimeLineComponent(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    .line 57
    sget v0, Lcom/narvii/mediaeditor/R$id;->options_panel:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaOptionPanel;

    sget v1, Lcom/narvii/mediaeditor/R$string;->split:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.split)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/narvii/video/MediaSplitFragment$initComponent$1;

    invoke-direct {v2, p0}, Lcom/narvii/video/MediaSplitFragment$initComponent$1;-><init>(Lcom/narvii/video/MediaSplitFragment;)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Lcom/narvii/video/widget/MediaOptionPanel;->initComponent(ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    return-void
.end method

.method public initFrameRetrieverManager()V
    .locals 8

    const-string v0, "frameRetrieverOutputFolder"

    .line 43
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->outputFolderPath:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->outputFolderPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/MediaSplitFragment;->outputFolderPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ZZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "timeline_tmp"

    const-string v3, "video"

    invoke-static/range {v1 .. v7}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 3

    .line 112
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onAVClipsPrepared()V

    .line 113
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/narvii/video/MediaSplitFragment;->orgClipCount:I

    const-string v0, "activeClipIndex"

    .line 114
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    const-string v1, "inClipPlaybackTime"

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0, v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v1

    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    .line 117
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->moveMainTrackTo(II)V

    :cond_1
    return-void
.end method

.method protected onActiveVideoChanged(IZ)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->onActiveVideoChanged(IZ)V

    .line 181
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result p1

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/narvii/video/MediaSplitFragment;->checkSplitAvailability(J)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    sget p1, Lcom/narvii/mediaeditor/R$id;->do_split:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/narvii/video/MediaSplitFragment$onActivityCreated$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/MediaSplitFragment$onActivityCreated$1;-><init>(Lcom/narvii/video/MediaSplitFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget p1, Lcom/narvii/mediaeditor/R$id;->undo_split:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/MediaSplitFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/narvii/video/MediaSplitFragment$onActivityCreated$2;

    invoke-direct {v0, p0}, Lcom/narvii/video/MediaSplitFragment$onActivityCreated$2;-><init>(Lcom/narvii/video/MediaSplitFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_media_split:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 153
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onDestroyView()V

    .line 154
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/narvii/video/MediaSplitFragment;->_$_clearFindViewByIdCache()V

    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/MediaSplitFragment;->outputFolderPath:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->doClean(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/narvii/video/MediaSplitFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 0

    .line 170
    invoke-super {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->onFrameLocatedDuringMove(II)V

    int-to-long p1, p1

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/MediaSplitFragment;->checkSplitAvailability(J)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onPause()V

    .line 146
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 0

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/video/ScrollingTimeLineFragment;->onPlayerTick(JJ)V

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/MediaSplitFragment;->checkSplitAvailability(J)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 137
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onResume()V

    .line 138
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->refreshTimeLine()V

    :cond_1
    return-void
.end method

.method protected onSeekingStatusChanged(Z)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->onSeekingStatusChanged(Z)V

    if-eqz p1, :cond_0

    return-void

    .line 126
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/video/MediaSplitFragment;->pendingSplit:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->doSplit()V

    .line 128
    iput-boolean v0, p0, Lcom/narvii/video/MediaSplitFragment;->pendingSplit:Z

    .line 130
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/video/MediaSplitFragment;->pendingUndoSplit:Z

    if-eqz p1, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->undoSplit()V

    .line 132
    iput-boolean v0, p0, Lcom/narvii/video/MediaSplitFragment;->pendingUndoSplit:Z

    :cond_2
    return-void
.end method

.method public onTimeLineLayout()V
    .locals 3

    .line 161
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onTimeLineLayout()V

    const-string v0, "activeClipIndex"

    .line 162
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    const-string v1, "inClipPlaybackTime"

    const/4 v2, 0x0

    .line 163
    invoke-virtual {p0, v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v1

    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    .line 165
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->moveMainTrackTo(II)V

    :cond_1
    return-void
.end method
