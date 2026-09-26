.class public Lcom/narvii/widget/NVImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVImageView$OnImageChangedListener;,
        Lcom/narvii/widget/NVImageView$DrawableListener;,
        Lcom/narvii/widget/NVImageView$OnShareButtonClickedListener;
    }
.end annotation


# static fields
.field public static final CORNER_BOTTOM_LEFT:I = 0x8

.field public static final CORNER_BOTTOM_RIGHT:I = 0x4

.field public static final CORNER_TOP_LEFT:I = 0x1

.field public static final CORNER_TOP_RIGHT:I = 0x2

.field public static final STATUS_EMPTY:I = 0x3

.field public static final STATUS_ERROR:I = 0x2

.field public static final STATUS_FINISHED:I = 0x4

.field public static final STATUS_LOADING:I = 0x1

.field public static final TYPE_CHAT_BACKGROUND:Ljava/lang/String; = "chat-background"

.field public static final TYPE_CHAT_COVER:Ljava/lang/String; = "chat-cover"

.field public static final TYPE_CHAT_MESSAGE:Ljava/lang/String; = "chat-message"

.field public static final TYPE_COMMUNITY_ICON:Ljava/lang/String; = "community-icon"

.field public static final TYPE_COMMUNITY_LAUNCH_IMAGE:Ljava/lang/String; = "community-launch-image"

.field public static final TYPE_FULLSCREEN_BACKGROUND_IMAGE:Ljava/lang/String; = "fullscreen-background-image"

.field public static final TYPE_LEADERBOARD_BACKGROUND_IMAGE:Ljava/lang/String; = "leaderboard-background-image"

.field public static final TYPE_P2A_AVATAR:Ljava/lang/String; = "p2a-avatar"

.field public static final TYPE_POST_BACKGROUND:Ljava/lang/String; = "post-background"

.field public static final TYPE_SHARED_FOLDER_IMAGE:Ljava/lang/String; = "shared-folder-image"

.field public static final TYPE_STICKER:Ljava/lang/String; = "sticker"

.field public static final TYPE_STORY_COVER:Ljava/lang/String; = "story-cover"

.field static defaultShadowColor:I

.field private static displaySize:I

.field private static memoryClass:I

.field private static monochromeFilter:Landroid/graphics/ColorFilter;

.field static pressedMaskColor:I

.field static pressedMaskPaint:Landroid/graphics/Paint;

.field static ytBgMaskRect:Landroid/graphics/RectF;

.field static ytBgPaint:Landroid/graphics/Paint;

.field static ytMaxSize:I

.field static ytMinSize:I

.field static ytPaint:Landroid/graphics/Paint;

.field static ytSymbol:Ljava/lang/String;


# instance fields
.field private bitmapRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

.field public cornerMask:I

.field public cornerRadius:I

.field public defaultDrawable:Landroid/graphics/drawable/Drawable;

.field public defaultDrawableId:I

.field private drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

.field public errorDrawable:Landroid/graphics/drawable/Drawable;

.field public errorDrawableId:I

.field private fixStroke:Z

.field public forceShowPlayButton:Z

.field private gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

.field public groundingColor:I

.field private groundingColorPaint:Landroid/graphics/Paint;

.field private hasGroundingColor:Z

.field public hidePlayButton:Z

.field private imageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field imageRetrieve:Z

.field public imageType:Ljava/lang/String;

.field private listener:Lcom/narvii/widget/NVImageView$OnImageChangedListener;

.field public loadingDrawable:Landroid/graphics/drawable/Drawable;

.field public loadingDrawableId:I

.field private loopCount:I

.field private makeWebpRtl:Z

.field private matrix:Landroid/graphics/Matrix;

.field public maxHeightPercentage:F

.field protected media:Lcom/narvii/model/Media;

.field public monochrome:Z

.field private final onErrorRunnable:Ljava/lang/Runnable;

.field private final onResponseRunnable:Ljava/lang/Runnable;

.field private final paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

.field private radii:[F

.field private final rect:Landroid/graphics/RectF;

.field protected requestUrl:Ljava/lang/String;

.field public scalePlaceholder:Z

.field showPressedMask:Z

.field protected status:I

.field public strokeColor:I

.field public strokeWidth:F

.field protected visible:Z

.field private webpLoader:Lcom/narvii/util/drawables/webp/WebPLoader;

.field private ytBitmap:Landroid/graphics/Bitmap;

.field private ytRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/widget/NVImageView;->makeWebpRtl:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->groundingColorPaint:Landroid/graphics/Paint;

    .line 4
    new-instance v1, Lcom/narvii/widget/NVImageView$1;

    invoke-direct {v1, p0}, Lcom/narvii/widget/NVImageView$1;-><init>(Lcom/narvii/widget/NVImageView;)V

    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->onResponseRunnable:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lcom/narvii/widget/NVImageView$2;

    invoke-direct {v1, p0}, Lcom/narvii/widget/NVImageView$2;-><init>(Lcom/narvii/widget/NVImageView;)V

    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->onErrorRunnable:Ljava/lang/Runnable;

    sget v1, Lcom/narvii/widget/NVImageView;->defaultShadowColor:I

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$color;->shadow:I

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/narvii/widget/NVImageView;->defaultShadowColor:I

    .line 8
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    .line 9
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    sget-object v1, Lcom/narvii/lib/R$styleable;->NVImageView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_cornerRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 13
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_cornerMask:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 14
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_monochrome:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/NVImageView;->monochrome:Z

    .line 15
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_strokeWidth:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 16
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_strokeColor:I

    sget p3, Lcom/narvii/widget/NVImageView;->defaultShadowColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 17
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_groundingColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->groundingColor:I

    .line 18
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_maxHeightPercentage:I

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->maxHeightPercentage:F

    .line 19
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_showPressedMask:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/NVImageView;->showPressedMask:Z

    .line 20
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_loopCount:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->loopCount:I

    .line 21
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_defaultDrawable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    .line 22
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_loadingDrawable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->loadingDrawableId:I

    .line 23
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_errorDrawable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->errorDrawableId:I

    .line 24
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_scalePlaceholder:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 25
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_hidePlayButton:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 26
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_imageType:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    invoke-direct {p0}, Lcom/narvii/widget/NVImageView;->innerSetGroundingColor()V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/narvii/widget/NVImageView;->visible:Z

    return-void
.end method

.method private drawGroundingColor(Landroid/graphics/Canvas;Landroid/graphics/RectF;FI)V
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->hasGroundingColor:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v6, p0, Lcom/narvii/widget/NVImageView;->groundingColorPaint:Landroid/graphics/Paint;

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move v4, p3

    .line 12
    move v5, p4

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/narvii/widget/NVImageView;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V

    .line 16
    return-void
.end method

.method private drawRoundPath(Landroid/graphics/Path;Landroid/graphics/RectF;FI)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-array v0, v1, [F

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    .line 11
    .line 12
    :cond_0
    and-int/lit8 v0, p4, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    .line 20
    .line 21
    aput v4, v0, v2

    .line 22
    .line 23
    aput v4, v0, v3

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    .line 27
    .line 28
    aput p3, v0, v2

    .line 29
    .line 30
    aput p3, v0, v3

    .line 31
    .line 32
    :goto_0
    and-int/lit8 v0, p4, 0x2

    .line 33
    const/4 v2, 0x3

    .line 34
    const/4 v3, 0x2

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    .line 39
    .line 40
    aput v4, v0, v3

    .line 41
    .line 42
    aput v4, v0, v2

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    .line 46
    .line 47
    aput p3, v0, v3

    .line 48
    .line 49
    aput p3, v0, v2

    .line 50
    .line 51
    :goto_1
    and-int/lit8 v0, p4, 0x4

    .line 52
    const/4 v2, 0x5

    .line 53
    const/4 v3, 0x4

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    .line 58
    .line 59
    aput v4, v0, v3

    .line 60
    .line 61
    aput v4, v0, v2

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    .line 65
    .line 66
    aput p3, v0, v3

    .line 67
    .line 68
    aput p3, v0, v2

    .line 69
    :goto_2
    and-int/2addr p4, v1

    .line 70
    const/4 v0, 0x7

    .line 71
    const/4 v1, 0x6

    .line 72
    .line 73
    if-eqz p4, :cond_4

    .line 74
    .line 75
    iget-object p3, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    .line 76
    .line 77
    aput v4, p3, v1

    .line 78
    .line 79
    aput v4, p3, v0

    .line 80
    goto :goto_3

    .line 81
    .line 82
    :cond_4
    iget-object p4, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    .line 83
    .line 84
    aput p3, p4, v1

    .line 85
    .line 86
    aput p3, p4, v0

    .line 87
    .line 88
    :goto_3
    iget-object p3, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    .line 89
    .line 90
    sget-object p4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 94
    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpl-float v0, p3, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2, p3, p3, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    if-lez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->path:Landroid/graphics/Path;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Path;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->path:Landroid/graphics/Path;

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->path:Landroid/graphics/Path;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/narvii/widget/NVImageView;->drawRoundPath(Landroid/graphics/Path;Landroid/graphics/RectF;FI)V

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/widget/NVImageView;->path:Landroid/graphics/Path;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 43
    :goto_1
    return-void
.end method

.method public static fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    if-le p2, p3, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p3

    .line 1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x300

    const-string v3, "128"

    const/16 v4, 0xc0

    const/16 v5, 0x1e0

    const-string v6, "hq"

    if-eqz v1, :cond_8

    .line 2
    invoke-static {p0}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "68"

    const/16 p3, 0x60

    if-eqz p1, :cond_4

    if-le v0, v5, :cond_1

    .line 3
    invoke-static {p0, v6}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-le v0, v4, :cond_2

    return-object p0

    :cond_2
    if-le v0, p3, :cond_3

    .line 4
    invoke-static {p0, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_3
    invoke-static {p0, p2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-le v0, v2, :cond_5

    .line 6
    invoke-static {p0, v6}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-le v0, v4, :cond_6

    return-object p0

    :cond_6
    if-le v0, p3, :cond_7

    .line 7
    invoke-static {p0, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_7
    invoke-static {p0, p2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v1, "chat-cover"

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 10
    invoke-static {p0}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-le v0, v4, :cond_9

    return-object p0

    .line 11
    :cond_9
    invoke-static {p0, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    if-le v0, v4, :cond_b

    return-object p0

    .line 12
    :cond_b
    invoke-static {p0, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-string v1, "chat-message"

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 14
    invoke-static {p0}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    if-le v0, v5, :cond_d

    .line 15
    invoke-static {p0, v6}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_d
    return-object p0

    :cond_e
    if-le v0, v2, :cond_f

    .line 16
    invoke-static {p0, v6}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_f
    return-object p0

    :cond_10
    const-string v1, "chat-background"

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object p0

    :cond_11
    const-string v1, "community-icon"

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "120"

    if-eqz v1, :cond_14

    const/16 p1, 0xb4

    if-gt v0, p1, :cond_12

    .line 19
    invoke-static {p0, v2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const/16 p1, 0x10e

    if-gt v0, p1, :cond_13

    const-string p1, "180"

    .line 20
    invoke-static {p0, p1}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_13
    return-object p0

    :cond_14
    const-string v1, "community-launch-image"

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "375"

    const-string v4, "188"

    if-eqz v1, :cond_19

    const/16 p1, 0x177

    if-gt p2, p1, :cond_18

    const/16 p1, 0x29b

    if-le p3, p1, :cond_15

    goto :goto_2

    :cond_15
    const/16 p1, 0xbc

    if-gt p2, p1, :cond_17

    const/16 p1, 0x14f

    if-le p3, p1, :cond_16

    goto :goto_1

    .line 22
    :cond_16
    invoke-static {p0, v4}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_17
    :goto_1
    invoke-static {p0, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_18
    :goto_2
    return-object p0

    :cond_19
    const-string p2, "fullscreen-background-image"

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    sget p1, Lcom/narvii/widget/NVImageView;->displaySize:I

    if-nez p1, :cond_1a

    .line 25
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 26
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sput p1, Lcom/narvii/widget/NVImageView;->displaySize:I

    :cond_1a
    sget p1, Lcom/narvii/widget/NVImageView;->memoryClass:I

    if-nez p1, :cond_1b

    .line 27
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 28
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p1

    sput p1, Lcom/narvii/widget/NVImageView;->memoryClass:I

    :cond_1b
    sget p1, Lcom/narvii/widget/NVImageView;->displaySize:I

    const/16 p2, 0x190

    if-gt p1, p2, :cond_1c

    :goto_3
    move-object v3, v4

    goto :goto_4

    :cond_1c
    const/16 p2, 0x320

    if-gt p1, p2, :cond_1d

    sget p1, Lcom/narvii/widget/NVImageView;->memoryClass:I

    const/16 p2, 0x30

    if-ge p1, p2, :cond_1f

    goto :goto_3

    :cond_1d
    sget p1, Lcom/narvii/widget/NVImageView;->memoryClass:I

    const/16 p2, 0x40

    if-ge p1, p2, :cond_1e

    goto :goto_4

    :cond_1e
    const/4 v3, 0x0

    :cond_1f
    :goto_4
    if-eqz v3, :cond_20

    .line 29
    invoke-static {p0, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_20
    return-object p0

    :cond_21
    const-string p2, "shared-folder-image"

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 31
    invoke-static {p0}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "280"

    if-eqz p1, :cond_24

    if-le v0, v5, :cond_22

    .line 32
    invoke-static {p0, v6}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const/16 p1, 0x12c

    if-ge v0, p1, :cond_23

    .line 33
    invoke-static {p0, p2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_23
    return-object p0

    :cond_24
    const/16 p1, 0x4b0

    if-le v0, p1, :cond_25

    .line 34
    invoke-static {p0, v6}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    if-ge v0, v5, :cond_26

    .line 35
    invoke-static {p0, p2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_26
    return-object p0

    :cond_27
    const-string p2, "sticker"

    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    const/16 p1, 0x64

    if-gt v0, p1, :cond_28

    const-string p1, "50"

    .line 37
    invoke-static {p0, p1}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    const/16 p1, 0xc8

    if-gt v0, p1, :cond_29

    .line 38
    invoke-static {p0, v2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_29
    return-object p0

    :cond_2a
    const-string/jumbo p2, "story-cover"

    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    const/16 p1, 0x44c

    if-lt v0, p1, :cond_2b

    .line 40
    invoke-static {p0, v6}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2b
    return-object p0

    .line 41
    :cond_2c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown image type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    return-object p0
.end method

.method private getMonochromeFilter()Landroid/graphics/ColorFilter;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/widget/NVImageView;->monochromeFilter:Landroid/graphics/ColorFilter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/ColorMatrix;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 14
    .line 15
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 19
    .line 20
    sput-object v1, Lcom/narvii/widget/NVImageView;->monochromeFilter:Landroid/graphics/ColorFilter;

    .line 21
    .line 22
    :cond_0
    sget-object v0, Lcom/narvii/widget/NVImageView;->monochromeFilter:Landroid/graphics/ColorFilter;

    .line 23
    return-object v0
.end method

.method private innerSetGroundingColor()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVImageView;->groundingColor:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/widget/NVImageView;->hasGroundingColor:Z

    .line 9
    .line 10
    new-instance v1, Landroid/graphics/Paint;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 14
    .line 15
    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->groundingColorPaint:Landroid/graphics/Paint;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->groundingColorPaint:Landroid/graphics/Paint;

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/widget/NVImageView;->groundingColor:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->groundingColorPaint:Landroid/graphics/Paint;

    .line 28
    .line 29
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    :cond_0
    return-void
.end method

.method public static isGif(Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private isVideo(Lcom/narvii/model/Media;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/model/Media;->type:I

    .line 5
    .line 6
    const/16 v1, 0x66

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/16 v1, 0x7b

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public static isWebP(Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const-string p0, ""

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    const-string v0, "_00."

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    add-int/lit8 v2, v0, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    :cond_1
    return-object p0
.end method

.method public static replaceVideoCoverUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    const-string v0, "_raw."

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    add-int/lit8 v2, v0, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    :cond_0
    return-object p0
.end method

.method private safeGetDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 14
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method


# virtual methods
.method protected _setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->bitmapRef:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    return-void
.end method

.method protected discard()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v3, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 24
    .line 25
    iput-object v2, p0, Lcom/narvii/widget/NVImageView;->container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 26
    .line 27
    iput-object v2, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iget-object v3, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3, v4}, Lcom/narvii/util/drawables/gif/GifLoader;->abort(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 55
    .line 56
    iput-object v2, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 57
    .line 58
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/narvii/widget/NVImageView;->isWebP(Ljava/lang/String;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    iget-object v3, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v4, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3, v4}, Lcom/narvii/util/drawables/webp/WebPLoader;->abort(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 79
    .line 80
    iput-object v2, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 81
    .line 82
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    .line 83
    :cond_2
    :goto_0
    return-void
.end method

.method protected dispatchImageChanged(ILcom/narvii/model/Media;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->listener:Lcom/narvii/widget/NVImageView$OnImageChangedListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0, p1, p2}, Lcom/narvii/widget/NVImageView$OnImageChangedListener;->onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V

    .line 8
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->drawableStateChanged()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    return-void
.end method

.method protected getFixedHeight(I)I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVImageView;->maxHeightPercentage:F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    cmpl-float v1, v0, v1

    .line 6
    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    cmpg-float v0, v0, v1

    .line 12
    .line 13
    if-gez v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    .line 21
    move-result v0

    .line 22
    int-to-float v0, v0

    .line 23
    .line 24
    iget v1, p0, Lcom/narvii/widget/NVImageView;->maxHeightPercentage:F

    .line 25
    mul-float/2addr v0, v1

    .line 26
    .line 27
    const/high16 v1, 0x3f000000    # 0.5f

    .line 28
    add-float/2addr v0, v1

    .line 29
    float-to-int v0, v0

    .line 30
    .line 31
    if-le p1, v0, :cond_0

    .line 32
    return v0

    .line 33
    :cond_0
    return p1
.end method

.method public getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 3
    .line 4
    const-string v1, "gifLoader"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 39
    :cond_1
    return-object v0
.end method

.method public getImageLoader()Lcom/android/volley/toolbox/ImageLoader;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 3
    .line 4
    const-string v1, "imageLoader"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/android/volley/toolbox/ImageLoader;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string/jumbo v2, "unable to get a thumbImageLoader in context "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, Lcom/android/volley/toolbox/ImageLoader;

    .line 64
    :cond_1
    return-object v0
.end method

.method protected getImageRequestHeight(I)I
    .locals 0

    return p1
.end method

.method protected getImageRequestWidth(I)I
    .locals 0

    return p1
.end method

.method public getMedia()Lcom/narvii/model/Media;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    return-object v0
.end method

.method protected getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object p3

    .line 5
    .line 6
    :cond_0
    iget-object p4, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 7
    .line 8
    if-nez p4, :cond_1

    .line 9
    .line 10
    iget-object p4, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-static {p4}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-nez p1, :cond_4

    .line 17
    .line 18
    .line 19
    invoke-static {p4}, Lcom/narvii/widget/NVImageView;->isWebP(Ljava/lang/String;)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-static {p4}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getDefaultYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_3
    return-object p4

    .line 36
    .line 37
    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 38
    move-object p3, p4

    .line 39
    :cond_5
    return-object p3
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/NVImageView;->status:I

    return v0
.end method

.method public getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->webpLoader:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "webpLoader"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->webpLoader:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->webpLoader:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 40
    :cond_1
    return-object v0
.end method

.method public innerSetMeasuredDimension(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 4
    return-void
.end method

.method public isMonochrome()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->monochrome:Z

    return v0
.end method

.method public isUrlCached(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    return v0

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->isUrlCached(Ljava/lang/String;)Z

    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    if-nez v1, :cond_3

    .line 39
    return v0

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->isUrlCached(Ljava/lang/String;)Z

    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    instance-of v1, v1, Lcom/narvii/util/image/NVImageLoader;

    .line 55
    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lcom/narvii/util/image/NVImageLoader;->isUrlCached(Ljava/lang/String;)Z

    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :cond_5
    return v0
.end method

.method public makeWebpRtl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->makeWebpRtl:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->visible:Z

    .line 6
    const/4 v8, 0x1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iput-boolean v8, v6, Lcom/narvii/widget/NVImageView;->visible:Z

    .line 17
    .line 18
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->require()Z

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 35
    move-result v1

    .line 36
    sub-int/2addr v0, v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 40
    move-result v1

    .line 41
    .line 42
    sub-int v9, v0, v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 46
    move-result v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 50
    move-result v1

    .line 51
    sub-int/2addr v0, v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 55
    move-result v1

    .line 56
    .line 57
    sub-int v10, v0, v1

    .line 58
    .line 59
    div-int/lit8 v0, v9, 0x2

    .line 60
    .line 61
    div-int/lit8 v1, v10, 0x2

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 65
    move-result v0

    .line 66
    .line 67
    iget v1, v6, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 71
    move-result v11

    .line 72
    .line 73
    iget v0, v6, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 74
    const/4 v12, 0x0

    .line 75
    const/4 v13, 0x0

    .line 76
    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->monochrome:Z

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 85
    move-result v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 89
    move-result v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 93
    move-result v2

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 97
    move-result v3

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 101
    move-result v4

    .line 102
    sub-int/2addr v3, v4

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 106
    move-result v4

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 110
    move-result v5

    .line 111
    sub-int/2addr v4, v5

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 115
    .line 116
    iget-boolean v1, v6, Lcom/narvii/widget/NVImageView;->hasGroundingColor:Z

    .line 117
    .line 118
    if-eqz v1, :cond_1

    .line 119
    .line 120
    iget v1, v6, Lcom/narvii/widget/NVImageView;->groundingColor:I

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 124
    .line 125
    .line 126
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 130
    .line 131
    goto/16 :goto_4

    .line 132
    .line 133
    .line 134
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 138
    .line 139
    if-eqz v1, :cond_3

    .line 140
    move-object v1, v0

    .line 141
    .line 142
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 146
    move-result-object v2

    .line 147
    .line 148
    if-eqz v2, :cond_3

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 152
    move-result-object v1

    .line 153
    goto :goto_0

    .line 154
    .line 155
    :cond_3
    instance-of v1, v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 156
    .line 157
    if-eqz v1, :cond_4

    .line 158
    move-object v1, v0

    .line 159
    .line 160
    check-cast v1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;->draw()Landroid/graphics/Bitmap;

    .line 164
    move-result-object v1

    .line 165
    goto :goto_0

    .line 166
    .line 167
    :cond_4
    instance-of v1, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 168
    .line 169
    if-eqz v1, :cond_5

    .line 170
    move-object v1, v0

    .line 171
    .line 172
    check-cast v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->draw()Landroid/graphics/Bitmap;

    .line 176
    move-result-object v1

    .line 177
    goto :goto_0

    .line 178
    .line 179
    :cond_5
    instance-of v1, v0, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    .line 180
    .line 181
    if-eqz v1, :cond_6

    .line 182
    move-object v1, v0

    .line 183
    .line 184
    check-cast v1, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;->draw()Landroid/graphics/Bitmap;

    .line 188
    move-result-object v1

    .line 189
    goto :goto_0

    .line 190
    .line 191
    :cond_6
    instance-of v1, v0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 192
    .line 193
    if-eqz v1, :cond_7

    .line 194
    move-object v1, v0

    .line 195
    .line 196
    check-cast v1, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->draw()Landroid/graphics/Bitmap;

    .line 200
    move-result-object v1

    .line 201
    goto :goto_0

    .line 202
    :cond_7
    move-object v1, v12

    .line 203
    .line 204
    :goto_0
    if-nez v1, :cond_a

    .line 205
    .line 206
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    .line 207
    .line 208
    if-eqz v1, :cond_8

    .line 209
    .line 210
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 211
    .line 212
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 216
    .line 217
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    .line 222
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 223
    .line 224
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    .line 229
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 233
    move-result v0

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    .line 238
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 242
    .line 243
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 247
    .line 248
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 252
    move-result v1

    .line 253
    int-to-float v1, v1

    .line 254
    .line 255
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 256
    .line 257
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 261
    move-result v1

    .line 262
    int-to-float v1, v1

    .line 263
    .line 264
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 265
    .line 266
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    .line 267
    .line 268
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 269
    int-to-float v2, v9

    .line 270
    add-float/2addr v1, v2

    .line 271
    .line 272
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 273
    .line 274
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 275
    int-to-float v2, v10

    .line 276
    add-float/2addr v1, v2

    .line 277
    .line 278
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 279
    int-to-float v3, v11

    .line 280
    .line 281
    iget v1, v6, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 282
    .line 283
    .line 284
    invoke-direct {p0, v7, v0, v3, v1}, Lcom/narvii/widget/NVImageView;->drawGroundingColor(Landroid/graphics/Canvas;Landroid/graphics/RectF;FI)V

    .line 285
    .line 286
    iget-object v2, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    .line 287
    .line 288
    iget v4, v6, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 289
    .line 290
    iget-object v5, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 291
    move-object v0, p0

    .line 292
    .line 293
    move-object/from16 v1, p1

    .line 294
    .line 295
    .line 296
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/NVImageView;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V

    .line 297
    .line 298
    goto/16 :goto_4

    .line 299
    .line 300
    :cond_8
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->hasGroundingColor:Z

    .line 301
    .line 302
    if-eqz v0, :cond_9

    .line 303
    .line 304
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    .line 305
    int-to-float v1, v11

    .line 306
    .line 307
    iget v2, v6, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 308
    .line 309
    .line 310
    invoke-direct {p0, v7, v0, v1, v2}, Lcom/narvii/widget/NVImageView;->drawGroundingColor(Landroid/graphics/Canvas;Landroid/graphics/RectF;FI)V

    .line 311
    .line 312
    .line 313
    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 314
    .line 315
    goto/16 :goto_4

    .line 316
    .line 317
    :cond_a
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 321
    .line 322
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 326
    .line 327
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 331
    .line 332
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 333
    .line 334
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 338
    .line 339
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->monochrome:Z

    .line 340
    .line 341
    if-eqz v0, :cond_b

    .line 342
    .line 343
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 344
    .line 345
    .line 346
    invoke-direct {p0}, Lcom/narvii/widget/NVImageView;->getMonochromeFilter()Landroid/graphics/ColorFilter;

    .line 347
    move-result-object v2

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 351
    goto :goto_1

    .line 352
    .line 353
    :cond_b
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 357
    .line 358
    .line 359
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 360
    move-result v0

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 364
    move-result v2

    .line 365
    .line 366
    mul-int v3, v0, v10

    .line 367
    .line 368
    mul-int v4, v9, v2

    .line 369
    .line 370
    const/high16 v5, 0x3f000000    # 0.5f

    .line 371
    .line 372
    if-le v3, v4, :cond_c

    .line 373
    int-to-float v3, v10

    .line 374
    int-to-float v2, v2

    .line 375
    div-float/2addr v3, v2

    .line 376
    int-to-float v2, v9

    .line 377
    int-to-float v0, v0

    .line 378
    mul-float/2addr v0, v3

    .line 379
    sub-float/2addr v2, v0

    .line 380
    mul-float/2addr v2, v5

    .line 381
    move v0, v13

    .line 382
    goto :goto_2

    .line 383
    :cond_c
    int-to-float v3, v9

    .line 384
    int-to-float v0, v0

    .line 385
    div-float/2addr v3, v0

    .line 386
    int-to-float v0, v10

    .line 387
    int-to-float v2, v2

    .line 388
    mul-float/2addr v2, v3

    .line 389
    sub-float/2addr v0, v2

    .line 390
    mul-float/2addr v0, v5

    .line 391
    move v2, v13

    .line 392
    .line 393
    :goto_2
    iget-object v4, v6, Lcom/narvii/widget/NVImageView;->matrix:Landroid/graphics/Matrix;

    .line 394
    .line 395
    if-nez v4, :cond_d

    .line 396
    .line 397
    new-instance v4, Landroid/graphics/Matrix;

    .line 398
    .line 399
    .line 400
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 401
    .line 402
    iput-object v4, v6, Lcom/narvii/widget/NVImageView;->matrix:Landroid/graphics/Matrix;

    .line 403
    .line 404
    :cond_d
    iget-object v4, v6, Lcom/narvii/widget/NVImageView;->matrix:Landroid/graphics/Matrix;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 408
    .line 409
    iget-object v3, v6, Lcom/narvii/widget/NVImageView;->matrix:Landroid/graphics/Matrix;

    .line 410
    add-float/2addr v2, v5

    .line 411
    float-to-int v2, v2

    .line 412
    int-to-float v2, v2

    .line 413
    add-float/2addr v0, v5

    .line 414
    float-to-int v0, v0

    .line 415
    int-to-float v0, v0

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 419
    .line 420
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 421
    .line 422
    if-eqz v0, :cond_f

    .line 423
    .line 424
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->bitmapRef:Ljava/lang/ref/WeakReference;

    .line 425
    .line 426
    if-nez v0, :cond_e

    .line 427
    move-object v0, v12

    .line 428
    goto :goto_3

    .line 429
    .line 430
    .line 431
    :cond_e
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 432
    move-result-object v0

    .line 433
    .line 434
    check-cast v0, Landroid/graphics/Bitmap;

    .line 435
    .line 436
    :goto_3
    if-eq v0, v1, :cond_f

    .line 437
    .line 438
    iput-object v12, v6, Lcom/narvii/widget/NVImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 439
    .line 440
    :cond_f
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 441
    .line 442
    if-nez v0, :cond_10

    .line 443
    .line 444
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 445
    .line 446
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 447
    .line 448
    .line 449
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 450
    .line 451
    iput-object v0, v6, Lcom/narvii/widget/NVImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 452
    .line 453
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 454
    .line 455
    .line 456
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 457
    .line 458
    iput-object v0, v6, Lcom/narvii/widget/NVImageView;->bitmapRef:Ljava/lang/ref/WeakReference;

    .line 459
    .line 460
    :cond_10
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 461
    .line 462
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->matrix:Landroid/graphics/Matrix;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 466
    .line 467
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 468
    .line 469
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 473
    .line 474
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    .line 475
    .line 476
    iput v13, v0, Landroid/graphics/RectF;->left:F

    .line 477
    .line 478
    iput v13, v0, Landroid/graphics/RectF;->top:F

    .line 479
    int-to-float v1, v9

    .line 480
    .line 481
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 482
    int-to-float v1, v10

    .line 483
    .line 484
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 485
    .line 486
    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 491
    move-result v0

    .line 492
    int-to-float v0, v0

    .line 493
    .line 494
    .line 495
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 496
    move-result v1

    .line 497
    int-to-float v1, v1

    .line 498
    .line 499
    .line 500
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 501
    .line 502
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    .line 503
    int-to-float v3, v11

    .line 504
    .line 505
    iget v1, v6, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 506
    .line 507
    .line 508
    invoke-direct {p0, v7, v0, v3, v1}, Lcom/narvii/widget/NVImageView;->drawGroundingColor(Landroid/graphics/Canvas;Landroid/graphics/RectF;FI)V

    .line 509
    .line 510
    iget-object v2, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    .line 511
    .line 512
    iget v4, v6, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 513
    .line 514
    iget-object v5, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 515
    move-object v0, p0

    .line 516
    .line 517
    move-object/from16 v1, p1

    .line 518
    .line 519
    .line 520
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/NVImageView;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 524
    .line 525
    :goto_4
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 526
    .line 527
    if-nez v0, :cond_19

    .line 528
    .line 529
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 530
    .line 531
    .line 532
    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->isVideo(Lcom/narvii/model/Media;)Z

    .line 533
    move-result v0

    .line 534
    .line 535
    if-nez v0, :cond_11

    .line 536
    .line 537
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->forceShowPlayButton:Z

    .line 538
    .line 539
    if-eqz v0, :cond_19

    .line 540
    .line 541
    :cond_11
    if-lez v9, :cond_19

    .line 542
    .line 543
    if-lez v10, :cond_19

    .line 544
    .line 545
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytBgPaint:Landroid/graphics/Paint;

    .line 546
    .line 547
    if-nez v0, :cond_12

    .line 548
    .line 549
    new-instance v0, Landroid/graphics/Paint;

    .line 550
    .line 551
    .line 552
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 553
    .line 554
    sput-object v0, Lcom/narvii/widget/NVImageView;->ytBgPaint:Landroid/graphics/Paint;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 558
    .line 559
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytBgPaint:Landroid/graphics/Paint;

    .line 560
    .line 561
    const-string v1, "#22000000"

    .line 562
    .line 563
    .line 564
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 565
    move-result v1

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 569
    .line 570
    :cond_12
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytBgMaskRect:Landroid/graphics/RectF;

    .line 571
    .line 572
    if-nez v0, :cond_13

    .line 573
    .line 574
    new-instance v0, Landroid/graphics/RectF;

    .line 575
    .line 576
    .line 577
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 578
    .line 579
    sput-object v0, Lcom/narvii/widget/NVImageView;->ytBgMaskRect:Landroid/graphics/RectF;

    .line 580
    .line 581
    :cond_13
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytBgMaskRect:Landroid/graphics/RectF;

    .line 582
    .line 583
    .line 584
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 585
    move-result v1

    .line 586
    int-to-float v1, v1

    .line 587
    .line 588
    .line 589
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 590
    move-result v2

    .line 591
    int-to-float v2, v2

    .line 592
    .line 593
    .line 594
    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 595
    .line 596
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytBgMaskRect:Landroid/graphics/RectF;

    .line 597
    .line 598
    iget v1, v6, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 599
    int-to-float v2, v1

    .line 600
    int-to-float v1, v1

    .line 601
    .line 602
    sget-object v3, Lcom/narvii/widget/NVImageView;->ytBgPaint:Landroid/graphics/Paint;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 606
    .line 607
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytPaint:Landroid/graphics/Paint;

    .line 608
    .line 609
    if-nez v0, :cond_14

    .line 610
    .line 611
    new-instance v0, Landroid/graphics/Paint;

    .line 612
    .line 613
    .line 614
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 615
    .line 616
    sput-object v0, Lcom/narvii/widget/NVImageView;->ytPaint:Landroid/graphics/Paint;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 620
    .line 621
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytPaint:Landroid/graphics/Paint;

    .line 622
    const/4 v1, 0x2

    .line 623
    .line 624
    .line 625
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 629
    move-result-object v0

    .line 630
    .line 631
    sget v1, Lcom/narvii/lib/R$string;->fa_play:I

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 635
    move-result-object v0

    .line 636
    .line 637
    sput-object v0, Lcom/narvii/widget/NVImageView;->ytSymbol:Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 641
    move-result-object v0

    .line 642
    .line 643
    sget v1, Lcom/narvii/lib/R$dimen;->video_play_min_size:I

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 647
    move-result v0

    .line 648
    .line 649
    sput v0, Lcom/narvii/widget/NVImageView;->ytMinSize:I

    .line 650
    .line 651
    .line 652
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 653
    move-result-object v0

    .line 654
    .line 655
    sget v1, Lcom/narvii/lib/R$dimen;->video_play_max_size:I

    .line 656
    .line 657
    .line 658
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 659
    move-result v0

    .line 660
    .line 661
    sput v0, Lcom/narvii/widget/NVImageView;->ytMaxSize:I

    .line 662
    .line 663
    :cond_14
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->ytBitmap:Landroid/graphics/Bitmap;

    .line 664
    .line 665
    if-nez v0, :cond_15

    .line 666
    .line 667
    .line 668
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 669
    move-result-object v0

    .line 670
    .line 671
    sget v1, Lcom/narvii/lib/R$drawable;->ic_sr_media_play:I

    .line 672
    .line 673
    .line 674
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 675
    move-result-object v0

    .line 676
    .line 677
    iput-object v0, v6, Lcom/narvii/widget/NVImageView;->ytBitmap:Landroid/graphics/Bitmap;

    .line 678
    .line 679
    new-instance v0, Landroid/graphics/RectF;

    .line 680
    .line 681
    .line 682
    invoke-direct {v0, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 683
    .line 684
    iput-object v0, v6, Lcom/narvii/widget/NVImageView;->ytRectF:Landroid/graphics/RectF;

    .line 685
    .line 686
    :cond_15
    if-ge v10, v9, :cond_16

    .line 687
    move v0, v10

    .line 688
    goto :goto_5

    .line 689
    :cond_16
    move v0, v9

    .line 690
    :goto_5
    int-to-float v0, v0

    .line 691
    .line 692
    const/high16 v1, 0x3f400000    # 0.75f

    .line 693
    mul-float/2addr v0, v1

    .line 694
    float-to-int v0, v0

    .line 695
    .line 696
    sget v1, Lcom/narvii/widget/NVImageView;->ytMinSize:I

    .line 697
    .line 698
    if-ge v0, v1, :cond_17

    .line 699
    move v0, v1

    .line 700
    .line 701
    :cond_17
    sget v1, Lcom/narvii/widget/NVImageView;->ytMaxSize:I

    .line 702
    .line 703
    if-le v0, v1, :cond_18

    .line 704
    move v0, v1

    .line 705
    .line 706
    :cond_18
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->ytRectF:Landroid/graphics/RectF;

    .line 707
    .line 708
    sub-int v2, v9, v0

    .line 709
    shr-int/2addr v2, v8

    .line 710
    int-to-float v2, v2

    .line 711
    .line 712
    sub-int v3, v10, v0

    .line 713
    shr-int/2addr v3, v8

    .line 714
    int-to-float v3, v3

    .line 715
    .line 716
    add-int v4, v9, v0

    .line 717
    shr-int/2addr v4, v8

    .line 718
    int-to-float v4, v4

    .line 719
    add-int/2addr v0, v10

    .line 720
    shr-int/2addr v0, v8

    .line 721
    int-to-float v0, v0

    .line 722
    .line 723
    .line 724
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 725
    .line 726
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->ytBitmap:Landroid/graphics/Bitmap;

    .line 727
    .line 728
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->ytRectF:Landroid/graphics/RectF;

    .line 729
    .line 730
    sget-object v2, Lcom/narvii/widget/NVImageView;->ytPaint:Landroid/graphics/Paint;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v7, v0, v12, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 734
    .line 735
    :cond_19
    iget v0, v6, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 736
    .line 737
    cmpl-float v0, v0, v13

    .line 738
    .line 739
    const/high16 v14, 0x40000000    # 2.0f

    .line 740
    .line 741
    if-lez v0, :cond_1b

    .line 742
    .line 743
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 747
    .line 748
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 752
    .line 753
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 754
    .line 755
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 759
    .line 760
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 761
    .line 762
    iget v1, v6, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 763
    .line 764
    .line 765
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 766
    .line 767
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 768
    .line 769
    iget v1, v6, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 770
    .line 771
    .line 772
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 773
    .line 774
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 778
    .line 779
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 783
    .line 784
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->fixStroke:Z

    .line 785
    .line 786
    if-eqz v0, :cond_1a

    .line 787
    .line 788
    iget v0, v6, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 789
    div-float/2addr v0, v14

    .line 790
    goto :goto_6

    .line 791
    :cond_1a
    move v0, v13

    .line 792
    .line 793
    :goto_6
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    .line 794
    .line 795
    .line 796
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 797
    move-result v2

    .line 798
    int-to-float v2, v2

    .line 799
    add-float/2addr v2, v0

    .line 800
    .line 801
    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 802
    .line 803
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    .line 804
    .line 805
    .line 806
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 807
    move-result v2

    .line 808
    int-to-float v2, v2

    .line 809
    add-float/2addr v2, v0

    .line 810
    .line 811
    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 812
    .line 813
    iget-object v2, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    .line 814
    .line 815
    iget v1, v2, Landroid/graphics/RectF;->left:F

    .line 816
    int-to-float v3, v9

    .line 817
    add-float/2addr v1, v3

    .line 818
    mul-float/2addr v0, v14

    .line 819
    sub-float/2addr v1, v0

    .line 820
    .line 821
    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 822
    .line 823
    iget v1, v2, Landroid/graphics/RectF;->top:F

    .line 824
    int-to-float v3, v10

    .line 825
    add-float/2addr v1, v3

    .line 826
    sub-float/2addr v1, v0

    .line 827
    .line 828
    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 829
    int-to-float v3, v11

    .line 830
    .line 831
    iget v4, v6, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 832
    .line 833
    iget-object v5, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 834
    move-object v0, p0

    .line 835
    .line 836
    move-object/from16 v1, p1

    .line 837
    .line 838
    .line 839
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/NVImageView;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V

    .line 840
    .line 841
    .line 842
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 843
    move-result-object v0

    .line 844
    array-length v1, v0

    .line 845
    const/4 v2, 0x0

    .line 846
    move v3, v2

    .line 847
    .line 848
    :goto_7
    if-ge v2, v1, :cond_1d

    .line 849
    .line 850
    aget v4, v0, v2

    .line 851
    .line 852
    .line 853
    const v5, 0x10100a7

    .line 854
    .line 855
    if-ne v4, v5, :cond_1c

    .line 856
    move v3, v8

    .line 857
    .line 858
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    .line 859
    goto :goto_7

    .line 860
    .line 861
    :cond_1d
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->showPressedMask:Z

    .line 862
    .line 863
    if-eqz v0, :cond_22

    .line 864
    .line 865
    if-eqz v3, :cond_22

    .line 866
    .line 867
    sget-object v0, Lcom/narvii/widget/NVImageView;->pressedMaskPaint:Landroid/graphics/Paint;

    .line 868
    .line 869
    if-nez v0, :cond_1e

    .line 870
    .line 871
    .line 872
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 873
    move-result-object v0

    .line 874
    .line 875
    sget v1, Lcom/narvii/lib/R$color;->mask_pressed:I

    .line 876
    .line 877
    .line 878
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 879
    move-result v0

    .line 880
    .line 881
    sput v0, Lcom/narvii/widget/NVImageView;->pressedMaskColor:I

    .line 882
    .line 883
    new-instance v0, Landroid/graphics/Paint;

    .line 884
    .line 885
    .line 886
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 887
    .line 888
    sput-object v0, Lcom/narvii/widget/NVImageView;->pressedMaskPaint:Landroid/graphics/Paint;

    .line 889
    .line 890
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 891
    .line 892
    .line 893
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 894
    .line 895
    sget-object v0, Lcom/narvii/widget/NVImageView;->pressedMaskPaint:Landroid/graphics/Paint;

    .line 896
    .line 897
    sget v1, Lcom/narvii/widget/NVImageView;->pressedMaskColor:I

    .line 898
    .line 899
    .line 900
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 901
    .line 902
    .line 903
    :cond_1e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 904
    move-result v0

    .line 905
    .line 906
    .line 907
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 908
    move-result v1

    .line 909
    .line 910
    if-lez v11, :cond_21

    .line 911
    .line 912
    iget-object v2, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    .line 913
    int-to-float v3, v0

    .line 914
    .line 915
    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 916
    int-to-float v4, v1

    .line 917
    .line 918
    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 919
    add-int/2addr v0, v9

    .line 920
    int-to-float v0, v0

    .line 921
    .line 922
    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 923
    add-int/2addr v1, v10

    .line 924
    int-to-float v1, v1

    .line 925
    .line 926
    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 927
    .line 928
    iget-boolean v5, v6, Lcom/narvii/widget/NVImageView;->fixStroke:Z

    .line 929
    .line 930
    if-eqz v5, :cond_1f

    .line 931
    move v5, v13

    .line 932
    goto :goto_8

    .line 933
    .line 934
    :cond_1f
    iget v5, v6, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 935
    div-float/2addr v5, v14

    .line 936
    .line 937
    :goto_8
    iget v8, v6, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 938
    .line 939
    cmpl-float v8, v8, v13

    .line 940
    .line 941
    if-lez v8, :cond_20

    .line 942
    sub-float/2addr v3, v5

    .line 943
    .line 944
    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 945
    add-float/2addr v0, v5

    .line 946
    .line 947
    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 948
    sub-float/2addr v4, v5

    .line 949
    .line 950
    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 951
    add-float/2addr v1, v5

    .line 952
    .line 953
    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 954
    int-to-float v0, v11

    .line 955
    add-float/2addr v0, v5

    .line 956
    float-to-int v11, v0

    .line 957
    :cond_20
    int-to-float v3, v11

    .line 958
    .line 959
    iget v4, v6, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 960
    .line 961
    sget-object v5, Lcom/narvii/widget/NVImageView;->pressedMaskPaint:Landroid/graphics/Paint;

    .line 962
    move-object v0, p0

    .line 963
    .line 964
    move-object/from16 v1, p1

    .line 965
    .line 966
    .line 967
    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/NVImageView;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V

    .line 968
    goto :goto_9

    .line 969
    :cond_21
    int-to-float v2, v0

    .line 970
    int-to-float v3, v1

    .line 971
    add-int/2addr v0, v9

    .line 972
    int-to-float v4, v0

    .line 973
    add-int/2addr v1, v10

    .line 974
    int-to-float v5, v1

    .line 975
    .line 976
    sget-object v8, Lcom/narvii/widget/NVImageView;->pressedMaskPaint:Landroid/graphics/Paint;

    .line 977
    .line 978
    move-object/from16 v0, p1

    .line 979
    move v1, v2

    .line 980
    move v2, v3

    .line 981
    move v3, v4

    .line 982
    move v4, v5

    .line 983
    move-object v5, v8

    .line 984
    .line 985
    .line 986
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 987
    :cond_22
    :goto_9
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->onErrorRunnable:Ljava/lang/Runnable;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->require()Z

    .line 15
    .line 16
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    iget p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    :cond_1
    const/4 p1, 0x3

    .line 34
    const/4 p2, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    .line 38
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 4
    .line 5
    iget p1, p0, Lcom/narvii/widget/NVImageView;->maxHeightPercentage:F

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    cmpl-float p2, p1, p2

    .line 9
    .line 10
    if-lez p2, :cond_0

    .line 11
    .line 12
    const/high16 p2, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpg-float p1, p1, p2

    .line 15
    .line 16
    if-gez p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->getFixedHeight(I)I

    .line 24
    move-result p2

    .line 25
    .line 26
    if-eq p1, p2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 34
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 22
    const/4 p1, 0x4

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->onResponseRunnable:Ljava/lang/Runnable;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    .line 10
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->visible:Z

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->require()Z

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    if-nez p1, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 36
    move-result v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 40
    move-result v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/narvii/widget/NVImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->discard()V

    .line 50
    :cond_2
    :goto_1
    return-void
.end method

.method protected require()Z
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    .line 8
    const/4 v0, 0x3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    .line 12
    return v1

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_8

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v0, :cond_8

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, v1}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 30
    move-result v3

    .line 31
    sub-int/2addr v0, v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 35
    move-result v3

    .line 36
    sub-int/2addr v0, v3

    .line 37
    .line 38
    if-gez v0, :cond_1

    .line 39
    move v6, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v6, v0

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    move-result v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 49
    move-result v3

    .line 50
    sub-int/2addr v0, v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 54
    move-result v3

    .line 55
    sub-int/2addr v0, v3

    .line 56
    .line 57
    if-gez v0, :cond_2

    .line 58
    move v7, v2

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v7, v0

    .line 61
    .line 62
    :goto_1
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 63
    .line 64
    iget-boolean v3, p0, Lcom/narvii/widget/NVImageView;->visible:Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0, v3, v6, v7}, Lcom/narvii/widget/NVImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    if-nez v4, :cond_3

    .line 71
    return v2

    .line 72
    .line 73
    :cond_3
    iput-object v4, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 74
    .line 75
    iput-boolean v2, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    .line 76
    .line 77
    .line 78
    invoke-static {v4}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    .line 79
    move-result v0

    .line 80
    const/4 v2, 0x0

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 85
    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    new-instance v0, Lcom/narvii/widget/NVImageView$DrawableListener;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, p0, v2}, Lcom/narvii/widget/NVImageView$DrawableListener;-><init>(Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/i;)V

    .line 92
    .line 93
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    iget-object v2, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v4, v2}, Lcom/narvii/util/drawables/gif/GifLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 103
    goto :goto_2

    .line 104
    .line 105
    .line 106
    :cond_5
    invoke-static {v4}, Lcom/narvii/widget/NVImageView;->isWebP(Ljava/lang/String;)Z

    .line 107
    move-result v0

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 112
    .line 113
    if-nez v0, :cond_6

    .line 114
    .line 115
    new-instance v0, Lcom/narvii/widget/NVImageView$DrawableListener;

    .line 116
    .line 117
    .line 118
    invoke-direct {v0, p0, v2}, Lcom/narvii/widget/NVImageView$DrawableListener;-><init>(Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/i;)V

    .line 119
    .line 120
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 121
    .line 122
    .line 123
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 124
    move-result-object v3

    .line 125
    .line 126
    iget-object v5, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 127
    .line 128
    iget-boolean v8, p0, Lcom/narvii/widget/NVImageView;->makeWebpRtl:Z

    .line 129
    .line 130
    iget v9, p0, Lcom/narvii/widget/NVImageView;->loopCount:I

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {v3 .. v9}, Lcom/narvii/util/drawables/webp/WebPLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;IIZI)V

    .line 134
    goto :goto_2

    .line 135
    .line 136
    .line 137
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v6}, Lcom/narvii/widget/NVImageView;->getImageRequestWidth(I)I

    .line 142
    move-result v2

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v7}, Lcom/narvii/widget/NVImageView;->getImageRequestHeight(I)I

    .line 146
    move-result v3

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v4, p0, v2, v3}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 153
    :goto_2
    return v1

    .line 154
    :cond_8
    return v2
.end method

.method public setCornerMask(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setFixStroke(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->fixStroke:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setGroundingColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/NVImageView;->groundingColor:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/widget/NVImageView;->innerSetGroundingColor()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->discard()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method protected setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1
    sget-object v2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->images:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    invoke-virtual {v2, v1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->add(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p2, v1}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ne p2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/narvii/widget/NVImageView;->dispatchImageChanged(ILcom/narvii/model/Media;)V

    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    :cond_0
    const/4 v0, 0x3

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/narvii/widget/NVImageView;->status:I

    .line 24
    .line 25
    :goto_0
    iput v1, p0, Lcom/narvii/widget/NVImageView;->status:I

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    .line 31
    return v1

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->discard()V

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 37
    const/4 p1, 0x0

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->require()Z

    .line 45
    const/4 p1, 0x1

    .line 46
    return p1
.end method

.method protected setImageStatus(IZ)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVImageView;->status:I

    .line 3
    .line 4
    if-eq p1, v0, :cond_10

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/widget/NVImageView;->status:I

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    const/high16 v1, -0x1000000

    .line 10
    .line 11
    if-eq p1, v0, :cond_9

    .line 12
    const/4 v0, 0x2

    .line 13
    .line 14
    if-eq p1, v0, :cond_5

    .line 15
    const/4 v0, 0x3

    .line 16
    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    const/4 v0, 0x4

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 25
    .line 26
    if-eqz v0, :cond_f

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 49
    .line 50
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    .line 55
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->isVideo(Lcom/narvii/model/Media;)Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    iget v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->safeGetDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    .line 91
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_5
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 99
    .line 100
    if-nez v0, :cond_6

    .line 101
    .line 102
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 103
    .line 104
    if-nez v0, :cond_6

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 111
    .line 112
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 116
    .line 117
    :cond_6
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 118
    .line 119
    if-nez v0, :cond_7

    .line 120
    .line 121
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->isVideo(Lcom/narvii/model/Media;)Z

    .line 125
    move-result v0

    .line 126
    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 130
    .line 131
    .line 132
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    goto :goto_0

    .line 137
    .line 138
    :cond_7
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    .line 140
    if-nez v0, :cond_8

    .line 141
    .line 142
    iget v0, p0, Lcom/narvii/widget/NVImageView;->errorDrawableId:I

    .line 143
    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->safeGetDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    :cond_8
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    .line 154
    if-eqz v0, :cond_f

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    goto :goto_0

    .line 159
    .line 160
    :cond_9
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 161
    .line 162
    if-nez v0, :cond_a

    .line 163
    .line 164
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 165
    .line 166
    if-nez v0, :cond_a

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 173
    .line 174
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 178
    .line 179
    :cond_a
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 180
    .line 181
    if-nez v0, :cond_b

    .line 182
    .line 183
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 184
    .line 185
    .line 186
    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->isVideo(Lcom/narvii/model/Media;)Z

    .line 187
    move-result v0

    .line 188
    .line 189
    if-eqz v0, :cond_b

    .line 190
    .line 191
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 192
    .line 193
    .line 194
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    goto :goto_0

    .line 199
    .line 200
    :cond_b
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 201
    .line 202
    if-nez v0, :cond_c

    .line 203
    .line 204
    iget v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawableId:I

    .line 205
    .line 206
    if-eqz v0, :cond_c

    .line 207
    .line 208
    .line 209
    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->safeGetDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 210
    move-result-object v0

    .line 211
    .line 212
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    .line 214
    :cond_c
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 215
    .line 216
    if-eqz v0, :cond_d

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    goto :goto_0

    .line 221
    .line 222
    :cond_d
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 223
    .line 224
    if-nez v0, :cond_e

    .line 225
    .line 226
    iget v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    .line 227
    .line 228
    if-eqz v0, :cond_e

    .line 229
    .line 230
    .line 231
    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->safeGetDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 232
    move-result-object v0

    .line 233
    .line 234
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 235
    .line 236
    :cond_e
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    .line 241
    :cond_f
    :goto_0
    if-eqz p2, :cond_10

    .line 242
    .line 243
    iget-object p2, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->dispatchImageChanged(ILcom/narvii/model/Media;)V

    .line 247
    :cond_10
    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lcom/narvii/model/Media;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 18
    .line 19
    iput-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setMonochrome(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->monochrome:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->monochrome:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    :cond_0
    return-void
.end method

.method public setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->listener:Lcom/narvii/widget/NVImageView$OnImageChangedListener;

    return-void
.end method

.method public setShowPressedMask(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->showPressedMask:Z

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method
