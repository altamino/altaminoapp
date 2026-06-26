.class public final Lcom/narvii/pre_editing/MediaPreEditingActivity;
.super Lcom/narvii/app/NVActivity;
.source "MediaPreEditingActivity.kt"

# interfaces
.implements Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaPreEditingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaPreEditingActivity.kt\ncom/narvii/pre_editing/MediaPreEditingActivity\n*L\n1#1,382:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final dialog$delegate:Lkotlin/Lazy;

.field private doFakeTrim:Z

.field private inputMedia:Lcom/narvii/model/Media;

.field private outputPath:Ljava/lang/String;

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

.field private preEditVideoUrl:Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

.field private retriever:Lcom/narvii/pre_editing/PreEditFrameRetriever;

.field private timeLineComponent:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

.field private trimVideoAuto:Z

.field private final trimVideoGenerator:Lcom/narvii/pre_editing/TrimVideoGenerator;

.field private youtubeService:Lcom/narvii/youtube/YoutubeService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "dialog"

    const-string v4, "getDialog()Lcom/narvii/util/dialog/ProgressDialog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->outputPath:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/narvii/pre_editing/TrimVideoGenerator;

    invoke-direct {v0, p0}, Lcom/narvii/pre_editing/TrimVideoGenerator;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoGenerator:Lcom/narvii/pre_editing/TrimVideoGenerator;

    .line 49
    new-instance v0, Lcom/narvii/pre_editing/PreEditFrameRetriever;

    invoke-direct {v0}, Lcom/narvii/pre_editing/PreEditFrameRetriever;-><init>()V

    iput-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->retriever:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    .line 57
    new-instance v0, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;-><init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->dialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDialog$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->getDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/model/Media;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->inputMedia:Lcom/narvii/model/Media;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "inputMedia"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "player"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getPreEditVideoUrl$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/bean/PreEditVideoUrl;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->preEditVideoUrl:Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    return-object p0
.end method

.method public static final synthetic access$getRetriever$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/PreEditFrameRetriever;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->retriever:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    return-object p0
.end method

.method public static final synthetic access$getTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->timeLineComponent:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "timeLineComponent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getTrimVideoAuto$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoAuto:Z

    return p0
.end method

.method public static final synthetic access$getTrimVideoGenerator$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/TrimVideoGenerator;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoGenerator:Lcom/narvii/pre_editing/TrimVideoGenerator;

    return-object p0
.end method

.method public static final synthetic access$setInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;Lcom/narvii/model/Media;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->inputMedia:Lcom/narvii/model/Media;

    return-void
.end method

.method public static final synthetic access$setPlayer$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    return-void
.end method

.method public static final synthetic access$setPreEditVideoUrl$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;Lcom/narvii/pre_editing/bean/PreEditVideoUrl;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->preEditVideoUrl:Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    return-void
.end method

.method public static final synthetic access$setRetriever$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;Lcom/narvii/pre_editing/PreEditFrameRetriever;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->retriever:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    return-void
.end method

.method public static final synthetic access$setTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->timeLineComponent:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    return-void
.end method

.method public static final synthetic access$setTrimVideoAuto$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoAuto:Z

    return-void
.end method

.method public static final synthetic access$showError(Lcom/narvii/pre_editing/MediaPreEditingActivity;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$startTrimVideo(Lcom/narvii/pre_editing/MediaPreEditingActivity;JJ)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->startTrimVideo(JJ)V

    return-void
.end method

.method public static final synthetic access$updatePlayState(Lcom/narvii/pre_editing/MediaPreEditingActivity;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->updatePlayState(Z)V

    return-void
.end method

.method private final formatCropInterval(J)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x3e8

    int-to-long v0, v0

    .line 279
    rem-long v2, p1, v0

    const/16 v4, 0x64

    int-to-long v4, v4

    div-long/2addr v2, v4

    .line 280
    div-long/2addr p1, v0

    .line 282
    sget v0, Lcom/narvii/mediaeditor/R$string;->trim_selected_time:I

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Locale.US"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v6, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v1

    array-length p1, v6

    invoke-static {v6, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%01d.%1d"

    invoke-static {v5, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, v4, p2

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(R.string.trim_\u2026d.%1d\", seconds, millis))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getDialog()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->dialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/pre_editing/MediaPreEditingActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    return-object v0
.end method

.method private final showError(Ljava/lang/String;)V
    .locals 3

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 222
    :cond_0
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 223
    sget v0, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const v0, 0x104000a

    .line 224
    new-instance v1, Lcom/narvii/pre_editing/MediaPreEditingActivity$showError$1;

    invoke-direct {v1, p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity$showError$1;-><init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 228
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 229
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private final startParseUrl(Ljava/lang/String;)V
    .locals 5

    .line 151
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 154
    sget p1, Lcom/narvii/mediaeditor/R$id;->video_progress_view:I

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SpinningView;

    const-string v1, "video_progress_view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;

    invoke-direct {v1, p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity$startParseUrl$1;-><init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V

    invoke-virtual {p1, v0, v3, v1}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    goto :goto_1

    :cond_0
    const-string p1, "youtubeService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 171
    :cond_1
    new-instance v0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    const/4 v1, 0x2

    const-string v4, "http"

    invoke-static {p1, v4, v2, v1, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->photoManager:Lcom/narvii/photos/PhotoManager;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v1, "photoManager.getPath(inputUrl)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "if (inputUrl.startsWith(\u2026bsolutePath\n            }"

    .line 171
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->preEditVideoUrl:Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    .line 176
    iget-boolean p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoAuto:Z

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x0

    .line 177
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->inputMedia:Lcom/narvii/model/Media;

    if-eqz p1, :cond_3

    iget-wide v2, p1, Lcom/narvii/model/Media;->duration:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->startTrimVideo(JJ)V

    goto :goto_1

    :cond_3
    const-string p1, "inputMedia"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_4
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->preEditVideoUrl:Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {p1, v3}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->prepare(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_6
    const-string p1, "player"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_7
    const-string p1, "photoManager"

    .line 174
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final startTrimVideo(JJ)V
    .locals 18

    move-object/from16 v8, p0

    move-wide/from16 v13, p1

    move-wide/from16 v11, p3

    .line 237
    iget-boolean v0, v8, Lcom/narvii/pre_editing/MediaPreEditingActivity;->doFakeTrim:Z

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "trimStartTime"

    .line 239
    invoke-virtual {v0, v1, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "trimEndTime"

    .line 240
    invoke-virtual {v0, v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "index"

    .line 241
    invoke-virtual {v8, v2, v1}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 242
    invoke-virtual {v8, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->finish()V

    return-void

    :cond_0
    sub-long v6, v11, v13

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->getDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->getDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$string;->importing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;->updateProgress(Ljava/lang/String;)V

    .line 249
    iget-object v0, v8, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    if-eqz v0, :cond_2

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->pause(I)V

    .line 250
    iget-object v0, v8, Lcom/narvii/pre_editing/MediaPreEditingActivity;->preEditVideoUrl:Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    if-eqz v0, :cond_1

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ytb_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 252
    iget-object v9, v8, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoGenerator:Lcom/narvii/pre_editing/TrimVideoGenerator;

    invoke-virtual {v0}, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->getDownloadUrl()Lkotlin/Pair;

    move-result-object v10

    iget-object v4, v8, Lcom/narvii/pre_editing/MediaPreEditingActivity;->outputPath:Ljava/lang/String;

    .line 254
    new-instance v17, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v16, v4

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/narvii/pre_editing/MediaPreEditingActivity$startTrimVideo$$inlined$let$lambda$1;-><init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;JJJ)V

    move-object/from16 v11, v16

    move-object v12, v15

    move-wide/from16 v13, p1

    move-wide/from16 v15, p3

    .line 252
    invoke-virtual/range {v9 .. v17}, Lcom/narvii/pre_editing/TrimVideoGenerator;->startTrimVideo(Lkotlin/Pair;Ljava/lang/String;Ljava/lang/String;JJLcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "player"

    .line 249
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final updatePlayState(Z)V
    .locals 2

    .line 233
    sget v0, Lcom/narvii/mediaeditor/R$id;->player_button:I

    invoke-virtual {p0, v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "player_button"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public finish()V
    .locals 2

    .line 286
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 287
    iget-boolean v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoAuto:Z

    if-eqz v0, :cond_0

    .line 288
    sget v0, Lcom/narvii/mediaeditor/R$anim;->fade_in:I

    sget v1, Lcom/narvii/mediaeditor/R$anim;->fade_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 70
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget p1, Lcom/narvii/mediaeditor/R$layout;->activity_media_pre_editing:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 72
    sget p1, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    const-string v0, "video_time_line_component"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->timeLineComponent:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    .line 74
    sget p1, Lcom/narvii/mediaeditor/R$id;->options_panel:I

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/MediaOptionPanel;

    sget v0, Lcom/narvii/mediaeditor/R$string;->trim:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.trim)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v1, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;

    invoke-direct {v1, p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$1;-><init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V

    const/4 v2, 0x1

    .line 74
    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/video/widget/MediaOptionPanel;->initComponent(ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    const-string p1, "youtube"

    .line 87
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"youtube\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/youtube/YoutubeService;

    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    const-string p1, "photo"

    .line 88
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"photo\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 90
    new-instance p1, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    sget v0, Lcom/narvii/mediaeditor/R$id;->video_view_player:I

    invoke-virtual {p0, v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/nvplayerview/NVVideoView;

    const-string v1, "video_view_player"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;-><init>(Landroid/content/Context;Lcom/narvii/nvplayerview/NVVideoView;)V

    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 91
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    new-instance v3, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;

    invoke-direct {v3, p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;-><init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V

    invoke-virtual {p1, v3}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->setPlayStateCallback(Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;)V

    const-string p1, "media"

    .line 129
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v3, Lcom/narvii/model/Media;

    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "JacksonUtils.readAs(getS\u2026dia\"), Media::class.java)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/model/Media;

    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->inputMedia:Lcom/narvii/model/Media;

    const-string p1, "outputPath"

    .line 130
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->outputPath:Ljava/lang/String;

    const/4 p1, 0x0

    const-string v4, "fakeTrim"

    .line 131
    invoke-virtual {p0, v4, p1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->doFakeTrim:Z

    .line 133
    iget-boolean v4, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->doFakeTrim:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->outputPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    invoke-direct {p0, v3}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->showError(Ljava/lang/String;)V

    return-void

    :cond_1
    const v3, 0xee47

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    .line 138
    iget-object v7, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->inputMedia:Lcom/narvii/model/Media;

    const-string v8, "inputMedia"

    if-eqz v7, :cond_6

    iget-wide v9, v7, Lcom/narvii/model/Media;->duration:J

    cmp-long v7, v5, v9

    if-lez v7, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v5, v3, v9

    if-ltz v5, :cond_3

    iget-boolean v3, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->doFakeTrim:Z

    if-nez v3, :cond_3

    const/4 p1, 0x1

    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoAuto:Z

    .line 140
    iget-boolean p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoAuto:Z

    if-eqz p1, :cond_4

    .line 141
    sget p1, Lcom/narvii/mediaeditor/R$id;->video_view_player:I

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/nvplayerview/NVVideoView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 142
    sget p1, Lcom/narvii/mediaeditor/R$id;->content_rl:I

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const-string v2, "content_rl"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    invoke-direct {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->getDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 144
    invoke-direct {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->getDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$string;->verifying:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/ProgressDialog;->updateProgress(Ljava/lang/String;)V

    .line 147
    :cond_4
    iget-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->inputMedia:Lcom/narvii/model/Media;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "inputMedia.mediaUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->startParseUrl(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_6
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string p1, "player"

    .line 91
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 195
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 196
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->release()V

    .line 197
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->trimVideoGenerator:Lcom/narvii/pre_editing/TrimVideoGenerator;

    invoke-virtual {v0}, Lcom/narvii/pre_editing/TrimVideoGenerator;->release()V

    .line 198
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->retriever:Lcom/narvii/pre_editing/PreEditFrameRetriever;

    invoke-virtual {v0}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->releaseExecutor()V

    return-void

    :cond_0
    const-string v0, "player"

    .line 196
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onFrameLocatedDuringMove(JJZZ)V
    .locals 5

    sub-long v0, p3, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 204
    sget v2, Lcom/narvii/mediaeditor/R$id;->time_line_controller_length:I

    invoke-virtual {p0, v2}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "time_line_controller_length"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->formatCropInterval(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    const/4 v1, 0x0

    const-string v2, "player"

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->setReplayTime(JJ)V

    .line 207
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    if-eqz v0, :cond_9

    xor-int/lit8 v3, p6, 0x1

    invoke-virtual {v0, v3}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->setInContinuousSeekingMode(Z)V

    .line 208
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    if-eqz v0, :cond_2

    if-eqz p5, :cond_1

    move-wide p1, p3

    :cond_1
    invoke-virtual {v0, p1, p2, p6}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekTo(JZ)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    if-eqz v0, :cond_8

    if-eqz p5, :cond_4

    goto :goto_0

    :cond_4
    move-wide p1, p3

    :goto_0
    invoke-virtual {v0, p1, p2, p6}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->seekTo(JZ)V

    :goto_1
    const/16 p1, 0x1e

    if-eqz p6, :cond_6

    .line 214
    iget-object p2, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->start(I)V

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_6
    iget-object p2, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->pause(I)V

    :goto_2
    return-void

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected onPause()V
    .locals 1

    .line 190
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->handlePause()V

    return-void

    :cond_0
    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onResume()V
    .locals 1

    .line 185
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 186
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity;->player:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->handleResume()V

    return-void

    :cond_0
    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
