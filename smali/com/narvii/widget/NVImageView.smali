.class public Lcom/narvii/widget/NVImageView;
.super Landroid/widget/ImageView;
.source "NVImageView.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVImageView$DrawableListener;,
        Lcom/narvii/widget/NVImageView$OnShareButtonClickedListener;,
        Lcom/narvii/widget/NVImageView$OnImageChangedListener;
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

.field public static final TYPE_STORY_VIDEO:Ljava/lang/String; = "story"

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

    .line 157
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 165
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/narvii/widget/NVImageView;->makeWebpRtl:Z

    const/4 v1, 0x0

    .line 139
    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->groundingColorPaint:Landroid/graphics/Paint;

    .line 606
    new-instance v1, Lcom/narvii/widget/NVImageView$1;

    invoke-direct {v1, p0}, Lcom/narvii/widget/NVImageView$1;-><init>(Lcom/narvii/widget/NVImageView;)V

    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->onResponseRunnable:Ljava/lang/Runnable;

    .line 622
    new-instance v1, Lcom/narvii/widget/NVImageView$2;

    invoke-direct {v1, p0}, Lcom/narvii/widget/NVImageView$2;-><init>(Lcom/narvii/widget/NVImageView;)V

    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->onErrorRunnable:Ljava/lang/Runnable;

    .line 167
    sget v1, Lcom/narvii/widget/NVImageView;->defaultShadowColor:I

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$color;->shadow:I

    .line 169
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/narvii/widget/NVImageView;->defaultShadowColor:I

    .line 172
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    .line 173
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    .line 174
    iget-object v1, p0, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    sget-object v1, Lcom/narvii/lib/R$styleable;->NVImageView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 178
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_cornerRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 180
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_cornerMask:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 181
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_monochrome:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/NVImageView;->monochrome:Z

    .line 182
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_strokeWidth:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 183
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_strokeColor:I

    sget p3, Lcom/narvii/widget/NVImageView;->defaultShadowColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 184
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_groundingColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->groundingColor:I

    .line 185
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_maxHeightPercentage:I

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->maxHeightPercentage:F

    .line 186
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_showPressedMask:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/NVImageView;->showPressedMask:Z

    .line 187
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_loopCount:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->loopCount:I

    .line 189
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_defaultDrawable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    .line 191
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_loadingDrawable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->loadingDrawableId:I

    .line 193
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_errorDrawable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVImageView;->errorDrawableId:I

    .line 195
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_scalePlaceholder:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 197
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_hidePlayButton:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 199
    sget p2, Lcom/narvii/lib/R$styleable;->NVImageView_imageType:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    invoke-direct {p0}, Lcom/narvii/widget/NVImageView;->innerSetGroundingColor()V

    .line 204
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/narvii/widget/NVImageView;->visible:Z

    return-void
.end method

.method private drawGroundingColor(Landroid/graphics/Canvas;Landroid/graphics/RectF;FI)V
    .locals 7

    .line 895
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->hasGroundingColor:Z

    if-nez v0, :cond_0

    return-void

    .line 898
    :cond_0
    iget-object v6, p0, Lcom/narvii/widget/NVImageView;->groundingColorPaint:Landroid/graphics/Paint;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/narvii/widget/NVImageView;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRoundPath(Landroid/graphics/Path;Landroid/graphics/RectF;FI)V
    .locals 5

    .line 922
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    const/16 v1, 0x8

    if-nez v0, :cond_0

    new-array v0, v1, [F

    .line 923
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    :cond_0
    and-int/lit8 v0, p4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    aput v4, v0, v2

    .line 927
    aput v4, v0, v3

    goto :goto_0

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    aput p3, v0, v2

    .line 930
    aput p3, v0, v3

    :goto_0
    and-int/lit8 v0, p4, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 933
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    aput v4, v0, v3

    .line 934
    aput v4, v0, v2

    goto :goto_1

    .line 936
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    aput p3, v0, v3

    .line 937
    aput p3, v0, v2

    :goto_1
    and-int/lit8 v0, p4, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eqz v0, :cond_3

    .line 940
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    aput v4, v0, v3

    .line 941
    aput v4, v0, v2

    goto :goto_2

    .line 943
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    aput p3, v0, v3

    .line 944
    aput p3, v0, v2

    :goto_2
    and-int/2addr p4, v1

    const/4 v0, 0x7

    const/4 v1, 0x6

    if-eqz p4, :cond_4

    .line 947
    iget-object p3, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    aput v4, p3, v1

    .line 948
    aput v4, p3, v0

    goto :goto_3

    .line 950
    :cond_4
    iget-object p4, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    aput p3, p4, v1

    .line 951
    aput p3, p4, v0

    .line 953
    :goto_3
    iget-object p3, p0, Lcom/narvii/widget/NVImageView;->radii:[F

    sget-object p4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-lez v1, :cond_0

    if-nez p4, :cond_0

    .line 903
    invoke-virtual {p1, p2, p3, p3, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    .line 905
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->path:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 906
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->path:Landroid/graphics/Path;

    goto :goto_0

    .line 908
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 910
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->path:Landroid/graphics/Path;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/narvii/widget/NVImageView;->drawRoundPath(Landroid/graphics/Path;Landroid/graphics/RectF;FI)V

    .line 911
    iget-object p2, p0, Lcom/narvii/widget/NVImageView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 913
    :cond_2
    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

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

    .line 1054
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x300

    const-string v3, "128"

    const/16 v4, 0xc0

    const/16 v5, 0x1e0

    const-string v6, "hq"

    if-eqz v1, :cond_8

    .line 1055
    invoke-static {p0}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "68"

    const/16 p3, 0x60

    if-eqz p1, :cond_4

    if-le v0, v5, :cond_1

    .line 1061
    invoke-static {p0, v6}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-le v0, v4, :cond_2

    return-object p0

    :cond_2
    if-le v0, p3, :cond_3

    .line 1066
    invoke-static {p0, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1068
    :cond_3
    invoke-static {p0, p2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-le v0, v2, :cond_5

    .line 1076
    invoke-static {p0, v6}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-le v0, v4, :cond_6

    return-object p0

    :cond_6
    if-le v0, p3, :cond_7

    .line 1081
    invoke-static {p0, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1083
    :cond_7
    invoke-static {p0, p2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v1, "chat-cover"

    .line 1086
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1087
    invoke-static {p0}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-le v0, v4, :cond_9

    return-object p0

    .line 1093
    :cond_9
    invoke-static {p0, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    if-le v0, v4, :cond_b

    return-object p0

    .line 1101
    :cond_b
    invoke-static {p0, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-string v1, "chat-message"

    .line 1104
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1105
    invoke-static {p0}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    if-le v0, v5, :cond_d

    .line 1109
    invoke-static {p0, v6}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_d
    return-object p0

    :cond_e
    if-le v0, v2, :cond_f

    .line 1117
    invoke-static {p0, v6}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_f
    return-object p0

    :cond_10
    const-string v1, "chat-background"

    .line 1122
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object p0

    :cond_11
    const-string v1, "community-icon"

    .line 1124
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "120"

    if-eqz v1, :cond_14

    const/16 p1, 0xb4

    if-gt v0, p1, :cond_12

    .line 1129
    invoke-static {p0, v2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const/16 p1, 0x10e

    if-gt v0, p1, :cond_13

    const-string p1, "180"

    .line 1131
    invoke-static {p0, p1}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_13
    return-object p0

    :cond_14
    const-string v1, "community-launch-image"

    .line 1135
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "188"

    const-string v4, "375"

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

    .line 1149
    :cond_16
    invoke-static {p0, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1147
    :cond_17
    :goto_1
    invoke-static {p0, v4}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_18
    :goto_2
    return-object p0

    :cond_19
    const-string p2, "fullscreen-background-image"

    .line 1151
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    const/4 p1, 0x0

    .line 1154
    sget p2, Lcom/narvii/widget/NVImageView;->displaySize:I

    if-nez p2, :cond_1a

    .line 1155
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 1156
    iget p3, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sput p2, Lcom/narvii/widget/NVImageView;->displaySize:I

    .line 1159
    :cond_1a
    sget p2, Lcom/narvii/widget/NVImageView;->memoryClass:I

    if-nez p2, :cond_1b

    .line 1160
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p2

    const-string p3, "activity"

    invoke-virtual {p2, p3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    .line 1161
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p2

    sput p2, Lcom/narvii/widget/NVImageView;->memoryClass:I

    .line 1164
    :cond_1b
    sget p2, Lcom/narvii/widget/NVImageView;->displaySize:I

    const/16 p3, 0x190

    if-gt p2, p3, :cond_1c

    goto :goto_3

    :cond_1c
    const/16 p3, 0x320

    if-gt p2, p3, :cond_1d

    .line 1167
    sget p1, Lcom/narvii/widget/NVImageView;->memoryClass:I

    const/16 p2, 0x30

    if-ge p1, p2, :cond_1e

    goto :goto_3

    .line 1172
    :cond_1d
    sget p2, Lcom/narvii/widget/NVImageView;->memoryClass:I

    const/16 p3, 0x40

    if-ge p2, p3, :cond_1f

    :cond_1e
    move-object v3, v4

    goto :goto_3

    :cond_1f
    move-object v3, p1

    :goto_3
    if-eqz v3, :cond_20

    .line 1176
    invoke-static {p0, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_20
    return-object p0

    :cond_21
    const-string/jumbo p2, "shared-folder-image"

    .line 1180
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 1181
    invoke-static {p0}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "280"

    if-eqz p1, :cond_24

    if-le v0, v5, :cond_22

    .line 1186
    invoke-static {p0, v6}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const/16 p1, 0x12c

    if-ge v0, p1, :cond_23

    .line 1188
    invoke-static {p0, p2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_23
    return-object p0

    :cond_24
    const/16 p1, 0x4b0

    if-le v0, p1, :cond_25

    .line 1197
    invoke-static {p0, v6}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    if-ge v0, v5, :cond_26

    .line 1199
    invoke-static {p0, p2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_26
    return-object p0

    :cond_27
    const-string/jumbo p2, "sticker"

    .line 1204
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    const/16 p1, 0x64

    if-gt v0, p1, :cond_28

    const-string p1, "50"

    .line 1209
    invoke-static {p0, p1}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    const/16 p1, 0xc8

    if-gt v0, p1, :cond_29

    .line 1211
    invoke-static {p0, v2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_29
    return-object p0

    :cond_2a
    const-string/jumbo p2, "story-cover"

    .line 1215
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    const/16 p1, 0x44c

    if-lt v0, p1, :cond_2b

    .line 1217
    invoke-static {p0, v6}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2b
    return-object p0

    .line 1221
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

    .line 959
    sget-object v0, Lcom/narvii/widget/NVImageView;->monochromeFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_0

    .line 960
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v1, 0x0

    .line 961
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 962
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object v1, Lcom/narvii/widget/NVImageView;->monochromeFilter:Landroid/graphics/ColorFilter;

    .line 964
    :cond_0
    sget-object v0, Lcom/narvii/widget/NVImageView;->monochromeFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method private innerSetGroundingColor()V
    .locals 2

    .line 220
    iget v0, p0, Lcom/narvii/widget/NVImageView;->groundingColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/narvii/widget/NVImageView;->hasGroundingColor:Z

    .line 222
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->groundingColorPaint:Landroid/graphics/Paint;

    .line 223
    iget-object v1, p0, Lcom/narvii/widget/NVImageView;->groundingColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 224
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->groundingColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/NVImageView;->groundingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->groundingColorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method

.method public static isGif(Ljava/lang/String;)Z
    .locals 0

    .line 972
    invoke-static {p0}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isVideo(Lcom/narvii/model/Media;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 891
    iget v0, p1, Lcom/narvii/model/Media;->type:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isWebP(Ljava/lang/String;)Z
    .locals 0

    .line 976
    invoke-static {p0}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "_00."

    .line 1032
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static replaceVideoCoverUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "_raw."

    .line 1041
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private safeGetDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 291
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 293
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected _setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 382
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->bitmapRef:Ljava/lang/ref/WeakReference;

    .line 383
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected discard()V
    .locals 5

    .line 542
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 545
    iput-object v2, p0, Lcom/narvii/widget/NVImageView;->container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 546
    iput-object v2, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 547
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    if-eqz v3, :cond_2

    .line 550
    invoke-static {v0}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    invoke-virtual {v0, v3, v4}, Lcom/narvii/util/drawables/gif/GifLoader;->abort(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 552
    iput-object v2, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 553
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    goto :goto_0

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/widget/NVImageView;->isWebP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    invoke-virtual {v0, v3, v4}, Lcom/narvii/util/drawables/webp/WebPLoader;->abort(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 556
    iput-object v2, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 557
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected dispatchImageChanged(ILcom/narvii/model/Media;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->listener:Lcom/narvii/widget/NVImageView$OnImageChangedListener;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0, p0, p1, p2}, Lcom/narvii/widget/NVImageView$OnImageChangedListener;->onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 634
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 635
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method protected getFixedHeight(I)I
    .locals 2

    .line 231
    iget v0, p0, Lcom/narvii/widget/NVImageView;->maxHeightPercentage:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/narvii/widget/NVImageView;->maxHeightPercentage:F

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    if-le p1, v0, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method public getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;
    .locals 2

    .line 984
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

    const-string v1, "gifLoader"

    if-nez v0, :cond_0

    .line 985
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 987
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

    if-nez v0, :cond_1

    .line 991
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    :cond_1
    return-object v0
.end method

.method public getImageLoader()Lcom/android/volley/toolbox/ImageLoader;
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    const-string v1, "imageLoader"

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader;

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->imageLoader:Lcom/android/volley/toolbox/ImageLoader;

    if-nez v0, :cond_1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to get a thumbImageLoader in context "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader;

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

    .line 251
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    return-object v0
.end method

.method protected getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 0

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    .line 436
    :cond_0
    iget-object p4, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    if-nez p4, :cond_1

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, p4

    .line 437
    :goto_0
    invoke-static {p1}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-static {p1}, Lcom/narvii/widget/NVImageView;->isWebP(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_1

    .line 442
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 443
    invoke-static {p2}, Lcom/narvii/util/YoutubeUtils;->getDefaultYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, p3

    :goto_2
    return-object p1
.end method

.method public getStatus()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/narvii/widget/NVImageView;->status:I

    return v0
.end method

.method public getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;
    .locals 2

    .line 997
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->webpLoader:Lcom/narvii/util/drawables/webp/WebPLoader;

    const-string/jumbo v1, "webpLoader"

    if-nez v0, :cond_0

    .line 998
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader;

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->webpLoader:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->webpLoader:Lcom/narvii/util/drawables/webp/WebPLoader;

    if-nez v0, :cond_1

    .line 1004
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader;

    :cond_1
    return-object v0
.end method

.method public innerSetMeasuredDimension(II)V
    .locals 0

    .line 1248
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public isMonochrome()Z
    .locals 1

    .line 639
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->monochrome:Z

    return v0
.end method

.method public isUrlCached(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 566
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 567
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->isUrlCached(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 572
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 573
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    .line 576
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->isUrlCached(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 579
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/util/image/NVImageLoader;

    if-eqz v1, :cond_5

    .line 580
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    invoke-virtual {v0, p1}, Lcom/narvii/util/image/NVImageLoader;->isUrlCached(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method public makeWebpRtl(Z)V
    .locals 0

    .line 489
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->makeWebpRtl:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 673
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->visible:Z

    const/4 v8, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iput-boolean v8, v6, Lcom/narvii/widget/NVImageView;->visible:Z

    .line 675
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->require()Z

    .line 680
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int v9, v0, v1

    .line 681
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int v10, v0, v1

    .line 682
    div-int/lit8 v0, v9, 0x2

    div-int/lit8 v1, v10, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 683
    iget v1, v6, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 688
    iget v0, v6, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->monochrome:Z

    if-nez v0, :cond_2

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 690
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    .line 691
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 690
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 692
    iget-boolean v1, v6, Lcom/narvii/widget/NVImageView;->hasGroundingColor:Z

    if-eqz v1, :cond_1

    .line 693
    iget v1, v6, Lcom/narvii/widget/NVImageView;->groundingColor:I

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 695
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 696
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_4

    .line 698
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 701
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 702
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 703
    :cond_3
    instance-of v1, v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    if-eqz v1, :cond_4

    .line 704
    move-object v1, v0

    check-cast v1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;->draw()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 705
    :cond_4
    instance-of v1, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-eqz v1, :cond_5

    .line 706
    move-object v1, v0

    check-cast v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->draw()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 707
    :cond_5
    instance-of v1, v0, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    if-eqz v1, :cond_6

    .line 708
    move-object v1, v0

    check-cast v1, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    invoke-virtual {v1}, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;->draw()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 709
    :cond_6
    instance-of v1, v0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    if-eqz v1, :cond_7

    .line 710
    move-object v1, v0

    check-cast v1, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    invoke-virtual {v1}, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->draw()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_7
    move-object v1, v12

    :goto_0
    if-nez v1, :cond_a

    .line 714
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_8

    .line 715
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 717
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 718
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 719
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 720
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 721
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 722
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 724
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 725
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 726
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    int-to-float v2, v9

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 727
    iget v1, v0, Landroid/graphics/RectF;->top:F

    int-to-float v2, v10

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v11

    .line 729
    iget v1, v6, Lcom/narvii/widget/NVImageView;->cornerMask:I

    invoke-direct {p0, v7, v0, v3, v1}, Lcom/narvii/widget/NVImageView;->drawGroundingColor(Landroid/graphics/Canvas;Landroid/graphics/RectF;FI)V

    .line 730
    iget-object v2, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    iget v4, v6, Lcom/narvii/widget/NVImageView;->cornerMask:I

    iget-object v5, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/NVImageView;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 732
    :cond_8
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->hasGroundingColor:Z

    if-eqz v0, :cond_9

    .line 733
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    int-to-float v1, v11

    iget v2, v6, Lcom/narvii/widget/NVImageView;->cornerMask:I

    invoke-direct {p0, v7, v0, v1, v2}, Lcom/narvii/widget/NVImageView;->drawGroundingColor(Landroid/graphics/Canvas;Landroid/graphics/RectF;FI)V

    .line 735
    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 738
    :cond_a
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 739
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 740
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 741
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 743
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->monochrome:Z

    if-eqz v0, :cond_b

    .line 744
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/narvii/widget/NVImageView;->getMonochromeFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    .line 746
    :cond_b
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 752
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 753
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v3, v0, v10

    mul-int v4, v9, v2

    const/high16 v5, 0x3f000000    # 0.5f

    if-le v3, v4, :cond_c

    int-to-float v3, v10

    int-to-float v2, v2

    div-float/2addr v3, v2

    int-to-float v2, v9

    int-to-float v0, v0

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    mul-float v0, v2, v5

    const/4 v2, 0x0

    goto :goto_2

    :cond_c
    int-to-float v3, v9

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float v0, v10

    int-to-float v2, v2

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    mul-float v0, v0, v5

    move v2, v0

    const/4 v0, 0x0

    .line 763
    :goto_2
    iget-object v4, v6, Lcom/narvii/widget/NVImageView;->matrix:Landroid/graphics/Matrix;

    if-nez v4, :cond_d

    .line 764
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v6, Lcom/narvii/widget/NVImageView;->matrix:Landroid/graphics/Matrix;

    .line 766
    :cond_d
    iget-object v4, v6, Lcom/narvii/widget/NVImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 767
    iget-object v3, v6, Lcom/narvii/widget/NVImageView;->matrix:Landroid/graphics/Matrix;

    add-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 769
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_f

    .line 770
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->bitmapRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_e

    move-object v0, v12

    goto :goto_3

    .line 771
    :cond_e
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_3
    if-eq v0, v1, :cond_f

    .line 773
    iput-object v12, v6, Lcom/narvii/widget/NVImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 776
    :cond_f
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_10

    .line 777
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, v6, Lcom/narvii/widget/NVImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 778
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v6, Lcom/narvii/widget/NVImageView;->bitmapRef:Ljava/lang/ref/WeakReference;

    .line 780
    :cond_10
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 782
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 784
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    iput v13, v0, Landroid/graphics/RectF;->left:F

    .line 785
    iput v13, v0, Landroid/graphics/RectF;->top:F

    int-to-float v1, v9

    .line 786
    iput v1, v0, Landroid/graphics/RectF;->right:F

    int-to-float v1, v10

    .line 787
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 788
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 789
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 790
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    int-to-float v3, v11

    iget v1, v6, Lcom/narvii/widget/NVImageView;->cornerMask:I

    invoke-direct {p0, v7, v0, v3, v1}, Lcom/narvii/widget/NVImageView;->drawGroundingColor(Landroid/graphics/Canvas;Landroid/graphics/RectF;FI)V

    .line 791
    iget-object v2, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    iget v4, v6, Lcom/narvii/widget/NVImageView;->cornerMask:I

    iget-object v5, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/NVImageView;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V

    .line 792
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 799
    :goto_4
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    if-nez v0, :cond_19

    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->isVideo(Lcom/narvii/model/Media;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->forceShowPlayButton:Z

    if-eqz v0, :cond_19

    :cond_11
    if-lez v9, :cond_19

    if-lez v10, :cond_19

    .line 800
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytBgPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_12

    .line 801
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/narvii/widget/NVImageView;->ytBgPaint:Landroid/graphics/Paint;

    .line 802
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 803
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytBgPaint:Landroid/graphics/Paint;

    const-string v1, "#22000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 805
    :cond_12
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytBgMaskRect:Landroid/graphics/RectF;

    if-nez v0, :cond_13

    .line 806
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/narvii/widget/NVImageView;->ytBgMaskRect:Landroid/graphics/RectF;

    .line 808
    :cond_13
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytBgMaskRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 809
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytBgMaskRect:Landroid/graphics/RectF;

    iget v1, v6, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    sget-object v3, Lcom/narvii/widget/NVImageView;->ytBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 812
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_14

    .line 813
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/narvii/widget/NVImageView;->ytPaint:Landroid/graphics/Paint;

    .line 814
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 815
    sget-object v0, Lcom/narvii/widget/NVImageView;->ytPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 816
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->fa_play:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/widget/NVImageView;->ytSymbol:Ljava/lang/String;

    .line 817
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$dimen;->video_play_min_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/narvii/widget/NVImageView;->ytMinSize:I

    .line 819
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$dimen;->video_play_max_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/narvii/widget/NVImageView;->ytMaxSize:I

    .line 822
    :cond_14
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->ytBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_15

    .line 823
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->ic_sr_media_play:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lcom/narvii/widget/NVImageView;->ytBitmap:Landroid/graphics/Bitmap;

    .line 824
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v13, v13, v13, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, v6, Lcom/narvii/widget/NVImageView;->ytRectF:Landroid/graphics/RectF;

    :cond_15
    if-ge v10, v9, :cond_16

    move v0, v10

    goto :goto_5

    :cond_16
    move v0, v9

    :goto_5
    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 828
    sget v1, Lcom/narvii/widget/NVImageView;->ytMinSize:I

    if-ge v0, v1, :cond_17

    move v0, v1

    .line 829
    :cond_17
    sget v1, Lcom/narvii/widget/NVImageView;->ytMaxSize:I

    if-le v0, v1, :cond_18

    move v0, v1

    .line 830
    :cond_18
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->ytRectF:Landroid/graphics/RectF;

    sub-int v2, v9, v0

    shr-int/2addr v2, v8

    int-to-float v2, v2

    sub-int v3, v10, v0

    shr-int/2addr v3, v8

    int-to-float v3, v3

    add-int v4, v9, v0

    shr-int/2addr v4, v8

    int-to-float v4, v4

    add-int/2addr v0, v10

    shr-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 831
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->ytBitmap:Landroid/graphics/Bitmap;

    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->ytRectF:Landroid/graphics/RectF;

    sget-object v2, Lcom/narvii/widget/NVImageView;->ytPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v12, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 836
    :cond_19
    iget v0, v6, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    const/high16 v14, 0x40000000    # 2.0f

    cmpl-float v0, v0, v13

    if-lez v0, :cond_1b

    .line 837
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 838
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 839
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 840
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    iget v1, v6, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 841
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    iget v1, v6, Lcom/narvii/widget/NVImageView;->strokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 842
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 843
    iget-object v0, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 844
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->fixStroke:Z

    if-eqz v0, :cond_1a

    iget v0, v6, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    div-float/2addr v0, v14

    goto :goto_6

    :cond_1a
    const/4 v0, 0x0

    .line 845
    :goto_6
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 846
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 847
    iget-object v2, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    iget v1, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v9

    add-float/2addr v1, v3

    mul-float v0, v0, v14

    sub-float/2addr v1, v0

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 848
    iget v1, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, v10

    add-float/2addr v1, v3

    sub-float/2addr v1, v0

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v11

    .line 849
    iget v4, v6, Lcom/narvii/widget/NVImageView;->cornerMask:I

    iget-object v5, v6, Lcom/narvii/widget/NVImageView;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/NVImageView;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V

    .line 856
    :cond_1b
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v1, :cond_1d

    aget v4, v0, v2

    const v5, 0x10100a7

    if-ne v4, v5, :cond_1c

    const/4 v3, 0x1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 861
    :cond_1d
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->showPressedMask:Z

    if-eqz v0, :cond_22

    if-eqz v3, :cond_22

    .line 862
    sget-object v0, Lcom/narvii/widget/NVImageView;->pressedMaskPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1e

    .line 863
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->mask_pressed:I

    .line 864
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/narvii/widget/NVImageView;->pressedMaskColor:I

    .line 865
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/narvii/widget/NVImageView;->pressedMaskPaint:Landroid/graphics/Paint;

    .line 866
    sget-object v0, Lcom/narvii/widget/NVImageView;->pressedMaskPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 867
    sget-object v0, Lcom/narvii/widget/NVImageView;->pressedMaskPaint:Landroid/graphics/Paint;

    sget v1, Lcom/narvii/widget/NVImageView;->pressedMaskColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 869
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    if-lez v11, :cond_21

    .line 871
    iget-object v2, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    int-to-float v3, v0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v1

    .line 872
    iput v3, v2, Landroid/graphics/RectF;->top:F

    add-int/2addr v0, v9

    int-to-float v0, v0

    .line 873
    iput v0, v2, Landroid/graphics/RectF;->right:F

    add-int/2addr v1, v10

    int-to-float v0, v1

    .line 874
    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 875
    iget-boolean v0, v6, Lcom/narvii/widget/NVImageView;->fixStroke:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_8

    :cond_1f
    iget v0, v6, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    div-float/2addr v0, v14

    .line 876
    :goto_8
    iget v1, v6, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    cmpl-float v1, v1, v13

    if-lez v1, :cond_20

    .line 877
    iget-object v1, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 878
    iget v2, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 879
    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 880
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, v11

    add-float/2addr v1, v0

    float-to-int v11, v1

    .line 883
    :cond_20
    iget-object v2, v6, Lcom/narvii/widget/NVImageView;->rect:Landroid/graphics/RectF;

    int-to-float v3, v11

    iget v4, v6, Lcom/narvii/widget/NVImageView;->cornerMask:I

    sget-object v5, Lcom/narvii/widget/NVImageView;->pressedMaskPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/widget/NVImageView;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V

    goto :goto_9

    :cond_21
    int-to-float v2, v0

    int-to-float v3, v1

    add-int/2addr v0, v9

    int-to-float v4, v0

    add-int/2addr v1, v10

    int-to-float v5, v1

    .line 885
    sget-object v8, Lcom/narvii/widget/NVImageView;->pressedMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_22
    :goto_9
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 589
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->onErrorRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 451
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 453
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->require()Z

    .line 456
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    iget p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x3

    const/4 p2, 0x1

    .line 459
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 209
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 210
    iget p1, p0, Lcom/narvii/widget/NVImageView;->maxHeightPercentage:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    .line 212
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->getFixedHeight(I)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 214
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 595
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 596
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 597
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 601
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 602
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->onResponseRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 465
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 467
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->visible:Z

    .line 468
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->require()Z

    goto :goto_1

    .line 470
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/widget/NVImageView;->visible:Z

    if-nez p1, :cond_2

    iget-object p2, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    if-nez p2, :cond_2

    .line 472
    iget-object p2, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/narvii/widget/NVImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 473
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->discard()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected require()Z
    .locals 10

    .line 493
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 494
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    const/4 v0, 0x3

    .line 495
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    return v1

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 498
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 499
    invoke-virtual {p0, v1, v1}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    .line 500
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-gez v0, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    move v6, v0

    .line 503
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    if-gez v0, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move v7, v0

    .line 506
    :goto_1
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    iget-boolean v3, p0, Lcom/narvii/widget/NVImageView;->visible:Z

    invoke-virtual {p0, v0, v3, v6, v7}, Lcom/narvii/widget/NVImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    return v2

    .line 510
    :cond_3
    iput-object v4, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 511
    iput-boolean v2, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    .line 512
    invoke-static {v4}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 513
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    if-nez v0, :cond_4

    .line 514
    new-instance v0, Lcom/narvii/widget/NVImageView$DrawableListener;

    invoke-direct {v0, p0, v2}, Lcom/narvii/widget/NVImageView$DrawableListener;-><init>(Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/NVImageView$1;)V

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 516
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    invoke-virtual {v0, v4, v2}, Lcom/narvii/util/drawables/gif/GifLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    goto :goto_2

    .line 517
    :cond_5
    invoke-static {v4}, Lcom/narvii/widget/NVImageView;->isWebP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 518
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    if-nez v0, :cond_6

    .line 519
    new-instance v0, Lcom/narvii/widget/NVImageView$DrawableListener;

    invoke-direct {v0, p0, v2}, Lcom/narvii/widget/NVImageView$DrawableListener;-><init>(Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/NVImageView$1;)V

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 521
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;

    move-result-object v3

    iget-object v5, p0, Lcom/narvii/widget/NVImageView;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    iget-boolean v8, p0, Lcom/narvii/widget/NVImageView;->makeWebpRtl:Z

    iget v9, p0, Lcom/narvii/widget/NVImageView;->loopCount:I

    invoke-virtual/range {v3 .. v9}, Lcom/narvii/util/drawables/webp/WebPLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;IIZI)V

    goto :goto_2

    .line 523
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/narvii/widget/NVImageView;->getImageRequestWidth(I)I

    move-result v2

    invoke-virtual {p0, v7}, Lcom/narvii/widget/NVImageView;->getImageRequestHeight(I)I

    move-result v3

    invoke-virtual {v0, v4, p0, v2, v3}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->container:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    :goto_2
    return v1

    :cond_8
    return v2
.end method

.method public setCornerMask(I)V
    .locals 1

    .line 655
    iget v0, p0, Lcom/narvii/widget/NVImageView;->cornerMask:I

    if-ne v0, p1, :cond_0

    return-void

    .line 658
    :cond_0
    iput p1, p0, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 659
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 650
    iput p1, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 651
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1233
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 1234
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1239
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setFixStroke(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->fixStroke:Z

    .line 300
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setGroundingColor(I)V
    .locals 0

    .line 1227
    iput p1, p0, Lcom/narvii/widget/NVImageView;->groundingColor:I

    .line 1228
    invoke-direct {p0}, Lcom/narvii/widget/NVImageView;->innerSetGroundingColor()V

    .line 1229
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->discard()V

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    const/4 v0, 0x4

    .line 286
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method protected setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 274
    sget-object v2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->images:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    invoke-virtual {v2, v1}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->add(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 276
    invoke-virtual {p0, p2, v1}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    .line 277
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ne p2, v0, :cond_1

    const/4 v1, 0x1

    .line 278
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    .line 279
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    invoke-virtual {p0, p2, p1}, Lcom/narvii/widget/NVImageView;->dispatchImageChanged(ILcom/narvii/model/Media;)V

    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;)Z
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 408
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 413
    :cond_1
    iget v0, p0, Lcom/narvii/widget/NVImageView;->status:I

    .line 415
    :goto_0
    iput v1, p0, Lcom/narvii/widget/NVImageView;->status:I

    .line 416
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 417
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    return v1

    .line 421
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->discard()V

    .line 422
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    const/4 p1, 0x0

    .line 423
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 424
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    .line 426
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->require()Z

    const/4 p1, 0x1

    return p1
.end method

.method protected setImageStatus(IZ)V
    .locals 2

    .line 304
    iget v0, p0, Lcom/narvii/widget/NVImageView;->status:I

    if-eq p1, v0, :cond_10

    .line 305
    iput p1, p0, Lcom/narvii/widget/NVImageView;->status:I

    const/4 v0, 0x1

    const/high16 v1, -0x1000000

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_f

    .line 309
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    goto/16 :goto_0

    .line 314
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_2

    .line 315
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 316
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 318
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->isVideo(Lcom/narvii/model/Media;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    if-eqz v0, :cond_4

    .line 322
    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->safeGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 351
    :cond_5
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_6

    .line 352
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 353
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 355
    :cond_6
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->isVideo(Lcom/narvii/model/Media;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 356
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 358
    :cond_7
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    iget v0, p0, Lcom/narvii/widget/NVImageView;->errorDrawableId:I

    if-eqz v0, :cond_8

    .line 359
    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->safeGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 361
    :cond_8
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 362
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 329
    :cond_9
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_a

    .line 330
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->placeholderSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 331
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 333
    :cond_a
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->isVideo(Lcom/narvii/model/Media;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 334
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 336
    :cond_b
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    iget v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawableId:I

    if-eqz v0, :cond_c

    .line 337
    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->safeGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 339
    :cond_c
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 340
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 342
    :cond_d
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_e

    iget v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    if-eqz v0, :cond_e

    .line 343
    invoke-direct {p0, v0}, Lcom/narvii/widget/NVImageView;->safeGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 345
    :cond_e
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->_setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_0
    if-eqz p2, :cond_10

    .line 372
    iget-object p2, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->dispatchImageChanged(ILcom/narvii/model/Media;)V

    :cond_10
    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;)Z
    .locals 1

    .line 390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 391
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    move-result p1

    return p1

    .line 393
    :cond_0
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 394
    iput-object p1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 395
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    move-result p1

    return p1
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1243
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 1244
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setMonochrome(Z)V
    .locals 1

    .line 643
    iget-boolean v0, p0, Lcom/narvii/widget/NVImageView;->monochrome:Z

    if-eq v0, p1, :cond_0

    .line 644
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->monochrome:Z

    .line 645
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->listener:Lcom/narvii/widget/NVImageView$OnImageChangedListener;

    return-void
.end method

.method public setShowPressedMask(Z)V
    .locals 0

    .line 918
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->showPressedMask:Z

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    .line 484
    iput p1, p0, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 485
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 479
    iput p1, p0, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 480
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
