.class public Lcom/meishe/cafconvertor/NvCafCreator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meishe/cafconvertor/webpcoder/NvsWebpDecoder$OnNvsWebpCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;
    }
.end annotation


# static fields
.field public static final NvCafCreateStatusCreateGifDecoderFailed:I = 0x6a

.field public static final NvCafCreateStatusFinish:I = 0x65

.field public static final NvCafCreateStatusGifNotExist:I = 0x67

.field public static final NvCafCreateStatusGifNotSupport:I = 0x68

.field public static final NvCafCreateStatusParamInvalid:I = 0x69

.field public static final NvCafCreateStatusRunning:I = 0x66

.field public static final NvCafCreateStatusUnknow:I = 0x64

.field public static final OUTPUT_CAF_LOOP_MODE_MIRROR:I = 0x2

.field public static final OUTPUT_CAF_LOOP_MODE_NONE:I = 0x0

.field public static final OUTPUT_CAF_LOOP_MODE_REPEAT:I = 0x1

.field public static final OUTPUT_CAF_LOOP_MODE_REPEAT_LAST_FRAME:I = 0x3

.field public static final OUTPUT_FORMAT_JPG:I = 0x1

.field public static final OUTPUT_FORMAT_PNG:I = 0x2


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/meishe/cafconvertor/NvRational;

.field private i:Lcom/meishe/cafconvertor/NvRational;

.field private j:I

.field private k:I

.field private l:Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;

.field private m:Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;

.field private n:Landroid/graphics/Bitmap;

.field private o:Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;

.field private p:I

.field private q:J

.field private r:J

.field private s:I

.field private t:I

.field private u:I

.field private v:Lcom/meishe/cafconvertor/webpcoder/NvsWebpDecoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NvCafCreator"

    iput-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->a:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->g:I

    new-instance v0, Lcom/meishe/cafconvertor/NvRational;

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-direct {v0, v2, v1}, Lcom/meishe/cafconvertor/NvRational;-><init>(II)V

    iput-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->h:Lcom/meishe/cafconvertor/NvRational;

    new-instance v0, Lcom/meishe/cafconvertor/NvRational;

    invoke-direct {v0, v1, v1}, Lcom/meishe/cafconvertor/NvRational;-><init>(II)V

    iput-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->i:Lcom/meishe/cafconvertor/NvRational;

    const/4 v0, 0x0

    iput v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->j:I

    const/16 v1, 0x5a

    iput v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->k:I

    const/16 v1, 0x65

    iput v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->q:J

    iput-wide v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->r:J

    iput v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->s:I

    iput v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->t:I

    iput-object p1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILcom/meishe/cafconvertor/NvRational;Lcom/meishe/cafconvertor/NvRational;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NvCafCreator"

    iput-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->a:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->g:I

    new-instance v1, Lcom/meishe/cafconvertor/NvRational;

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-direct {v1, v3, v2}, Lcom/meishe/cafconvertor/NvRational;-><init>(II)V

    iput-object v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->h:Lcom/meishe/cafconvertor/NvRational;

    new-instance v1, Lcom/meishe/cafconvertor/NvRational;

    invoke-direct {v1, v2, v2}, Lcom/meishe/cafconvertor/NvRational;-><init>(II)V

    iput-object v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->i:Lcom/meishe/cafconvertor/NvRational;

    const/4 v1, 0x0

    iput v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->j:I

    const/16 v2, 0x5a

    iput v2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->k:I

    const/16 v2, 0x65

    iput v2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->q:J

    iput-wide v2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->r:J

    iput v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->s:I

    iput v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->t:I

    if-nez p1, :cond_0

    const-string p1, "NvCafCreator: context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/meishe/cafconvertor/NvCafCreator;->d:Ljava/lang/String;

    iput p4, p0, Lcom/meishe/cafconvertor/NvCafCreator;->e:I

    iput p5, p0, Lcom/meishe/cafconvertor/NvCafCreator;->f:I

    if-eqz p7, :cond_3

    iget-object p1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->h:Lcom/meishe/cafconvertor/NvRational;

    iget p2, p7, Lcom/meishe/cafconvertor/NvRational;->num:I

    iput p2, p1, Lcom/meishe/cafconvertor/NvRational;->num:I

    iget p2, p7, Lcom/meishe/cafconvertor/NvRational;->den:I

    iput p2, p1, Lcom/meishe/cafconvertor/NvRational;->den:I

    :cond_3
    if-eqz p8, :cond_4

    iget-object p1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->i:Lcom/meishe/cafconvertor/NvRational;

    iget p2, p8, Lcom/meishe/cafconvertor/NvRational;->num:I

    iput p2, p1, Lcom/meishe/cafconvertor/NvRational;->num:I

    iget p2, p8, Lcom/meishe/cafconvertor/NvRational;->den:I

    iput p2, p1, Lcom/meishe/cafconvertor/NvRational;->den:I

    :cond_4
    iput p6, p0, Lcom/meishe/cafconvertor/NvCafCreator;->g:I

    iput p9, p0, Lcom/meishe/cafconvertor/NvCafCreator;->j:I

    invoke-direct {p0}, Lcom/meishe/cafconvertor/NvCafCreator;->b()V

    invoke-direct {p0}, Lcom/meishe/cafconvertor/NvCafCreator;->a()V

    return-void

    :cond_5
    :goto_0
    const-string p1, "NvCafCreator: cafTargetPath is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_1
    const-string p1, "NvCafCreator: sourcePath is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a()V
    .locals 5

    const-string v0, "initwebp: Input file stream is null"

    iget-object v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "webp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "NvCafCreator"

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "initwebp: Context is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    const-string v3, "assets:/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v3, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_2

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/meishe/cafconvertor/webpcoder/NvsWebpDecoder;->getInstance(Landroid/content/Context;)Lcom/meishe/cafconvertor/webpcoder/NvsWebpDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->v:Lcom/meishe/cafconvertor/webpcoder/NvsWebpDecoder;

    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->v:Lcom/meishe/cafconvertor/webpcoder/NvsWebpDecoder;

    if-nez v0, :cond_4

    const-string v0, "initwebp: create mNvsWebpDecoder failed!"

    :goto_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string v0, "initwebp: Input file is not webp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private b()V
    .locals 5

    const-string v0, "initgif: Input file stream is null"

    iget-object v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "NvCafCreator"

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "initgif: Context is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    const-string v3, "assets:/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v3, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_2

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;

    invoke-direct {v0}, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;-><init>()V

    iput-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->l:Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;

    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->l:Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;

    if-nez v0, :cond_3

    const-string v0, "initgif: create gifDecoder failed!"

    :goto_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v0, v1}, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->read(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->l:Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->isGif()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "initgif: It is not a gif!"

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_4
    const-string v0, "initgif: Input file is not gif"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method


# virtual methods
.method public getCafDuration()I
    .locals 3

    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->h:Lcom/meishe/cafconvertor/NvRational;

    iget v1, v0, Lcom/meishe/cafconvertor/NvRational;->den:I

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    iget v0, v0, Lcom/meishe/cafconvertor/NvRational;->num:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->m:Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->getFrameCount()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCallBack(ILandroid/graphics/Bitmap;J)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->o:Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;->convertBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->s:I

    int-to-long v0, v0

    add-long/2addr v0, p3

    long-to-int p3, v0

    iput p3, p0, Lcom/meishe/cafconvertor/NvCafCreator;->s:I

    :goto_0
    iget p3, p0, Lcom/meishe/cafconvertor/NvCafCreator;->t:I

    iget p4, p0, Lcom/meishe/cafconvertor/NvCafCreator;->s:I

    if-ge p3, p4, :cond_2

    iget-object p3, p0, Lcom/meishe/cafconvertor/NvCafCreator;->m:Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;

    const/16 p4, 0x5a

    invoke-virtual {p3, p2, p4}, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->writeOneImage(Landroid/graphics/Bitmap;I)Z

    move-result p3

    iget p4, p0, Lcom/meishe/cafconvertor/NvCafCreator;->t:I

    iget v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->u:I

    add-int/2addr p4, v0

    iput p4, p0, Lcom/meishe/cafconvertor/NvCafCreator;->t:I

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->v:Lcom/meishe/cafconvertor/webpcoder/NvsWebpDecoder;

    iget p2, p2, Lcom/meishe/cafconvertor/webpcoder/NvsWebpDecoder;->count:I

    const/4 p3, 0x1

    add-int/2addr p1, p3

    if-ne p2, p1, :cond_5

    iget-object p2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->m:Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;

    invoke-virtual {p2}, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->writeHeader()Z

    move-result p2

    const-string p4, "NvCafCreator"

    if-nez p2, :cond_3

    const-string p2, "start: writeHeader failed!"

    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->m:Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;

    invoke-virtual {p2}, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->writeFrameIndexTable()Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "start: writeFrameIndexTable failed!"

    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p2, 0x0

    iput p2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->s:I

    iput p2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->t:I

    const/16 p2, 0x65

    iput p2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u89e3\u7801\u5b8c\u6210\uff0c\u603b\u5e27\u6570\u662f\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->o:Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;

    if-eqz p1, :cond_5

    invoke-interface {p1, p3}, Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;->convertFinished(Z)V

    :cond_5
    return-void
.end method

.method public setOnConvertListener(Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;)V
    .locals 0

    iput-object p1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->o:Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;

    return-void
.end method

.method public start()I
    .locals 13

    iget v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    const/16 v1, 0x65

    const-string v2, "NvCafCreator"

    if-eq v0, v1, :cond_0

    const-string v0, "start: current is running!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    const/16 v3, 0x69

    if-nez v0, :cond_1

    const-string v0, "start: Input file path is null"

    :goto_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/meishe/cafconvertor/NvCafCreator;->d:Ljava/lang/String;

    if-nez v6, :cond_2

    const-string v0, "start: target file path is null"

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;

    iget-object v5, p0, Lcom/meishe/cafconvertor/NvCafCreator;->b:Landroid/content/Context;

    iget v7, p0, Lcom/meishe/cafconvertor/NvCafCreator;->e:I

    iget v8, p0, Lcom/meishe/cafconvertor/NvCafCreator;->f:I

    iget v9, p0, Lcom/meishe/cafconvertor/NvCafCreator;->g:I

    iget-object v10, p0, Lcom/meishe/cafconvertor/NvCafCreator;->h:Lcom/meishe/cafconvertor/NvRational;

    iget-object v11, p0, Lcom/meishe/cafconvertor/NvCafCreator;->i:Lcom/meishe/cafconvertor/NvRational;

    iget v12, p0, Lcom/meishe/cafconvertor/NvCafCreator;->j:I

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;-><init>(Landroid/content/Context;Ljava/lang/String;IIILcom/meishe/cafconvertor/NvRational;Lcom/meishe/cafconvertor/NvRational;I)V

    iput-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->m:Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;

    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->m:Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;

    if-nez v0, :cond_3

    const-string v0, "start: create cafEncoder failed!"

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->l:Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->getGifDecoder()Lcom/meishe/cafconvertor/gifdecoder/GifDecoder;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_6

    :cond_4
    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->l:Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->isGif()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "start: It is not a gif!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x68

    :goto_2
    iput v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    goto :goto_0

    :cond_5
    const/16 v0, 0x66

    iput v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->h:Lcom/meishe/cafconvertor/NvRational;

    iget v3, v0, Lcom/meishe/cafconvertor/NvRational;->den:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v3, v3, v4

    iget v0, v0, Lcom/meishe/cafconvertor/NvRational;->num:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    float-to-int v0, v3

    iget-object v3, p0, Lcom/meishe/cafconvertor/NvCafCreator;->l:Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;

    invoke-virtual {v3}, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->getFrameCount()I

    move-result v3

    iget-object v4, p0, Lcom/meishe/cafconvertor/NvCafCreator;->l:Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;

    invoke-virtual {v4}, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->getGifDecoder()Lcom/meishe/cafconvertor/gifdecoder/GifDecoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meishe/cafconvertor/gifdecoder/GifDecoder;->resetFrameIndex()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v6, v3, :cond_a

    invoke-virtual {v4}, Lcom/meishe/cafconvertor/gifdecoder/GifDecoder;->advance()V

    invoke-virtual {v4}, Lcom/meishe/cafconvertor/gifdecoder/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/meishe/cafconvertor/NvCafCreator;->n:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/meishe/cafconvertor/NvCafCreator;->n:Landroid/graphics/Bitmap;

    if-nez v9, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v4, v6}, Lcom/meishe/cafconvertor/gifdecoder/GifDecoder;->getDelay(I)I

    move-result v9

    add-int/2addr v7, v9

    :cond_7
    :goto_4
    if-ge v8, v7, :cond_9

    iget-object v9, p0, Lcom/meishe/cafconvertor/NvCafCreator;->m:Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;

    iget-object v10, p0, Lcom/meishe/cafconvertor/NvCafCreator;->n:Landroid/graphics/Bitmap;

    const/16 v11, 0x5a

    invoke-virtual {v9, v10, v11}, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->writeOneImage(Landroid/graphics/Bitmap;I)Z

    move-result v9

    add-int/2addr v8, v0

    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    iget-object v9, p0, Lcom/meishe/cafconvertor/NvCafCreator;->o:Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;

    if-eqz v9, :cond_7

    iget-object v10, p0, Lcom/meishe/cafconvertor/NvCafCreator;->n:Landroid/graphics/Bitmap;

    invoke-interface {v9, v10}, Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;->convertBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->m:Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->writeHeader()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "start: writeHeader failed!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->o:Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;

    if-eqz v0, :cond_b

    invoke-interface {v0, v5}, Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;->convertFinished(Z)V

    :cond_b
    iget v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    return v0

    :cond_c
    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->m:Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;->writeFrameIndexTable()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "start: writeFrameIndexTable failed!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->o:Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;

    if-eqz v0, :cond_d

    invoke-interface {v0, v5}, Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;->convertFinished(Z)V

    :cond_d
    iget v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    return v0

    :cond_e
    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->o:Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;->convertFinished(Z)V

    :cond_f
    iput v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    goto/16 :goto_0

    :cond_10
    :goto_6
    const-string v0, "start: create gifDecoder failed!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x6a

    goto/16 :goto_2
.end method

.method public startWebpToCaf()I
    .locals 12

    iget v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    const-string v1, "NvCafCreator"

    const/16 v2, 0x65

    if-eq v0, v2, :cond_0

    const-string v0, "start: current is running!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    const/16 v2, 0x69

    if-nez v0, :cond_1

    const-string v0, "start: Input file path is null"

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/meishe/cafconvertor/NvCafCreator;->d:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v0, "start: target file path is null"

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;

    iget-object v4, p0, Lcom/meishe/cafconvertor/NvCafCreator;->b:Landroid/content/Context;

    iget v6, p0, Lcom/meishe/cafconvertor/NvCafCreator;->e:I

    iget v7, p0, Lcom/meishe/cafconvertor/NvCafCreator;->f:I

    iget v8, p0, Lcom/meishe/cafconvertor/NvCafCreator;->g:I

    iget-object v9, p0, Lcom/meishe/cafconvertor/NvCafCreator;->h:Lcom/meishe/cafconvertor/NvRational;

    iget-object v10, p0, Lcom/meishe/cafconvertor/NvCafCreator;->i:Lcom/meishe/cafconvertor/NvRational;

    iget v11, p0, Lcom/meishe/cafconvertor/NvCafCreator;->j:I

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;-><init>(Landroid/content/Context;Ljava/lang/String;IIILcom/meishe/cafconvertor/NvRational;Lcom/meishe/cafconvertor/NvRational;I)V

    iput-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->m:Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;

    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->m:Lcom/meishe/cafconvertor/cafencoder/NvCafEncoder;

    if-nez v0, :cond_3

    const-string v0, "start: create cafEncoder failed!"

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->v:Lcom/meishe/cafconvertor/webpcoder/NvsWebpDecoder;

    if-nez v0, :cond_4

    const-string v0, "start: create gifDecoder failed!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x6a

    iput v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    goto :goto_0

    :cond_4
    const/16 v0, 0x66

    iput v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->p:I

    iget-object v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->h:Lcom/meishe/cafconvertor/NvRational;

    iget v2, v0, Lcom/meishe/cafconvertor/NvRational;->den:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    iget v0, v0, Lcom/meishe/cafconvertor/NvRational;->num:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/meishe/cafconvertor/NvCafCreator;->u:I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :try_start_0
    iget-object v2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    const-string v3, "assets:/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/meishe/cafconvertor/NvCafCreator;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/meishe/cafconvertor/NvCafCreator;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "initwebp: Input file stream is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->v:Lcom/meishe/cafconvertor/webpcoder/NvsWebpDecoder;

    invoke-virtual {v1, p0}, Lcom/meishe/cafconvertor/webpcoder/NvsWebpDecoder;->setOnNvsWebpCallback(Lcom/meishe/cafconvertor/webpcoder/NvsWebpDecoder$OnNvsWebpCallback;)V

    iget-object v1, p0, Lcom/meishe/cafconvertor/NvCafCreator;->v:Lcom/meishe/cafconvertor/webpcoder/NvsWebpDecoder;

    invoke-virtual {v1, v0}, Lcom/meishe/cafconvertor/webpcoder/NvsWebpDecoder;->startDecode(Ljava/io/InputStream;)V

    goto/16 :goto_0
.end method
