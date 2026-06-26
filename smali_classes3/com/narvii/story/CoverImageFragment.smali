.class public final Lcom/narvii/story/CoverImageFragment;
.super Lcom/narvii/video/ScrollingTimeLineFragment;
.source "CoverImageFragment.kt"

# interfaces
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/CoverImageFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoverImageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoverImageFragment.kt\ncom/narvii/story/CoverImageFragment\n+ 2 NVExtension.kt\ncom/narvii/util/kotlin/NVExtensionKt\n*L\n1#1,435:1\n33#2,14:436\n*E\n*S KotlinDebug\n*F\n+ 1 CoverImageFragment.kt\ncom/narvii/story/CoverImageFragment\n*L\n92#1,14:436\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/story/CoverImageFragment$Companion;

.field private static final REQ_CROP_IMAGE:I = 0xfd10


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

.field private currentDraftFolder:Ljava/lang/String;

.field private customSelect:Z

.field private customThumbUrl:Ljava/lang/String;

.field private final dialog$delegate:Lkotlin/Lazy;

.field private draftId:Ljava/lang/String;

.field private draftManager:Lcom/narvii/post/DraftManager;

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private sceneDraft:Lcom/narvii/scene/model/SceneDraft;

.field private supportScreenshot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/story/CoverImageFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "dialog"

    const-string v4, "getDialog()Lcom/narvii/util/dialog/ProgressDialog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/story/CoverImageFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/story/CoverImageFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/story/CoverImageFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/story/CoverImageFragment;->Companion:Lcom/narvii/story/CoverImageFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/narvii/story/CoverImageFragment;->draftId:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/narvii/story/CoverImageFragment;->customThumbUrl:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/narvii/story/CoverImageFragment;->currentDraftFolder:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/narvii/story/CoverImageFragment$dialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/story/CoverImageFragment$dialog$2;-><init>(Lcom/narvii/story/CoverImageFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/CoverImageFragment;->dialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCoverImageInfo$p(Lcom/narvii/story/CoverImageFragment;)Lcom/narvii/scene/model/SceneCoverImageInfo;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/story/CoverImageFragment;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "coverImageInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getCustomSelect$p(Lcom/narvii/story/CoverImageFragment;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/narvii/story/CoverImageFragment;->customSelect:Z

    return p0
.end method

.method public static final synthetic access$getCustomThumbUrl$p(Lcom/narvii/story/CoverImageFragment;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/story/CoverImageFragment;->customThumbUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getDialog$p(Lcom/narvii/story/CoverImageFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/story/CoverImageFragment;->getDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onSwitchTabCustom(Lcom/narvii/story/CoverImageFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/story/CoverImageFragment;->onSwitchTabCustom()V

    return-void
.end method

.method public static final synthetic access$onSwitchTabScreenshots(Lcom/narvii/story/CoverImageFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/story/CoverImageFragment;->onSwitchTabScreenshots()V

    return-void
.end method

.method public static final synthetic access$setCoverImageInfo$p(Lcom/narvii/story/CoverImageFragment;Lcom/narvii/scene/model/SceneCoverImageInfo;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/story/CoverImageFragment;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    return-void
.end method

.method public static final synthetic access$setCustomSelect$p(Lcom/narvii/story/CoverImageFragment;Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/narvii/story/CoverImageFragment;->customSelect:Z

    return-void
.end method

.method public static final synthetic access$setCustomThumbUrl$p(Lcom/narvii/story/CoverImageFragment;Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/story/CoverImageFragment;->customThumbUrl:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setPreviewContent(Lcom/narvii/story/CoverImageFragment;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/narvii/story/CoverImageFragment;->setPreviewContent(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$startCrop(Lcom/narvii/story/CoverImageFragment;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/narvii/story/CoverImageFragment;->startCrop(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$toPickCoverImage(Lcom/narvii/story/CoverImageFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/story/CoverImageFragment;->toPickCoverImage()V

    return-void
.end method

.method public static final synthetic access$updateCustomTabState(Lcom/narvii/story/CoverImageFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/story/CoverImageFragment;->updateCustomTabState()V

    return-void
.end method

.method private final getDialog()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/CoverImageFragment;->dialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/CoverImageFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    return-object v0
.end method

.method private final getRandomJpgFileUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 430
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    const/4 v1, 0x0

    const-string v2, "photoManager"

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/narvii/photos/PhotoManager;->getNewName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 432
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/narvii/story/CoverImageFragment;->currentDraftFolder:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "photoManager.getUri(file)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final onSwitchTabCustom()V
    .locals 3

    .line 376
    sget v0, Lcom/narvii/amino/R$id;->tab_screen_shoot:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "tab_screen_shoot"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 377
    sget v0, Lcom/narvii/amino/R$id;->tab_screen_shoot:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v2, "#4A90E2"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 378
    sget v0, Lcom/narvii/amino/R$id;->tab_custom:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v2, "tab_custom"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 379
    sget v0, Lcom/narvii/amino/R$id;->tab_custom:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 381
    sget v0, Lcom/narvii/amino/R$id;->swipe_hint_tv:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0f0075

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 382
    sget v0, Lcom/narvii/amino/R$id;->video_time_line_component_container:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v2, "video_time_line_component_container"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 383
    sget v0, Lcom/narvii/amino/R$id;->custom_image_rl:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v2, "custom_image_rl"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private final onSwitchTabScreenshots()V
    .locals 3

    .line 365
    sget v0, Lcom/narvii/amino/R$id;->tab_screen_shoot:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "tab_screen_shoot"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 366
    sget v0, Lcom/narvii/amino/R$id;->tab_screen_shoot:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 367
    sget v0, Lcom/narvii/amino/R$id;->tab_custom:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "tab_custom"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 368
    sget v0, Lcom/narvii/amino/R$id;->tab_custom:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v2, "#4A90E2"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 370
    sget v0, Lcom/narvii/amino/R$id;->swipe_hint_tv:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0f108a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 371
    sget v0, Lcom/narvii/amino/R$id;->video_time_line_component_container:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v2, "video_time_line_component_container"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 372
    sget v0, Lcom/narvii/amino/R$id;->custom_image_rl:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "custom_image_rl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private final setPreviewContent(Ljava/lang/String;)V
    .locals 2

    .line 397
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "custom_image_view"

    if-eqz v0, :cond_0

    .line 399
    sget p1, Lcom/narvii/amino/R$id;->custom_image_view:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 402
    :cond_0
    sget v0, Lcom/narvii/amino/R$id;->custom_image_view:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    sget v0, Lcom/narvii/amino/R$id;->custom_image_view:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method private final startCrop(Ljava/lang/String;)V
    .locals 2

    .line 357
    const-class v0, Lcom/narvii/story/CropImageFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imageUrl"

    .line 358
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment;->currentDraftFolder:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/story/CoverImageFragment;->getRandomJpgFileUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "outputUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment;->draftId:Ljava/lang/String;

    const-string v1, "draftId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0xfd10

    .line 361
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private final toPickCoverImage()V
    .locals 9

    .line 387
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v1, "photo"

    .line 388
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/narvii/story/CoverImageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v3, 0x1e

    const/4 v4, 0x1

    const/16 v5, 0x2d0

    const/16 v6, 0x2d0

    const/16 v7, 0x2d0

    const/16 v8, 0x2d0

    invoke-virtual/range {v0 .. v8}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IIIIII)V

    :cond_0
    return-void
.end method

.method private final updateCustomTabState()V
    .locals 7

    .line 408
    iget-object v0, p0, Lcom/narvii/story/CoverImageFragment;->customThumbUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "select_cover_image_btn"

    const-string v3, "edit_background_view"

    const-string v4, "custom_image_rl"

    const/4 v5, 0x4

    if-eqz v0, :cond_0

    .line 410
    sget v0, Lcom/narvii/amino/R$id;->image_thumb_iv:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    const-string v6, ""

    invoke-virtual {v0, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 411
    sget v0, Lcom/narvii/amino/R$id;->custom_image_rl:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0801b5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 412
    sget v0, Lcom/narvii/amino/R$id;->select_cover_image_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    sget v0, Lcom/narvii/amino/R$id;->edit_background_view:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 415
    :cond_0
    sget v0, Lcom/narvii/amino/R$id;->image_thumb_iv:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iget-object v6, p0, Lcom/narvii/story/CoverImageFragment;->customThumbUrl:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 416
    sget v0, Lcom/narvii/amino/R$id;->select_cover_image_btn:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    iget-boolean v0, p0, Lcom/narvii/story/CoverImageFragment;->customSelect:Z

    if-eqz v0, :cond_1

    .line 419
    sget v0, Lcom/narvii/amino/R$id;->edit_background_view:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 420
    sget v0, Lcom/narvii/amino/R$id;->custom_image_rl:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 423
    :cond_1
    sget v0, Lcom/narvii/amino/R$id;->edit_background_view:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 424
    sget v0, Lcom/narvii/amino/R$id;->custom_image_rl:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/story/CoverImageFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/story/CoverImageFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/CoverImageFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/story/CoverImageFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/story/CoverImageFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected changeVideoPlaybackStatus(ZZ)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->changeVideoPlaybackStatus(ZZ)V

    return-void
.end method

.method protected getActionBarLayoutId()I
    .locals 1

    const v0, 0x7f0b0031

    return v0
.end method

.method protected getAudioInputClipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getCaptionList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    iget-object v1, p0, Lcom/narvii/story/CoverImageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/scene/model/SceneInfo;

    .line 284
    iget-object v5, v4, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/model/Caption;

    .line 285
    invoke-virtual {v6}, Lcom/narvii/video/model/Caption;->clone()Lcom/narvii/video/model/Caption;

    move-result-object v7

    .line 286
    iget v6, v6, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    int-to-long v8, v6

    add-long/2addr v8, v2

    long-to-int v6, v8

    iput v6, v7, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 287
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 289
    :cond_0
    invoke-virtual {v4}, Lcom/narvii/scene/model/SceneInfo;->getDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const-string v0, "sceneDraft"

    .line 283
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoryCoverImage"

    return-object v0
.end method

.method protected getStickerList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    iget-object v1, p0, Lcom/narvii/story/CoverImageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/scene/model/SceneInfo;

    .line 298
    iget-object v5, v4, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/model/StickerInfoPack;

    .line 299
    invoke-virtual {v6}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v7

    const-string v8, "pack.copy()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget v6, v6, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    int-to-long v8, v6

    add-long/2addr v8, v2

    long-to-int v6, v8

    iput v6, v7, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 301
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 303
    :cond_0
    invoke-virtual {v4}, Lcom/narvii/scene/model/SceneInfo;->getDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const-string v0, "sceneDraft"

    .line 297
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method protected getVideoInputClipList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v1, p0, Lcom/narvii/story/CoverImageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    .line 271
    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 272
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const-string v0, "sceneDraft"

    .line 270
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public initComponent()V
    .locals 1

    .line 257
    sget v0, Lcom/narvii/amino/R$id;->video_view_player:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 258
    sget v0, Lcom/narvii/amino/R$id;->video_time_line_component:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setMainTimeLineComponent(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    return-void
.end method

.method public initFrameRetrieverManager()V
    .locals 7

    .line 309
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/CoverImageFragment;->draftId:Ljava/lang/String;

    const-string v2, "cover_image"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-void
.end method

.method protected initInputClips()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/narvii/story/CoverImageFragment;->supportScreenshot:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->initInputClips()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected innerInitMainTimeLine(IZ)V
    .locals 19

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    const/16 v2, 0xca

    const/4 v3, 0x0

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v6

    const/16 v7, 0xbb8

    .line 264
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x2400

    const/16 v18, 0x0

    move/from16 v7, p1

    move-object/from16 v15, p0

    move/from16 v16, p2

    .line 262
    invoke-static/range {v0 .. v18}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;ZILjava/lang/Object;)I

    :cond_0
    return-void
.end method

.method protected innerOnVideoPrepared()V
    .locals 1

    .line 313
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->innerOnVideoPrepared()V

    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 341
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/video/ScrollingTimeLineFragment;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0xfd10

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "media"

    .line 343
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 344
    const-class p3, Lcom/narvii/model/Media;

    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    .line 345
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "media.mediaUrl"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/story/CoverImageFragment;->customThumbUrl:Ljava/lang/String;

    const/4 p1, 0x1

    .line 346
    iput-boolean p1, p0, Lcom/narvii/story/CoverImageFragment;->customSelect:Z

    .line 347
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    iput p2, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    .line 348
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment;->customThumbUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/story/CoverImageFragment;->setPreviewContent(Ljava/lang/String;)V

    .line 349
    invoke-direct {p0}, Lcom/narvii/story/CoverImageFragment;->updateCustomTabState()V

    goto :goto_0

    :cond_0
    const-string p1, "coverImageInfo"

    .line 347
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 66
    invoke-super {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    const v1, 0x7f0601f6

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonTint(I)V

    .line 70
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_e

    const v2, 0x7f080264

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarTitleColor(I)V

    const p1, 0x7f0f0f8a

    .line 72
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "photo"

    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "getService(\"photo\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, p0, Lcom/narvii/story/CoverImageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    const-string p1, "draft"

    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "getService(\"draft\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/post/DraftManager;

    iput-object p1, p0, Lcom/narvii/story/CoverImageFragment;->draftManager:Lcom/narvii/post/DraftManager;

    const-string p1, "sceneDraft"

    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/scene/model/SceneDraft;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "JacksonUtils.readAs(getS\u2026, SceneDraft::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/scene/model/SceneDraft;

    iput-object v1, p0, Lcom/narvii/story/CoverImageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    const-string v1, "draftId"

    .line 78
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getStringParam(\"draftId\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/story/CoverImageFragment;->draftId:Ljava/lang/String;

    const-string v1, "supportScreenshot"

    .line 79
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/story/CoverImageFragment;->supportScreenshot:Z

    .line 81
    iget-object v1, p0, Lcom/narvii/story/CoverImageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v1, :cond_c

    iget-object v2, v1, Lcom/narvii/scene/model/SceneDraft;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/narvii/story/CoverImageFragment;->supportScreenshot:Z

    if-eqz v2, :cond_4

    .line 82
    new-instance v2, Lcom/narvii/scene/model/SceneCoverImageInfo;

    iget-object v3, p0, Lcom/narvii/story/CoverImageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    if-eqz v3, :cond_3

    new-instance v4, Ljava/io/File;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneDraft;->getFirstSceneCoverImagePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v2, p1, v1}, Lcom/narvii/scene/model/SceneCoverImageInfo;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "photoManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_4
    new-instance v2, Lcom/narvii/scene/model/SceneCoverImageInfo;

    if-eqz v1, :cond_b

    iget-object p1, v1, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {v2, p1, v1}, Lcom/narvii/scene/model/SceneCoverImageInfo;-><init>(Ljava/lang/String;I)V

    .line 81
    :goto_1
    iput-object v2, p0, Lcom/narvii/story/CoverImageFragment;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/story/CoverImageFragment;->draftManager:Lcom/narvii/post/DraftManager;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/narvii/story/CoverImageFragment;->draftId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "coverImage_only_folder"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/CoverImageFragment;->currentDraftFolder:Ljava/lang/String;

    .line 90
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/story/CoverImageFragment;->currentDraftFolder:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 92
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_8

    const-class v0, Lcom/narvii/media/MediaPickerFragment;

    .line 436
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clz.simpleName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 438
    instance-of v3, v2, Lcom/narvii/media/MediaPickerFragment;

    if-nez v3, :cond_6

    goto :goto_3

    .line 449
    :cond_6
    check-cast v2, Lcom/narvii/app/NVFragment;

    goto :goto_4

    .line 439
    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 440
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 444
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 446
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 447
    move-object v2, v0

    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 449
    :goto_4
    move-object v0, v2

    check-cast v0, Lcom/narvii/media/MediaPickerFragment;

    :cond_8
    iput-object v0, p0, Lcom/narvii/story/CoverImageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 93
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_9
    return-void

    :cond_a
    const-string p1, "draftManager"

    .line 88
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_b
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_c
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 70
    :cond_e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 69
    :cond_f
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 110
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 111
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 112
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    const v0, 0x7f0f0483

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f59999a    # 0.85f

    const v0, 0x7f0601f6

    .line 113
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    const/16 v6, 0xff

    const/4 v7, 0x0

    move-object v1, p2

    .line 112
    invoke-direct/range {v1 .. v7}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 114
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b0294

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/narvii/story/CoverImageFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/story/CoverImageFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 0

    .line 323
    invoke-super {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->onFrameLocatedDuringMove(II)V

    .line 324
    sget p1, Lcom/narvii/amino/R$id;->custom_image_view:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    const-string p2, "custom_image_view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 325
    iput-boolean p1, p0, Lcom/narvii/story/CoverImageFragment;->customSelect:Z

    .line 326
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    iput p2, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    const-string p1, ""

    .line 327
    invoke-direct {p0, p1}, Lcom/narvii/story/CoverImageFragment;->setPreviewContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "coverImageInfo"

    .line 326
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x104000a

    if-ne v1, v2, :cond_c

    .line 121
    iget-object v1, p0, Lcom/narvii/story/CoverImageFragment;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    const-string v2, "coverImageInfo"

    if-eqz v1, :cond_b

    iget v3, v1, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_0

    .line 122
    iget-object v3, p0, Lcom/narvii/story/CoverImageFragment;->customThumbUrl:Ljava/lang/String;

    iput-object v3, v1, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz v1, :cond_a

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    if-eqz v1, :cond_7

    .line 124
    iget-object v3, p0, Lcom/narvii/story/CoverImageFragment;->currentDraftFolder:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/narvii/story/CoverImageFragment;->getRandomJpgFileUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/narvii/story/CoverImageFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/narvii/story/CoverImageFragment;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    if-eqz v3, :cond_5

    iget-object v2, v3, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 126
    invoke-static {}, Lcom/narvii/app/NVApplication;->isBasedOnMeishe()Z

    move-result v1

    const-string v2, "file"

    if-eqz v1, :cond_3

    .line 127
    invoke-direct {p0}, Lcom/narvii/story/CoverImageFragment;->getDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "editorPackFactory"

    .line 128
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/services/IEditorPackFactory;

    .line 129
    sget-object v3, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    iget-object v4, p0, Lcom/narvii/story/CoverImageFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz v4, :cond_2

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v6

    .line 130
    invoke-interface {v1}, Lcom/narvii/video/services/IEditorPackFactory;->getVideoGenerator()Lcom/narvii/video/interfaces/ISceneVideoGenerator;

    move-result-object v7

    new-instance v8, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$1;

    invoke-direct {v8, p0}, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$1;-><init>(Lcom/narvii/story/CoverImageFragment;)V

    .line 129
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/video/services/SceneMediaProcessor;->getStoryCoverImage(Lcom/narvii/scene/model/SceneDraft;Ljava/io/File;ILcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    goto :goto_0

    :cond_2
    const-string p1, "sceneDraft"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 145
    invoke-direct {p0}, Lcom/narvii/story/CoverImageFragment;->getDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 146
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v3

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoRawPositionInClip()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 147
    new-instance v9, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$$inlined$let$lambda$1;

    invoke-direct {v9, p0, v5}, Lcom/narvii/story/CoverImageFragment$onOptionsItemSelected$$inlined$let$lambda$1;-><init>(Lcom/narvii/story/CoverImageFragment;Ljava/io/File;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x58

    const/4 v13, 0x0

    .line 146
    invoke-static/range {v3 .. v13}, Lcom/narvii/video/services/VideoManager;->getCoverImage$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;ZILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;

    .line 169
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 125
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string p1, "photoManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_8
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 172
    iget-object v3, p0, Lcom/narvii/story/CoverImageFragment;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    if-eqz v3, :cond_9

    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 173
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_2

    .line 172
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_c
    :goto_2
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 119
    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 332
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    if-eqz p1, :cond_0

    .line 333
    sget-object p2, Lcom/narvii/logging/ActSemantic;->setCoverImage:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    .line 334
    iget-object v0, p0, Lcom/narvii/story/CoverImageFragment;->draftId:Ljava/lang/String;

    const-string v1, "storyDraftId"

    invoke-virtual {p2, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    const-string v0, "imageType"

    const-string v1, "Customize"

    invoke-virtual {p2, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    const-string v0, "EditArea"

    .line 335
    invoke-virtual {p2, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 336
    invoke-virtual {p1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "it.mediaUrl"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/narvii/story/CoverImageFragment;->startCrop(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 181
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    const p2, 0x7f0801b4

    const v0, 0x7f0801b3

    if-eqz p1, :cond_0

    .line 182
    sget p1, Lcom/narvii/amino/R$id;->tab_screen_shoot:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 183
    sget p1, Lcom/narvii/amino/R$id;->tab_custom:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 185
    :cond_0
    sget p1, Lcom/narvii/amino/R$id;->tab_screen_shoot:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 186
    sget p1, Lcom/narvii/amino/R$id;->tab_custom:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 188
    :goto_0
    sget p1, Lcom/narvii/amino/R$id;->tab_screen_shoot:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/narvii/story/CoverImageFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/story/CoverImageFragment$onViewCreated$1;-><init>(Lcom/narvii/story/CoverImageFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    sget p1, Lcom/narvii/amino/R$id;->tab_custom:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/narvii/story/CoverImageFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/narvii/story/CoverImageFragment$onViewCreated$2;-><init>(Lcom/narvii/story/CoverImageFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    sget p1, Lcom/narvii/amino/R$id;->custom_image_rl:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance p2, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lcom/narvii/story/CoverImageFragment$onViewCreated$3;-><init>(Lcom/narvii/story/CoverImageFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    if-eqz p1, :cond_6

    .line 216
    iget-object p2, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    const-string v0, "customUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/story/CoverImageFragment;->customThumbUrl:Ljava/lang/String;

    .line 217
    iget p2, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    goto :goto_1

    .line 233
    :cond_1
    iget-object p2, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    const-string v1, "netUrl"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/story/CoverImageFragment;->customThumbUrl:Ljava/lang/String;

    .line 234
    iput-boolean v0, p0, Lcom/narvii/story/CoverImageFragment;->customSelect:Z

    .line 235
    invoke-direct {p0}, Lcom/narvii/story/CoverImageFragment;->onSwitchTabCustom()V

    .line 236
    iget-object p1, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/narvii/story/CoverImageFragment;->setPreviewContent(Ljava/lang/String;)V

    .line 237
    invoke-direct {p0}, Lcom/narvii/story/CoverImageFragment;->updateCustomTabState()V

    goto :goto_1

    .line 227
    :cond_2
    iput-boolean v0, p0, Lcom/narvii/story/CoverImageFragment;->customSelect:Z

    .line 228
    invoke-direct {p0}, Lcom/narvii/story/CoverImageFragment;->onSwitchTabCustom()V

    .line 229
    iget-object p1, p0, Lcom/narvii/story/CoverImageFragment;->customThumbUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/story/CoverImageFragment;->setPreviewContent(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/narvii/story/CoverImageFragment;->updateCustomTabState()V

    goto :goto_1

    .line 223
    :cond_3
    invoke-direct {p0}, Lcom/narvii/story/CoverImageFragment;->onSwitchTabScreenshots()V

    .line 224
    iget-object p1, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    const-string p2, "screenshotUrl"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/narvii/story/CoverImageFragment;->setPreviewContent(Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :cond_4
    invoke-direct {p0}, Lcom/narvii/story/CoverImageFragment;->onSwitchTabScreenshots()V

    .line 220
    iget-object p1, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    const-string p2, "defaultUrl"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/narvii/story/CoverImageFragment;->setPreviewContent(Ljava/lang/String;)V

    .line 241
    :goto_1
    iget-boolean p1, p0, Lcom/narvii/story/CoverImageFragment;->supportScreenshot:Z

    if-nez p1, :cond_5

    .line 242
    sget p1, Lcom/narvii/amino/R$id;->tab_screen_shoot:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string p2, "tab_screen_shoot"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 243
    sget p1, Lcom/narvii/amino/R$id;->tab_custom:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "tab_custom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    sget p1, Lcom/narvii/amino/R$id;->video_view_player:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/CoverImageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    const-string v0, "video_view_player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    return-void

    :cond_6
    const-string p1, "coverImageInfo"

    .line 215
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
