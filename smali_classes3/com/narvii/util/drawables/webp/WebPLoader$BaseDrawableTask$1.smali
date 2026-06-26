.class Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$1;
.super Ljava/lang/Object;
.source "WebPLoader.java"

# interfaces
.implements Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;


# direct methods
.method constructor <init>(Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$1;->this$1:Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireBitmap(II)Landroid/graphics/Bitmap;
    .locals 1

    .line 420
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
