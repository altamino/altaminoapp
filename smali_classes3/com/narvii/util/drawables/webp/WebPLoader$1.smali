.class Lcom/narvii/util/drawables/webp/WebPLoader$1;
.super Ljava/lang/Object;
.source "WebPLoader.java"

# interfaces
.implements Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/drawables/webp/WebPLoader;->getLocalWebPDrawable(Ljava/lang/String;II)Lcom/narvii/util/drawables/webp/WrapWebPDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/drawables/webp/WebPLoader;


# direct methods
.method constructor <init>(Lcom/narvii/util/drawables/webp/WebPLoader;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$1;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireBitmap(II)Landroid/graphics/Bitmap;
    .locals 1

    .line 95
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
