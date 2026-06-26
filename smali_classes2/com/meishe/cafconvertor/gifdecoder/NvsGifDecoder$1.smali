.class Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meishe/cafconvertor/gifdecoder/GifDecoder$BitmapProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->read(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;


# direct methods
.method constructor <init>(Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder$1;->a:Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
