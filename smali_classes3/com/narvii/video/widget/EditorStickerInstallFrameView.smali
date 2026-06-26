.class public final Lcom/narvii/video/widget/EditorStickerInstallFrameView;
.super Landroid/view/View;
.source "EditorStickerInstallFrameView.kt"

# interfaces
.implements Lcom/narvii/sticker/StickerFileDownloadListener;
.implements Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;
.implements Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditorStickerInstallFrameView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorStickerInstallFrameView.kt\ncom/narvii/video/widget/EditorStickerInstallFrameView\n*L\n1#1,235:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final bitmapMatrix:Landroid/graphics/Matrix;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final borderPaint:Landroid/graphics/Paint;

.field private final borderRect:Landroid/graphics/RectF;

.field private final borderWidth:F

.field private giphyItem:Lcom/narvii/media/giphy/GiphyItem;

.field private final iconInstallBitmap:Landroid/graphics/Bitmap;

.field private final iconSize:I

.field private final iconWorkingBitmap:Landroid/graphics/Bitmap;

.field private final padding:I

.field private final rotatingHandler:Landroid/os/Handler;

.field private final rotatingRunnable:Ljava/lang/Runnable;

.field private sticker:Lcom/narvii/model/Sticker;

.field private stickerLoadingIconAngle:F

.field private stickerLocalPath:Ljava/lang/String;

.field private stickerSelected:Z

.field private stickerStatus:I

.field private trial:Z

.field private final videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->sticker_install_frame_border_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderWidth:F

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->sticker_install_frame_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconSize:I

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->sticker_install_frame_padding_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->padding:I

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_editor_sticker_install:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconInstallBitmap:Landroid/graphics/Bitmap;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_editor_sticker_working:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconWorkingBitmap:Landroid/graphics/Bitmap;

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapPaint:Landroid/graphics/Paint;

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderPaint:Landroid/graphics/Paint;

    .line 37
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 38
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderRect:Landroid/graphics/RectF;

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "videoManager"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Utils.getNVContext(conte\u2026etService(\"videoManager\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/video/services/VideoManager;

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingHandler:Landroid/os/Handler;

    .line 48
    new-instance p1, Lcom/narvii/video/widget/EditorStickerInstallFrameView$rotatingRunnable$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/widget/EditorStickerInstallFrameView$rotatingRunnable$1;-><init>(Lcom/narvii/video/widget/EditorStickerInstallFrameView;)V

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingRunnable:Ljava/lang/Runnable;

    .line 62
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderWidth:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderPaint:Landroid/graphics/Paint;

    const-string v1, "#36D4B1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->sticker_install_frame_border_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderWidth:F

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->sticker_install_frame_icon_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconSize:I

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->sticker_install_frame_padding_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->padding:I

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_editor_sticker_install:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconInstallBitmap:Landroid/graphics/Bitmap;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_editor_sticker_working:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconWorkingBitmap:Landroid/graphics/Bitmap;

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapPaint:Landroid/graphics/Paint;

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderPaint:Landroid/graphics/Paint;

    .line 37
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 38
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderRect:Landroid/graphics/RectF;

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "videoManager"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Utils.getNVContext(conte\u2026etService(\"videoManager\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/video/services/VideoManager;

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingHandler:Landroid/os/Handler;

    .line 48
    new-instance p1, Lcom/narvii/video/widget/EditorStickerInstallFrameView$rotatingRunnable$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/widget/EditorStickerInstallFrameView$rotatingRunnable$1;-><init>(Lcom/narvii/video/widget/EditorStickerInstallFrameView;)V

    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingRunnable:Ljava/lang/Runnable;

    .line 62
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderPaint:Landroid/graphics/Paint;

    const-string v0, "#36D4B1"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public static final synthetic access$getStickerLoadingIconAngle$p(Lcom/narvii/video/widget/EditorStickerInstallFrameView;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLoadingIconAngle:F

    return p0
.end method

.method public static final synthetic access$setStickerLoadingIconAngle$p(Lcom/narvii/video/widget/EditorStickerInstallFrameView;F)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLoadingIconAngle:F

    return-void
.end method

.method private final installGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Ljava/lang/String;)V
    .locals 2

    .line 229
    new-instance v0, Lcom/narvii/model/Sticker;

    invoke-direct {v0}, Lcom/narvii/model/Sticker;-><init>()V

    .line 230
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->collectionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    const/4 p1, 0x3

    .line 232
    iput p1, v0, Lcom/narvii/model/Sticker;->sourceType:I

    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, v0, p2, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bindGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Lcom/narvii/media/giphy/GiphyStickerService;)V
    .locals 2

    const-string v0, "giphyItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "giphyStickerService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 206
    invoke-virtual {p2, p1}, Lcom/narvii/media/giphy/GiphyStickerService;->getLocalPath(Lcom/narvii/media/giphy/GiphyItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLocalPath:Ljava/lang/String;

    .line 207
    invoke-virtual {p2, p1}, Lcom/narvii/media/giphy/GiphyStickerService;->getGiphyItemDownloadStatus(Lcom/narvii/media/giphy/GiphyItem;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/narvii/asset/DownloadStatusInfo;->isReady()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 209
    iget p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerStatus:I

    if-lt p2, v1, :cond_0

    .line 210
    new-instance p2, Lcom/narvii/model/Sticker;

    invoke-direct {p2}, Lcom/narvii/model/Sticker;-><init>()V

    .line 211
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->collectionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 213
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-virtual {p1, p2, p0}, Lcom/narvii/video/services/VideoManager;->addViewInstallStickerCallback(Lcom/narvii/model/Sticker;Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLocalPath:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->installGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p0, v1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    .line 219
    invoke-virtual {p2, p1, p0}, Lcom/narvii/media/giphy/GiphyStickerService;->downloadGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;)V

    :goto_0
    return-void
.end method

.method public final bindSticker(Lcom/narvii/model/Sticker;ZLcom/narvii/sticker/StickerCacheService;)V
    .locals 3

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stickerCacheService"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->sticker:Lcom/narvii/model/Sticker;

    .line 189
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/narvii/sticker/StickerCacheService;->getLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLocalPath:Ljava/lang/String;

    .line 190
    iput-boolean p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->trial:Z

    .line 191
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/narvii/sticker/StickerCacheService;->getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object v0

    const-string v1, "downloadStatusInfo"

    .line 192
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/asset/DownloadStatusInfo;->isReady()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 193
    iget p3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerStatus:I

    if-lt p3, v2, :cond_0

    .line 194
    iget-object p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-virtual {p2, p1, p0}, Lcom/narvii/video/services/VideoManager;->addViewInstallStickerCallback(Lcom/narvii/model/Sticker;Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLocalPath:Ljava/lang/String;

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;Z)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/asset/DownloadStatusInfo;->isDownloading()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 199
    invoke-virtual {p0, v2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    .line 200
    iget-object p2, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-virtual {p3, p2, p1, p0}, Lcom/narvii/sticker/StickerCacheService;->observeFileStatusChange(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerFileDownloadListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getStickerStatus()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerStatus:I

    return v0
.end method

.method public final installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 224
    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    .line 225
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/narvii/video/services/VideoManager;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;ZLcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 108
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 109
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 81
    iget v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 100
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerSelected:Z

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->padding:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconWorkingBitmap:Landroid/graphics/Bitmap;

    const-string v1, "iconWorkingBitmap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 90
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 91
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    neg-float v2, v0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 92
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLoadingIconAngle:F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 93
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 94
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->padding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->padding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 96
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconWorkingBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 97
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 84
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->padding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->padding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 86
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconInstallBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onGiphyStickerLoadFailed(Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 1

    const-string v0, "giphyItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerSelected(Z)V

    const/4 p1, 0x1

    .line 145
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    return-void
.end method

.method public onGiphyStickerLoaded(Ljava/io/File;Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "giphyItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p2, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLocalPath:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->installGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 72
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderRect:Landroid/graphics/RectF;

    iget p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderWidth:F

    const/high16 p3, 0x40000000    # 2.0f

    div-float p4, p2, p3

    div-float/2addr p2, p3

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderWidth:F

    div-float/2addr v0, p3

    sub-float/2addr p5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderWidth:F

    div-float/2addr v1, p3

    sub-float/2addr v0, v1

    .line 74
    invoke-virtual {p1, p4, p2, p5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/asset/DownloadStatusInfo;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->sticker:Lcom/narvii/model/Sticker;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLocalPath:Ljava/lang/String;

    if-eqz v1, :cond_6

    if-eqz p3, :cond_6

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->sticker:Lcom/narvii/model/Sticker;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    invoke-virtual {p3}, Lcom/narvii/asset/DownloadStatusInfo;->isReady()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    iget-object p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->sticker:Lcom/narvii/model/Sticker;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLocalPath:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->trial:Z

    invoke-virtual {p1, p2, p3, v0, p0}, Lcom/narvii/video/services/VideoManager;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;ZLcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 119
    :cond_2
    invoke-virtual {p3}, Lcom/narvii/asset/DownloadStatusInfo;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 120
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerSelected(Z)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    :cond_3
    :goto_0
    return-void

    .line 114
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_6
    :goto_1
    return-void
.end method

.method public onStickerInstallFailed(Lcom/narvii/model/Sticker;)V
    .locals 1

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerSelected(Z)V

    const/4 p1, 0x1

    .line 134
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    return-void
.end method

.method public onStickerInstallStart(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 1

    const-string v0, "stickerInfoPack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 1

    const-string v0, "stickerInfoPack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 129
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    return-void
.end method

.method public final onViewRecycled()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    if-eqz v0, :cond_0

    .line 150
    new-instance v1, Lcom/narvii/model/Sticker;

    invoke-direct {v1}, Lcom/narvii/model/Sticker;-><init>()V

    .line 151
    invoke-virtual {v0}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 152
    invoke-virtual {v0}, Lcom/narvii/media/giphy/GiphyItem;->collectionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-virtual {v0, v1}, Lcom/narvii/video/services/VideoManager;->removeViewInstallStickerCallback(Lcom/narvii/model/Sticker;)V

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->sticker:Lcom/narvii/model/Sticker;

    if-eqz v0, :cond_1

    .line 157
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-virtual {v1, v0}, Lcom/narvii/video/services/VideoManager;->removeViewInstallStickerCallback(Lcom/narvii/model/Sticker;)V

    :cond_1
    return-void
.end method

.method public final setStickerSelected(Z)V
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerSelected:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 183
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerSelected:Z

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setStickerStatus(I)V
    .locals 2

    .line 162
    iget v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerStatus:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLoadingIconAngle:F

    .line 167
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    if-eqz v0, :cond_2

    iput p1, v0, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus:I

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->sticker:Lcom/narvii/model/Sticker;

    if-eqz v0, :cond_3

    iput p1, v0, Lcom/narvii/model/Sticker;->stickerStatus:I

    .line 171
    :cond_3
    iput p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerStatus:I

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
