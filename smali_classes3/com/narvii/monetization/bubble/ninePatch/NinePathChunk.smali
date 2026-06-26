.class public Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;
.super Ljava/lang/Object;
.source "NinePathChunk.java"


# static fields
.field private static final DIV_INFO_COUNT:I = 0x4

.field public static final NO_COLOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NinePathChunk"


# instance fields
.field public colors:[I

.field public padding:Landroid/graphics/Rect;

.field public xDivs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/monetization/bubble/ninePatch/Div;",
            ">;"
        }
    .end annotation
.end field

.field public yDivs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/monetization/bubble/ninePatch/Div;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    return-void
.end method

.method public static arraySum([I)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 81
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 82
    aget v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static checkChunkDivInfo(II[I)[I
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_7

    .line 55
    array-length v5, p2

    if-le v5, v4, :cond_7

    invoke-static {p2}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->arraySum([I)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_5

    .line 59
    :cond_0
    array-length v5, p2

    if-gt v5, v2, :cond_5

    new-array v2, v2, [I

    .line 62
    aget v5, p2, v3

    add-int/2addr v5, v4

    if-le v5, p0, :cond_1

    aget v5, p2, v3

    sub-int/2addr v5, v4

    goto :goto_0

    :cond_1
    aget v5, p2, v3

    :goto_0
    aput v5, v2, v3

    .line 63
    aget v5, p2, v3

    add-int/2addr v5, v4

    if-le v5, p0, :cond_2

    aget p0, p2, v3

    goto :goto_1

    :cond_2
    aget p0, p2, v3

    add-int/2addr p0, v4

    :goto_1
    aput p0, v2, v4

    .line 64
    aget p0, p2, v4

    add-int/2addr p0, v4

    if-le p0, p1, :cond_3

    aget p0, p2, v4

    sub-int/2addr p0, v4

    goto :goto_2

    :cond_3
    aget p0, p2, v4

    :goto_2
    aput p0, v2, v1

    .line 65
    aget p0, p2, v4

    add-int/2addr p0, v4

    if-le p0, p1, :cond_4

    aget p0, p2, v4

    goto :goto_3

    :cond_4
    aget p0, p2, v4

    add-int/2addr p0, v4

    :goto_3
    aput p0, v2, v0

    goto :goto_6

    :cond_5
    new-array p0, v2, [I

    :goto_4
    if-ge v3, v2, :cond_6

    .line 69
    aget p1, p2, v3

    aput p1, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    move-object v2, p0

    goto :goto_6

    .line 56
    :cond_7
    :goto_5
    sget-object p2, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->TAG:Ljava/lang/String;

    const-string v5, "This divs info is empty"

    invoke-static {p2, v5}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v2, [I

    .line 58
    div-int/2addr p0, v1

    aput p0, v2, v3

    add-int/2addr p0, v4

    aput p0, v2, v4

    div-int/2addr p1, v1

    aput p1, v2, v1

    add-int/2addr p1, v4

    aput p1, v2, v0

    :goto_6
    return-object v2
.end method

.method private static configPathDiv(Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;II[I)V
    .locals 1

    .line 184
    invoke-static {p1, p2, p3}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->checkChunkDivInfo(II[I)[I

    move-result-object p1

    .line 185
    new-instance p2, Lcom/narvii/monetization/bubble/ninePatch/Div;

    invoke-direct {p2}, Lcom/narvii/monetization/bubble/ninePatch/Div;-><init>()V

    const/4 p3, 0x0

    .line 186
    aget p3, p1, p3

    iput p3, p2, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    const/4 p3, 0x1

    .line 187
    aget p3, p1, p3

    iput p3, p2, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 189
    new-instance p3, Lcom/narvii/monetization/bubble/ninePatch/Div;

    invoke-direct {p3}, Lcom/narvii/monetization/bubble/ninePatch/Div;-><init>()V

    const/4 v0, 0x2

    .line 190
    aget v0, p1, v0

    iput v0, p3, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    const/4 v0, 0x3

    .line 191
    aget p1, p1, v0

    iput p1, p3, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 193
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    .line 194
    iget-object p1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    .line 197
    iget-object p0, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createNinePathChunk(Landroid/graphics/Bitmap;[I)Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 35
    invoke-static {p0, p1, v0}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->createNinePathChunk(Landroid/graphics/Bitmap;[I[I)Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;

    move-result-object p0

    return-object p0
.end method

.method public static createNinePathChunk(Landroid/graphics/Bitmap;[I[I)Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;
    .locals 3

    .line 39
    new-instance v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;

    invoke-direct {v0}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 46
    invoke-static {v0, v1, v2, p1}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->configPathDiv(Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;II[I)V

    .line 47
    invoke-static {v0, v1, v2, p2}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->setupPadding(Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;II[I)V

    .line 48
    invoke-static {p0, v0}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->setupColors(Landroid/graphics/Bitmap;Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;)V

    return-object v0
.end method

.method public static deserialisze([B)Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;
    .locals 5

    .line 202
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 204
    new-instance v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;

    invoke-direct {v0}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;-><init>()V

    .line 205
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 209
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 210
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 212
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    .line 215
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 216
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 218
    iget-object v3, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 219
    iget-object v3, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 220
    iget-object v3, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 221
    iget-object v3, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 224
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    shr-int/lit8 v1, v1, 0x1

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    .line 228
    iget-object v3, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    invoke-static {v1, p0, v3}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->readDivs(ILjava/nio/ByteBuffer;Ljava/util/ArrayList;)V

    shr-int/lit8 v1, v2, 0x1

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    .line 232
    iget-object v2, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    invoke-static {v1, p0, v2}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->readDivs(ILjava/nio/ByteBuffer;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    .line 234
    :goto_0
    iget-object v2, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 235
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/monetization/bubble/ninePatch/Div;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/monetization/bubble/ninePatch/Div;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    .line 143
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 144
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 145
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/monetization/bubble/ninePatch/Div;

    if-nez v2, :cond_1

    .line 146
    iget v4, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    if-eqz v4, :cond_1

    .line 147
    new-instance v5, Lcom/narvii/monetization/bubble/ninePatch/Div;

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v5, v1, v4}, Lcom/narvii/monetization/bubble/ninePatch/Div;-><init>(II)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-lez v2, :cond_2

    .line 150
    new-instance v4, Lcom/narvii/monetization/bubble/ninePatch/Div;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/monetization/bubble/ninePatch/Div;

    iget v5, v5, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    iget v6, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v4, v5, v6}, Lcom/narvii/monetization/bubble/ninePatch/Div;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_2
    new-instance v4, Lcom/narvii/monetization/bubble/ninePatch/Div;

    iget v5, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    iget v6, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v4, v5, v6}, Lcom/narvii/monetization/bubble/ninePatch/Div;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_3

    iget v3, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    if-ge v3, p1, :cond_3

    .line 154
    new-instance v4, Lcom/narvii/monetization/bubble/ninePatch/Div;

    add-int/lit8 v5, p1, -0x1

    invoke-direct {v4, v3, v5}, Lcom/narvii/monetization/bubble/ninePatch/Div;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static hasSameColor(Landroid/graphics/Bitmap;IIII)Z
    .locals 5

    .line 161
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sub-int/2addr p1, v1

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 165
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    sub-int/2addr p3, v1

    .line 167
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 168
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sub-int/2addr p2, v1

    .line 170
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p4, v0, :cond_3

    .line 171
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sub-int/2addr p4, v1

    .line 173
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v4, 0x0

    return v4

    :goto_0
    if-gt p1, p2, :cond_6

    move v2, p3

    :goto_1
    if-gt v2, p4, :cond_5

    .line 176
    invoke-virtual {p0, p1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    if-eq v0, v3, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method private static isTransparent(I)Z
    .locals 0

    .line 287
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static readDivs(ILjava/nio/ByteBuffer;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/monetization/bubble/ninePatch/Div;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 243
    new-instance v1, Lcom/narvii/monetization/bubble/ninePatch/Div;

    invoke-direct {v1}, Lcom/narvii/monetization/bubble/ninePatch/Div;-><init>()V

    .line 244
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 245
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 246
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static setupColors(Landroid/graphics/Bitmap;Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;)V
    .locals 11

    .line 109
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 111
    iget-object v2, p1, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 112
    iget-object v2, p1, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int v2, v2, v3

    new-array v2, v2, [I

    iput-object v2, p1, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 118
    iget v7, v6, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 119
    iget v9, v4, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    add-int/2addr v9, v8

    .line 120
    iget v6, v6, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    add-int/2addr v6, v8

    iget v10, v4, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    add-int/2addr v10, v8

    invoke-static {p0, v7, v6, v9, v10}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->hasSameColor(Landroid/graphics/Bitmap;IIII)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 121
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-lt v7, v6, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    .line 124
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-lt v9, v6, :cond_2

    .line 125
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v9, v6, -0x1

    .line 127
    :cond_2
    invoke-virtual {p0, v7, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 128
    invoke-static {v6}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->isTransparent(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x0

    .line 131
    :cond_3
    iget-object v7, p1, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    aput v6, v7, v3

    goto :goto_1

    .line 133
    :cond_4
    iget-object v6, p1, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    aput v8, v6, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static setupPadding(Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;II[I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 89
    array-length v2, p3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 101
    iget-object p0, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    aget p1, p3, v1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    const/4 p1, 0x1

    .line 102
    aget p1, p3, p1

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 103
    aget p1, p3, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    const/4 p1, 0x3

    .line 104
    aget p1, p3, p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    return-void

    :cond_1
    :goto_0
    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    .line 92
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 93
    iget-object p3, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/bubble/ninePatch/Div;

    iget v0, v0, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 94
    iget-object p3, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/bubble/ninePatch/Div;

    iget v0, v0, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    sub-int/2addr p1, v0

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 95
    iget-object p1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/bubble/ninePatch/Div;

    iget p3, p3, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 96
    iget-object p1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/monetization/bubble/ninePatch/Div;

    iget p0, p0, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public toBytes()[B
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x20

    iget-object v1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 252
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 254
    iget-object v1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 255
    iget-object v1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 256
    iget-object v1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 258
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 259
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 261
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 262
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 265
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 266
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 267
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 270
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 272
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 273
    iget v4, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 274
    iget v3, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 277
    iget v4, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 278
    iget v3, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 280
    :cond_2
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    aget v4, v2, v1

    .line 281
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 283
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
