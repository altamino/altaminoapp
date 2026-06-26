.class public final Lcom/narvii/pre_editing/MediaPreEditingActivityKt;
.super Ljava/lang/Object;
.source "MediaPreEditingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaPreEditingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaPreEditingActivity.kt\ncom/narvii/pre_editing/MediaPreEditingActivityKt\n*L\n1#1,382:1\n323#1,21:383\n*E\n"
.end annotation


# static fields
.field public static final CROP_GOOGLE_SEARCH_VIDEO:I = 0xfd30

.field public static final MIN_DURATION_MS_FOR_ENTERING_PRE_EDIT_ACTIVITY:I = 0xee47

.field public static final TRIM_START_END_TIME:I = 0xfd32


# direct methods
.method public static final handlePickerMediaResult(Lcom/narvii/app/NVFragment;Ljava/util/List;Landroid/os/Bundle;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVFragment;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/narvii/model/Media;",
            "-",
            "Landroid/os/Bundle;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputPath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    .line 324
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p1, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/narvii/model/Media;

    invoke-virtual {v2}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    move-object p3, v1

    check-cast p3, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_2
    move-object p3, v0

    :goto_1
    if-eqz p3, :cond_3

    .line 326
    new-instance v1, Lcom/narvii/scene/helper/SceneSpHelper;

    invoke-direct {v1, p0}, Lcom/narvii/scene/helper/SceneSpHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v2, p3, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    const-string v3, "it.fileName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p3, v2}, Lcom/narvii/scene/helper/SceneSpHelper;->saveRecentVideo(Lcom/narvii/model/Media;Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 329
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Media;

    :cond_4
    if-eqz v0, :cond_8

    .line 330
    iget-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz p2, :cond_8

    .line 332
    iget p1, v0, Lcom/narvii/model/Media;->type:I

    const/16 p3, 0x67

    if-ne p1, p3, :cond_5

    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, p2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 p3, 0x7b

    if-ne p1, p3, :cond_7

    .line 334
    iget-wide v1, v0, Lcom/narvii/model/Media;->duration:J

    const p1, 0xee47

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-lez p1, :cond_6

    .line 335
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, p2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    .line 337
    :cond_6
    invoke-interface {p5, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 340
    :cond_7
    invoke-interface {p5, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    return-void
.end method

.method public static synthetic handlePickerMediaResult$default(Lcom/narvii/app/NVFragment;Ljava/util/List;Landroid/os/Bundle;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 4

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string p6, "fragment"

    .line 320
    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "outputPath"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "result"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x0

    if-eqz p3, :cond_4

    if-eqz p1, :cond_3

    .line 384
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p1, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p7

    if-eqz p7, :cond_2

    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p7

    move-object v0, p7

    check-cast v0, Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    move-object p7, p6

    :goto_0
    move-object p3, p7

    check-cast p3, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_3
    move-object p3, p6

    :goto_1
    if-eqz p3, :cond_4

    .line 386
    new-instance p7, Lcom/narvii/scene/helper/SceneSpHelper;

    invoke-direct {p7, p0}, Lcom/narvii/scene/helper/SceneSpHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p3, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    const-string v1, "it.fileName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p7, p3, v0}, Lcom/narvii/scene/helper/SceneSpHelper;->saveRecentVideo(Lcom/narvii/model/Media;Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 389
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object p6, p1

    check-cast p6, Lcom/narvii/model/Media;

    :cond_5
    if-eqz p6, :cond_9

    .line 390
    iget-object p1, p6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    if-eqz p2, :cond_9

    .line 392
    iget p1, p6, Lcom/narvii/model/Media;->type:I

    const/16 p3, 0x67

    if-ne p1, p3, :cond_6

    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p6, p2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/16 p3, 0x7b

    if-ne p1, p3, :cond_8

    .line 394
    iget-wide v0, p6, Lcom/narvii/model/Media;->duration:J

    const p1, 0xee47

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_7

    .line 395
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p6, p2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    .line 397
    :cond_7
    invoke-interface {p5, p6, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 400
    :cond_8
    invoke-interface {p5, p6, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_2
    return-void
.end method

.method public static final handlePreEditActivityResult(IILandroid/content/Intent;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/narvii/model/Media;",
            "-",
            "Landroid/os/Bundle;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const p1, 0xfd30

    if-ne p0, p1, :cond_0

    if-eqz p2, :cond_0

    const-string p0, "media"

    .line 348
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Media;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    const-string v0, "bundle"

    .line 349
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 350
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final pickVideoFromGalleryAndYoutube(Lcom/narvii/media/MediaPickerFragment;Ljava/lang/String;IIZ)V
    .locals 3

    const-string v0, "picker"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v1, "video"

    .line 295
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "checkUnsupportedImageType"

    .line 296
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "minVideoDuration"

    const/16 v2, 0x3e8

    .line 297
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "needDuration"

    .line 298
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "caller"

    .line 300
    invoke-virtual {p1, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    new-instance p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-direct {p3}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    .line 302
    iput p2, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->maximum:I

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    const/16 p4, 0x8

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    or-int/lit8 p4, p4, 0x10

    .line 303
    iput p4, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 304
    iput p2, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    .line 306
    invoke-static {}, Lcom/narvii/app/NVApplication;->isStoryEditorApp()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 307
    iget p2, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 308
    iput-boolean v0, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGoogleVideoSearch:Z

    :cond_1
    const/4 p2, 0x0

    .line 310
    invoke-virtual {p0, p2, p1, p3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    return-void
.end method

.method public static synthetic pickVideoFromGalleryAndYoutube$default(Lcom/narvii/media/MediaPickerFragment;Ljava/lang/String;IIZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/16 p2, 0xa

    :cond_0
    and-int/lit8 p6, p5, 0x8

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    const/4 p4, 0x1

    .line 293
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->pickVideoFromGalleryAndYoutube(Lcom/narvii/media/MediaPickerFragment;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static final startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;JJJI)V
    .locals 4

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "media"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 372
    const-class v3, Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 373
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v0, "fakeTrim"

    .line 374
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "trimStartTime"

    .line 375
    invoke-virtual {v2, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "trimEndTime"

    .line 376
    invoke-virtual {v2, p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "maxOutputTime"

    .line 377
    invoke-virtual {v2, p1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-wide/16 p1, 0x3e8

    .line 378
    invoke-static {p1, p2, p6, p7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-string p3, "minOutputTime"

    invoke-virtual {v2, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "index"

    .line 379
    invoke-virtual {v2, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const p1, 0xfd32

    .line 380
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static final startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "media"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bundle"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "outputPath"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 357
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 358
    const-class v5, Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 359
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-virtual {v4, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 361
    invoke-virtual {v4, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0xfd30

    .line 362
    invoke-virtual {p0, v4, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const p0, 0xee47

    int-to-long p2, p0

    const-wide/16 v0, 0x1

    .line 363
    iget-wide p0, p1, Lcom/narvii/model/Media;->duration:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v0, p2, p0

    if-ltz v0, :cond_1

    .line 364
    sget p0, Lcom/narvii/mediaeditor/R$anim;->fade_in:I

    sget p1, Lcom/narvii/mediaeditor/R$anim;->fade_out:I

    invoke-virtual {v3, p0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method
