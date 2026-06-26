.class public final Lcom/narvii/videotemplate/VideoTemplateManager;
.super Landroid/content/BroadcastReceiver;
.source "VideoTemplateManager.kt"

# interfaces
.implements Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/videotemplate/VideoTemplateManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/videotemplate/VideoTemplateManager$Companion;

.field public static final DECODER_DEBUG_TYPE:I = -0x1


# instance fields
.field private final aminoLogoFile:Ljava/io/File;

.field private callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private final executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private managerAlive:Z

.field private outputPath:Ljava/lang/String;

.field private final photo:Lcom/narvii/photos/PhotoManager;

.field private final pidCheckRunnable:Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;

.field private taskRunning:Z

.field private final tempOutVideoFile:Ljava/io/File;

.field private template:Lcom/narvii/videotemplate/Template;

.field private templateMusicFile:Ljava/io/File;

.field private final watermarkCreatorFile:Ljava/io/File;

.field private final watermarkLogoFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/videotemplate/VideoTemplateManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/videotemplate/VideoTemplateManager;->Companion:Lcom/narvii/videotemplate/VideoTemplateManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    .line 38
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "photo"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService(\"photo\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->photo:Lcom/narvii/photos/PhotoManager;

    .line 40
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctx.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "vtemplate_out.h264"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 41
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "aminologo.webp"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->aminoLogoFile:Ljava/io/File;

    .line 42
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "wmlogo.png"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkLogoFile:Ljava/io/File;

    .line 43
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "creatorBg.png"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkCreatorFile:Ljava/io/File;

    const/4 p1, 0x2

    const-string v0, "Video_Template"

    .line 49
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 50
    new-instance p1, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;

    invoke-direct {p1, p0}, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;-><init>(Lcom/narvii/videotemplate/VideoTemplateManager;)V

    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->pidCheckRunnable:Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;

    return-void
.end method

.method public static final synthetic access$getAminoLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->aminoLogoFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getCallback$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    return-object p0
.end method

.method public static final synthetic access$getPhoto$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/photos/PhotoManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->photo:Lcom/narvii/photos/PhotoManager;

    return-object p0
.end method

.method public static final synthetic access$getTaskRunning$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    return p0
.end method

.method public static final synthetic access$getTempOutVideoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getTemplate$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/Template;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "template"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getTemplateMusicFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->templateMusicFile:Ljava/io/File;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "templateMusicFile"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getWatermarkCreatorFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkCreatorFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getWatermarkLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkLogoFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$setCallback$p(Lcom/narvii/videotemplate/VideoTemplateManager;Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    return-void
.end method

.method public static final synthetic access$setTaskRunning$p(Lcom/narvii/videotemplate/VideoTemplateManager;Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    return-void
.end method

.method public static final synthetic access$setTemplate$p(Lcom/narvii/videotemplate/VideoTemplateManager;Lcom/narvii/videotemplate/Template;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    return-void
.end method

.method public static final synthetic access$setTemplateMusicFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;Ljava/io/File;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->templateMusicFile:Ljava/io/File;

    return-void
.end method

.method private final doMix()V
    .locals 9

    .line 333
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->outputPath:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->templateMusicFile:Ljava/io/File;

    const-string v1, "templateMusicFile"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 334
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    const-string v3, "videoManager"

    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/narvii/video/services/VideoManager;

    .line 335
    new-instance v4, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v4}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 336
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 337
    new-instance v0, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v0}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 338
    iget-object v5, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->templateMusicFile:Ljava/io/File;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 339
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 340
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    const-string v5, "template"

    if-eqz v1, :cond_2

    iget v6, v1, Lcom/narvii/videotemplate/Template;->outputFrameCount:I

    int-to-float v6, v6

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/narvii/videotemplate/Template;->fps:I

    int-to-float v1, v1

    div-float/2addr v6, v1

    const/16 v1, 0x3e8

    int-to-float v1, v1

    mul-float v6, v6, v1

    float-to-int v1, v6

    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 341
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->outputPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;

    invoke-direct {v7, p0}, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;-><init>(Lcom/narvii/videotemplate/VideoTemplateManager;)V

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/narvii/video/services/VideoManager;->simpleAVMix(Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/List;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Z)Lffmpeg/base/MediaEditingConfig;

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 340
    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 338
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 333
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_5
    sget v0, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_AV_MIX:I

    invoke-virtual {p0, v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->onError(I)V

    :goto_0
    return-void
.end method

.method private final generateCreatorInfoPage(Lcom/narvii/model/User;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$layout;->component_watermark_creator_info:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "watermarkView"

    .line 94
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/narvii/mediaeditor/R$id;->author_bg_user_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    iget-object v2, p1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 95
    sget v1, Lcom/narvii/mediaeditor/R$id;->author_bg_user_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "watermarkView.author_bg_user_name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "watermarkView.author_bg_community_name_or_amino_id"

    const-string v2, "watermarkView.author_bg_community_amino_id"

    if-eqz p2, :cond_1

    .line 96
    iget v3, p2, Lcom/narvii/model/Community;->id:I

    if-nez v3, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    sget p1, Lcom/narvii/mediaeditor/R$id;->author_bg_community_name_or_amino_id:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "From:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    sget p1, Lcom/narvii/mediaeditor/R$id;->author_bg_community_amino_id:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Amino ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    sget p2, Lcom/narvii/mediaeditor/R$id;->author_bg_community_amino_id:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    sget p2, Lcom/narvii/mediaeditor/R$id;->author_bg_community_name_or_amino_id:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/16 p1, 0x2d0

    const/high16 p2, 0x40000000    # 2.0f

    .line 103
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v1, 0x500

    .line 104
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 105
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p2

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 108
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    invoke-virtual {v0, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const-string p2, "bitmap"

    .line 110
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final generateWatermarkLogo(Lcom/narvii/model/User;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$layout;->component_watermark_logo:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "watermarkView"

    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/narvii/mediaeditor/R$id;->user_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "watermarkView.user_name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "watermarkView.community_name_or_amino_id"

    if-eqz p2, :cond_1

    .line 76
    iget v2, p2, Lcom/narvii/model/Community;->id:I

    if-nez v2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    sget p1, Lcom/narvii/mediaeditor/R$id;->community_name_or_amino_id:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    sget p2, Lcom/narvii/mediaeditor/R$id;->community_from:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v2, "watermarkView.community_from"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    sget p2, Lcom/narvii/mediaeditor/R$id;->community_name_or_amino_id:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/16 p1, 0x190

    const/high16 p2, -0x80000000

    .line 82
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 p2, 0x78

    const/high16 v1, 0x40000000    # 2.0f

    .line 83
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 84
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p2

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 87
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    invoke-virtual {v0, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const-string p2, "bitmap"

    .line 89
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 242
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->stop()V

    .line 252
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkLogoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkLogoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->aminoLogoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->aminoLogoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkCreatorFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkCreatorFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    if-eqz v0, :cond_4

    sget v1, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_ABORT:I

    invoke-interface {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onError(I)V

    :cond_4
    return-void
.end method

.method public final create(Lcom/narvii/scene/model/TemplateConfig;Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;)V
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctx.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/narvii/scene/model/TemplateConfig;->folder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/template.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 115
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/narvii/videotemplate/Template;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/videotemplate/Template;

    .line 116
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const-string v0, "template"

    .line 117
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/narvii/scene/model/TemplateConfig;->isWatermark:Z

    invoke-virtual {p0, v1, p1, p2}, Lcom/narvii/videotemplate/VideoTemplateManager;->create(Lcom/narvii/videotemplate/Template;ZLcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;)V

    return-void
.end method

.method public final create(Lcom/narvii/videotemplate/Template;ZLcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;)V
    .locals 6

    const-string v0, "template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->managerAlive:Z

    .line 122
    iput-object p3, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    .line 123
    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    .line 124
    iget-object p3, p1, Lcom/narvii/videotemplate/Template;->segments:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "ctx.context"

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/videotemplate/TemplateSegment;

    .line 125
    iget-object v3, v1, Lcom/narvii/videotemplate/TemplateSegment;->shader:[Ljava/lang/String;

    array-length v3, v3

    iput v3, v1, Lcom/narvii/videotemplate/TemplateSegment;->passCount:I

    .line 126
    iget-object v3, v1, Lcom/narvii/videotemplate/TemplateSegment;->pass2ExtraInputs:[I

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    array-length v3, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput v3, v1, Lcom/narvii/videotemplate/TemplateSegment;->pass2InputCount:I

    .line 127
    iget-object v3, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v5, v1, Lcom/narvii/videotemplate/TemplateSegment;->shader:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->readStringFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/narvii/videotemplate/TemplateSegment;->shaderString:Ljava/lang/String;

    .line 128
    iget-object v3, v1, Lcom/narvii/videotemplate/TemplateSegment;->shader:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v0, :cond_0

    .line 129
    iget-object v3, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, v1, Lcom/narvii/videotemplate/TemplateSegment;->shader:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->readStringFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/videotemplate/TemplateSegment;->shaderString2Pass:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_2
    new-instance p3, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "templateMusic.aac"

    invoke-direct {p3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->templateMusicFile:Ljava/io/File;

    .line 133
    iget-object p3, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->templateMusicFile:Ljava/io/File;

    const/4 v0, 0x0

    const-string v1, "templateMusicFile"

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 134
    iget-object p3, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->templateMusicFile:Ljava/io/File;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    if-nez p2, :cond_5

    .line 137
    iget-object p1, p1, Lcom/narvii/videotemplate/Template;->segments:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateJni;->create(Ljava/util/ArrayList;)V

    .line 139
    :cond_5
    invoke-static {p0}, Lcom/narvii/videotemplate/VideoTemplateJni;->setVideoTemplateEventCallback(Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;)V

    .line 146
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    return-void

    .line 133
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->managerAlive:Z

    .line 269
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 272
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    .line 274
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->removeVideoTemplateEventCallback()V

    .line 275
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->destroy()V

    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public onError(I)V
    .locals 1

    .line 314
    sget v0, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_ABORT:I

    if-ne p1, v0, :cond_0

    .line 315
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->destroy()V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkLogoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkLogoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->aminoLogoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->aminoLogoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkCreatorFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkCreatorFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 329
    :cond_4
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onError(I)V

    :cond_5
    return-void
.end method

.method public onFinish()V
    .locals 0

    .line 310
    invoke-direct {p0}, Lcom/narvii/videotemplate/VideoTemplateManager;->doMix()V

    return-void
.end method

.method public onProgress(F)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onProgress(F)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.narvii.amino.VIDEO_TEMPLATE_COMPILE_PROGRESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 285
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const-string v1, "com.narvii.videotemplate.progress"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onProgress(F)V

    goto :goto_0

    :sswitch_1
    const-string p2, "com.narvii.amino.VIDEO_TEMPLATE_COMPILE_FINISH"

    .line 279
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 281
    iput-boolean v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    .line 282
    invoke-direct {p0}, Lcom/narvii/videotemplate/VideoTemplateManager;->doMix()V

    goto :goto_0

    :sswitch_2
    const-string p2, "com.narvii.amino.VIDEO_TEMPLATE_PROCESS_FINISH"

    .line 279
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 299
    iput-boolean v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    goto :goto_0

    :sswitch_3
    const-string v0, "com.narvii.amino.VIDEO_TEMPLATE_COMPILE_ERROR"

    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 288
    iput-boolean v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    .line 289
    sget p1, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_NONE:I

    const-string v0, "com.narvii.videotemplate.errorType"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 290
    sget p2, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_ABORT:I

    .line 293
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 294
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 296
    :cond_1
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onError(I)V

    :cond_2
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70e3abab -> :sswitch_3
        0x43e940a -> :sswitch_2
        0x55a253c6 -> :sswitch_1
        0x62d884a0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final printWatermark(Lcom/narvii/model/User;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orgVideoPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputPath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-boolean v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->managerAlive:Z

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iput-object p4, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->outputPath:Ljava/lang/String;

    .line 195
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->templateMusicFile:Ljava/io/File;

    .line 196
    iget-object p4, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "community"

    invoke-interface {p4, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/narvii/community/CommunityService;

    invoke-virtual {p4, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p2

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/narvii/videotemplate/VideoTemplateManager;->generateWatermarkLogo(Lcom/narvii/model/User;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/narvii/videotemplate/VideoTemplateManager;->generateCreatorInfoPage(Lcom/narvii/model/User;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 199
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;

    invoke-direct {v0, p0, p4, p1, p3}, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;-><init>(Lcom/narvii/videotemplate/VideoTemplateManager;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 238
    iput-boolean p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    return-void
.end method

.method public final startCompile(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/narvii/model/Media;",
            "+",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "inputMediaList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-boolean v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->managerAlive:Z

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iput-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->outputPath:Ljava/lang/String;

    .line 154
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/narvii/videotemplate/Template;->backgroundMusic:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 155
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$1;

    invoke-direct {v0, p0}, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$1;-><init>(Lcom/narvii/videotemplate/VideoTemplateManager;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 159
    :cond_1
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$2;

    invoke-direct {v0, p0, p1}, Lcom/narvii/videotemplate/VideoTemplateManager$startCompile$2;-><init>(Lcom/narvii/videotemplate/VideoTemplateManager;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 187
    iput-boolean p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    return-void

    :cond_2
    const-string p1, "template"

    .line 154
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
