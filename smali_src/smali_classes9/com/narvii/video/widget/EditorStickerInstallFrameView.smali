.class public final Lcom/narvii/video/widget/EditorStickerInstallFrameView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/sticker/StickerFileDownloadListener;
.implements Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;
.implements Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;


# instance fields
.field private final bitmapMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bitmapPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final borderPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final borderRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final borderWidth:F

.field private giphyItem:Lcom/narvii/media/giphy/GiphyItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final iconInstallBitmap:Landroid/graphics/Bitmap;

.field private final iconSize:I

.field private final iconWorkingBitmap:Landroid/graphics/Bitmap;

.field private final padding:I

.field private final rotatingHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rotatingRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sticker:Lcom/narvii/model/Sticker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private stickerLoadingIconAngle:F

.field private stickerLocalPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private stickerSelected:Z

.field private stickerStatus:I

.field private trial:Z

.field private final videoManager:Lcom/narvii/video/services/VideoManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->sticker_install_frame_border_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderWidth:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$dimen;->sticker_install_frame_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconSize:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$dimen;->sticker_install_frame_padding_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->padding:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_editor_sticker_install:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconInstallBitmap:Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_editor_sticker_working:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconWorkingBitmap:Landroid/graphics/Bitmap;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapPaint:Landroid/graphics/Paint;

    .line 8
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderPaint:Landroid/graphics/Paint;

    .line 9
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 10
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderRect:Landroid/graphics/RectF;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v2

    const-string/jumbo v3, "videoManager"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getService(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/narvii/video/services/VideoManager;

    iput-object v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 12
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingHandler:Landroid/os/Handler;

    .line 13
    new-instance v2, Lcom/narvii/video/widget/g;

    invoke-direct {v2, p0}, Lcom/narvii/video/widget/g;-><init>(Lcom/narvii/video/widget/EditorStickerInstallFrameView;)V

    iput-object v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string p1, "#36D4B1"

    .line 17
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->sticker_install_frame_border_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderWidth:F

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->sticker_install_frame_icon_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconSize:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->sticker_install_frame_padding_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->padding:I

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_editor_sticker_install:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconInstallBitmap:Landroid/graphics/Bitmap;

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_editor_sticker_working:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconWorkingBitmap:Landroid/graphics/Bitmap;

    .line 26
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapPaint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderPaint:Landroid/graphics/Paint;

    .line 28
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderRect:Landroid/graphics/RectF;

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    const-string/jumbo v2, "videoManager"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getService(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/video/services/VideoManager;

    iput-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 31
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingHandler:Landroid/os/Handler;

    .line 32
    new-instance v1, Lcom/narvii/video/widget/g;

    invoke-direct {v1, p0}, Lcom/narvii/video/widget/g;-><init>(Lcom/narvii/video/widget/EditorStickerInstallFrameView;)V

    iput-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string p1, "#36D4B1"

    .line 36
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/widget/EditorStickerInstallFrameView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingRunnable$lambda$0(Lcom/narvii/video/widget/EditorStickerInstallFrameView;)V

    return-void
.end method

.method private final installGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/Sticker;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/Sticker;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    iput-object v1, v0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->collectionId()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, v0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 18
    const/4 p1, 0x3

    .line 19
    .line 20
    iput p1, v0, Lcom/narvii/model/Sticker;->sourceType:I

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, p2, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;Z)V

    .line 25
    return-void
.end method

.method private static final rotatingRunnable$lambda$0(Lcom/narvii/video/widget/EditorStickerInstallFrameView;)V
    .locals 2

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
    iget v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLoadingIconAngle:F

    .line 9
    .line 10
    const/high16 v1, 0x41200000    # 10.0f

    .line 11
    add-float/2addr v0, v1

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLoadingIconAngle:F

    .line 14
    .line 15
    const/high16 v1, 0x43b40000    # 360.0f

    .line 16
    .line 17
    cmpl-float v0, v0, v1

    .line 18
    .line 19
    if-ltz v0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    iput v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLoadingIconAngle:F

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 26
    return-void
.end method


# virtual methods
.method public final bindGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Lcom/narvii/media/giphy/GiphyStickerService;)V
    .locals 2
    .param p1    # Lcom/narvii/media/giphy/GiphyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/media/giphy/GiphyStickerService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "giphyItem"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "giphyStickerService"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lcom/narvii/media/giphy/GiphyStickerService;->getLocalPath(Lcom/narvii/media/giphy/GiphyItem;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLocalPath:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lcom/narvii/media/giphy/GiphyStickerService;->getGiphyItemDownloadStatus(Lcom/narvii/media/giphy/GiphyItem;)Lcom/narvii/asset/DownloadStatusInfo;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/asset/DownloadStatusInfo;->isReady()Z

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x2

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerStatus:I

    .line 32
    .line 33
    if-lt p2, v1, :cond_0

    .line 34
    .line 35
    new-instance p2, Lcom/narvii/model/Sticker;

    .line 36
    .line 37
    .line 38
    invoke-direct {p2}, Lcom/narvii/model/Sticker;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iput-object v0, p2, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->collectionId()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iput-object p1, p2, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2, p0}, Lcom/narvii/video/services/VideoManager;->addViewInstallStickerCallback(Lcom/narvii/model/Sticker;Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLocalPath:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->installGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Ljava/lang/String;)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0, v1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1, p0}, Lcom/narvii/media/giphy/GiphyStickerService;->downloadGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;)V

    .line 69
    :goto_0
    return-void
.end method

.method public final bindSticker(Lcom/narvii/model/Sticker;ZLcom/narvii/sticker/StickerCacheService;)V
    .locals 3
    .param p1    # Lcom/narvii/model/Sticker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/sticker/StickerCacheService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sticker"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "stickerCacheService"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->sticker:Lcom/narvii/model/Sticker;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, v0, v1}, Lcom/narvii/sticker/StickerCacheService;->getLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLocalPath:Ljava/lang/String;

    .line 23
    .line 24
    iput-boolean p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->trial:Z

    .line 25
    .line 26
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v0, v1}, Lcom/narvii/sticker/StickerCacheService;->getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/asset/DownloadStatusInfo;->isReady()Z

    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x2

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget p3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerStatus:I

    .line 42
    .line 43
    if-lt p3, v2, :cond_0

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1, p0}, Lcom/narvii/video/services/VideoManager;->addViewInstallStickerCallback(Lcom/narvii/model/Sticker;Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    iget-object p3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLocalPath:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;Z)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/asset/DownloadStatusInfo;->isDownloading()Z

    .line 59
    move-result p2

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    .line 65
    .line 66
    iget-object p2, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p2, p1, p0}, Lcom/narvii/sticker/StickerCacheService;->observeFileStatusChange(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerFileDownloadListener;)V

    .line 72
    :cond_2
    :goto_0
    return-void
.end method

.method public final getStickerStatus()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerStatus:I

    return v0
.end method

.method public final installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Lcom/narvii/model/Sticker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sticker"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/narvii/video/services/VideoManager;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;ZLcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    .line 15
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingHandler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingRunnable:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerStatus:I

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    const/4 v1, 0x3

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerSelected:Z

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderRect:Landroid/graphics/RectF;

    .line 28
    .line 29
    iget v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->padding:I

    .line 30
    int-to-float v2, v1

    .line 31
    int-to-float v1, v1

    .line 32
    .line 33
    iget-object v3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderPaint:Landroid/graphics/Paint;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconWorkingBitmap:Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 43
    move-result v0

    .line 44
    int-to-float v0, v0

    .line 45
    .line 46
    const/high16 v1, 0x40000000    # 2.0f

    .line 47
    div-float/2addr v0, v1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 55
    neg-float v2, v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 61
    .line 62
    iget v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLoadingIconAngle:F

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 76
    move-result v1

    .line 77
    .line 78
    iget v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconSize:I

    .line 79
    sub-int/2addr v1, v2

    .line 80
    .line 81
    iget v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->padding:I

    .line 82
    sub-int/2addr v1, v2

    .line 83
    int-to-float v1, v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 87
    move-result v2

    .line 88
    .line 89
    iget v3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconSize:I

    .line 90
    sub-int/2addr v2, v3

    .line 91
    .line 92
    iget v3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->padding:I

    .line 93
    sub-int/2addr v2, v3

    .line 94
    int-to-float v2, v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 98
    .line 99
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconWorkingBitmap:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapPaint:Landroid/graphics/Paint;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 107
    .line 108
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingHandler:Landroid/os/Handler;

    .line 109
    .line 110
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingRunnable:Ljava/lang/Runnable;

    .line 111
    .line 112
    const-wide/16 v1, 0x20

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    goto :goto_0

    .line 117
    .line 118
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 122
    .line 123
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 127
    move-result v1

    .line 128
    .line 129
    iget v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconSize:I

    .line 130
    sub-int/2addr v1, v2

    .line 131
    .line 132
    iget v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->padding:I

    .line 133
    sub-int/2addr v1, v2

    .line 134
    int-to-float v1, v1

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 138
    move-result v2

    .line 139
    .line 140
    iget v3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconSize:I

    .line 141
    sub-int/2addr v2, v3

    .line 142
    .line 143
    iget v3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->padding:I

    .line 144
    sub-int/2addr v2, v3

    .line 145
    int-to-float v2, v2

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 149
    .line 150
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->iconInstallBitmap:Landroid/graphics/Bitmap;

    .line 151
    .line 152
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 153
    .line 154
    iget-object v2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bitmapPaint:Landroid/graphics/Paint;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 158
    :cond_3
    :goto_0
    return-void
.end method

.method public onGiphyStickerLoadFailed(Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 1
    .param p1    # Lcom/narvii/media/giphy/GiphyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "giphyItem"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerSelected(Z)V

    .line 10
    const/4 p1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    .line 14
    return-void
.end method

.method public onGiphyStickerLoaded(Ljava/io/File;Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/media/giphy/GiphyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "file"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "giphyItem"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    .line 20
    :goto_0
    iget-object v1, p2, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLocalPath:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p2, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->installGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Ljava/lang/String;)V

    .line 38
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderRect:Landroid/graphics/RectF;

    .line 8
    .line 9
    iget p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderWidth:F

    .line 10
    .line 11
    const/high16 p3, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float p4, p2, p3

    .line 14
    div-float/2addr p2, p3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    move-result p5

    .line 19
    int-to-float p5, p5

    .line 20
    .line 21
    iget v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderWidth:F

    .line 22
    div-float/2addr v0, p3

    .line 23
    sub-float/2addr p5, v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    .line 30
    iget v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->borderWidth:F

    .line 31
    div-float/2addr v1, p3

    .line 32
    sub-float/2addr v0, v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p4, p2, p5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 36
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/asset/DownloadStatusInfo;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/asset/DownloadStatusInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->sticker:Lcom/narvii/model/Sticker;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLocalPath:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-eqz p3, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->sticker:Lcom/narvii/model/Sticker;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p3}, Lcom/narvii/asset/DownloadStatusInfo;->isReady()Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->sticker:Lcom/narvii/model/Sticker;

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    iget-object p3, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLocalPath:Ljava/lang/String;

    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->trial:Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2, p3, v0, p0}, Lcom/narvii/video/services/VideoManager;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;ZLcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p3}, Lcom/narvii/asset/DownloadStatusInfo;->isFailed()Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    const/4 p1, 0x0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerSelected(Z)V

    .line 67
    const/4 p1, 0x1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method public onStickerInstallFailed(Lcom/narvii/model/Sticker;)V
    .locals 1
    .param p1    # Lcom/narvii/model/Sticker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sticker"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerSelected(Z)V

    .line 10
    const/4 p1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    .line 14
    return-void
.end method

.method public onStickerInstallStart(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 1
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stickerInfoPack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 1
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "stickerInfoPack"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    .line 10
    return-void
.end method

.method public final onViewRecycled()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/model/Sticker;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Lcom/narvii/model/Sticker;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    iput-object v2, v1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/media/giphy/GiphyItem;->collectionId()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, v1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/VideoManager;->removeViewInstallStickerCallback(Lcom/narvii/model/Sticker;)V

    .line 27
    return-void

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->sticker:Lcom/narvii/model/Sticker;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/narvii/video/services/VideoManager;->removeViewInstallStickerCallback(Lcom/narvii/model/Sticker;)V

    .line 37
    :cond_1
    return-void
.end method

.method public final setStickerSelected(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerSelected:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerSelected:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    return-void
.end method

.method public final setStickerStatus(I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerStatus:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerLoadingIconAngle:F

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingHandler:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->rotatingRunnable:Ljava/lang/Runnable;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->giphyItem:Lcom/narvii/media/giphy/GiphyItem;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_2
    iput p1, v0, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus:I

    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->sticker:Lcom/narvii/model/Sticker;

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_3
    iput p1, v0, Lcom/narvii/model/Sticker;->stickerStatus:I

    .line 33
    .line 34
    :goto_1
    iput p1, p0, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->stickerStatus:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 38
    return-void
.end method
