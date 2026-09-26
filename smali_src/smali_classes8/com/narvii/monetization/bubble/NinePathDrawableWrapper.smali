.class public Lcom/narvii/monetization/bubble/NinePathDrawableWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DENSITY:I = 0x1e0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getNinPathChunk(Landroid/graphics/Bitmap;[I)Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->createNinePathChunk(Landroid/graphics/Bitmap;[I)Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getNinePathDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[I)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/narvii/monetization/bubble/NinePathDrawableWrapper;->getNinePathDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[I[I)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getNinePathDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[I[I)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 6

    .line 2
    invoke-static {p1, p2, p3}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->createNinePathChunk(Landroid/graphics/Bitmap;[I[I)Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;

    move-result-object p2

    .line 3
    new-instance p3, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p2}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->toBytes()[B

    move-result-object v3

    iget-object v4, p2, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    const-string v5, ""

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    return-object p3
.end method

.method public static getNinePathDrawable(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 2

    .line 4
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v1, 0x1e0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 6
    invoke-static {p0, p1, v0}, Lcom/narvii/monetization/bubble/NinePathDrawableWrapper;->getNinePathDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[I)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object p0

    return-object p0
.end method
