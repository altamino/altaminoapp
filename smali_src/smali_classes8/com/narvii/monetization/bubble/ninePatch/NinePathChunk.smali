.class public Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 11
    return-void
.end method

.method public static arraySum([I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    move v1, v0

    .line 6
    :goto_0
    array-length v2, p0

    .line 7
    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    aget v2, p0, v0

    .line 11
    add-int/2addr v1, v2

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method private static checkChunkDivInfo(II[I)[I
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_6

    .line 4
    array-length v1, p2

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-le v1, v2, :cond_6

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->arraySum([I)I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    goto :goto_4

    .line 15
    :cond_0
    array-length v1, p2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x4

    .line 18
    .line 19
    if-gt v1, v4, :cond_5

    .line 20
    .line 21
    new-array v1, v4, [I

    .line 22
    .line 23
    aget v4, p2, v3

    .line 24
    .line 25
    add-int/lit8 v5, v4, 0x1

    .line 26
    .line 27
    if-le v5, p0, :cond_1

    .line 28
    .line 29
    add-int/lit8 v4, v4, -0x1

    .line 30
    .line 31
    :cond_1
    aput v4, v1, v3

    .line 32
    .line 33
    aget v3, p2, v3

    .line 34
    .line 35
    add-int/lit8 v4, v3, 0x1

    .line 36
    .line 37
    if-le v4, p0, :cond_2

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    :goto_0
    aput v3, v1, v2

    .line 43
    .line 44
    aget p0, p2, v2

    .line 45
    .line 46
    add-int/lit8 p2, p0, 0x1

    .line 47
    .line 48
    if-le p2, p1, :cond_3

    .line 49
    .line 50
    add-int/lit8 p2, p0, -0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move p2, p0

    .line 53
    .line 54
    :goto_1
    aput p2, v1, v0

    .line 55
    .line 56
    add-int/lit8 p2, p0, 0x1

    .line 57
    .line 58
    if-le p2, p1, :cond_4

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_4
    add-int/lit8 p0, p0, 0x1

    .line 62
    :goto_2
    const/4 p1, 0x3

    .line 63
    .line 64
    aput p0, v1, p1

    .line 65
    goto :goto_5

    .line 66
    .line 67
    :cond_5
    new-array v1, v4, [I

    .line 68
    .line 69
    :goto_3
    if-ge v3, v4, :cond_7

    .line 70
    .line 71
    aget p0, p2, v3

    .line 72
    .line 73
    aput p0, v1, v3

    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    goto :goto_3

    .line 77
    .line 78
    :cond_6
    :goto_4
    sget-object p2, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    const-string v1, "This divs info is empty"

    .line 81
    .line 82
    .line 83
    invoke-static {p2, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    div-int/2addr p0, v0

    .line 85
    .line 86
    add-int/lit8 p2, p0, 0x1

    .line 87
    div-int/2addr p1, v0

    .line 88
    .line 89
    add-int/lit8 v0, p1, 0x1

    .line 90
    .line 91
    .line 92
    filled-new-array {p0, p2, p1, v0}, [I

    .line 93
    move-result-object v1

    .line 94
    :cond_7
    :goto_5
    return-object v1
.end method

.method private static configPathDiv(Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;II[I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->checkChunkDivInfo(II[I)[I

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance p2, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 7
    .line 8
    .line 9
    invoke-direct {p2}, Lcom/narvii/monetization/bubble/ninePatch/Div;-><init>()V

    .line 10
    const/4 p3, 0x0

    .line 11
    .line 12
    aget p3, p1, p3

    .line 13
    .line 14
    iput p3, p2, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 15
    const/4 p3, 0x1

    .line 16
    .line 17
    aget p3, p1, p3

    .line 18
    .line 19
    iput p3, p2, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 20
    .line 21
    new-instance p3, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 22
    .line 23
    .line 24
    invoke-direct {p3}, Lcom/narvii/monetization/bubble/ninePatch/Div;-><init>()V

    .line 25
    const/4 v0, 0x2

    .line 26
    .line 27
    aget v0, p1, v0

    .line 28
    .line 29
    iput v0, p3, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 30
    const/4 v0, 0x3

    .line 31
    .line 32
    aget p1, p1, v0

    .line 33
    .line 34
    iput p1, p3, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 35
    .line 36
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    new-instance p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public static createNinePathChunk(Landroid/graphics/Bitmap;[I)Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    invoke-static {p0, p1, v0}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->createNinePathChunk(Landroid/graphics/Bitmap;[I[I)Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;

    move-result-object p0

    return-object p0
.end method

.method public static createNinePathChunk(Landroid/graphics/Bitmap;[I[I)Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;
    .locals 3

    .line 2
    new-instance v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;

    invoke-direct {v0}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 5
    invoke-static {v0, v1, v2, p1}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->configPathDiv(Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;II[I)V

    .line 6
    invoke-static {v0, v1, v2, p2}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->setupPadding(Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;II[I)V

    .line 7
    invoke-static {p0, v0}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->setupColors(Landroid/graphics/Bitmap;Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;)V

    return-object v0
.end method

.method public static deserialisze([B)Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 37
    move-result v3

    .line 38
    .line 39
    new-array v3, v3, [I

    .line 40
    .line 41
    iput-object v3, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 48
    .line 49
    iget-object v3, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 53
    move-result v4

    .line 54
    .line 55
    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    iget-object v3, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 61
    move-result v4

    .line 62
    .line 63
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 64
    .line 65
    iget-object v3, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 69
    move-result v4

    .line 70
    .line 71
    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 72
    .line 73
    iget-object v3, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 77
    move-result v4

    .line 78
    .line 79
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 83
    .line 84
    shr-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    new-instance v3, Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .line 91
    iput-object v3, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    invoke-static {v1, p0, v3}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->readDivs(ILjava/nio/ByteBuffer;Ljava/util/ArrayList;)V

    .line 95
    .line 96
    shr-int/lit8 v1, v2, 0x1

    .line 97
    .line 98
    new-instance v2, Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    iput-object v2, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    invoke-static {v1, p0, v2}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->readDivs(ILjava/nio/ByteBuffer;Ljava/util/ArrayList;)V

    .line 107
    const/4 v1, 0x0

    .line 108
    .line 109
    :goto_0
    iget-object v2, v0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    .line 110
    array-length v3, v2

    .line 111
    .line 112
    if-ge v1, v3, :cond_1

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 116
    move-result v3

    .line 117
    .line 118
    aput v3, v2, v1

    .line 119
    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 121
    goto :goto_0

    .line 122
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    if-eqz p0, :cond_4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v3

    .line 21
    .line 22
    if-ge v2, v3, :cond_4

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    check-cast v3, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    iget v4, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    new-instance v5, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 37
    .line 38
    add-int/lit8 v4, v4, -0x1

    .line 39
    .line 40
    .line 41
    invoke-direct {v5, v1, v4}, Lcom/narvii/monetization/bubble/ninePatch/Div;-><init>(II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    :cond_1
    if-lez v2, :cond_2

    .line 47
    .line 48
    new-instance v4, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 49
    .line 50
    add-int/lit8 v5, v2, -0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v5

    .line 55
    .line 56
    check-cast v5, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 57
    .line 58
    iget v5, v5, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 59
    .line 60
    iget v6, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 61
    .line 62
    add-int/lit8 v6, v6, -0x1

    .line 63
    .line 64
    .line 65
    invoke-direct {v4, v5, v6}, Lcom/narvii/monetization/bubble/ninePatch/Div;-><init>(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    :cond_2
    new-instance v4, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 71
    .line 72
    iget v5, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 73
    .line 74
    iget v6, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 75
    .line 76
    add-int/lit8 v6, v6, -0x1

    .line 77
    .line 78
    .line 79
    invoke-direct {v4, v5, v6}, Lcom/narvii/monetization/bubble/ninePatch/Div;-><init>(II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 86
    move-result v4

    .line 87
    .line 88
    add-int/lit8 v4, v4, -0x1

    .line 89
    .line 90
    if-ne v2, v4, :cond_3

    .line 91
    .line 92
    iget v3, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 93
    .line 94
    if-ge v3, p1, :cond_3

    .line 95
    .line 96
    new-instance v4, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 97
    .line 98
    add-int/lit8 v5, p1, -0x1

    .line 99
    .line 100
    .line 101
    invoke-direct {v4, v3, v5}, Lcom/narvii/monetization/bubble/ninePatch/Div;-><init>(II)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 107
    goto :goto_0

    .line 108
    :cond_4
    :goto_1
    return-object v0
.end method

.method private static hasSameColor(Landroid/graphics/Bitmap;IIII)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 17
    move-result p1

    .line 18
    sub-int/2addr p1, v1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-lt p3, v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 28
    move-result v0

    .line 29
    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 34
    move-result p3

    .line 35
    sub-int/2addr p3, v1

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 39
    move-result v0

    .line 40
    .line 41
    if-lt p2, v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 45
    move-result v0

    .line 46
    .line 47
    if-lez v0, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 51
    move-result p2

    .line 52
    sub-int/2addr p2, v1

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 56
    move-result v0

    .line 57
    .line 58
    if-lt p4, v0, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 62
    move-result v0

    .line 63
    .line 64
    if-lez v0, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 68
    move-result p4

    .line 69
    sub-int/2addr p4, v1

    .line 70
    :cond_3
    const/4 v0, 0x0

    .line 71
    .line 72
    if-gez p1, :cond_4

    .line 73
    move p1, v0

    .line 74
    .line 75
    :cond_4
    if-gez p3, :cond_5

    .line 76
    move p3, v0

    .line 77
    .line 78
    .line 79
    :cond_5
    invoke-virtual {p0, p1, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 80
    move-result v2

    .line 81
    .line 82
    :goto_0
    if-gt p1, p2, :cond_8

    .line 83
    move v3, p3

    .line 84
    .line 85
    :goto_1
    if-gt v3, p4, :cond_7

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 89
    move-result v4

    .line 90
    .line 91
    if-eq v2, v4, :cond_6

    .line 92
    return v0

    .line 93
    .line 94
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :cond_7
    add-int/lit8 p1, p1, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_8
    return v1
.end method

.method private static isTransparent(I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    if-ge v0, p0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 6
    .line 7
    .line 8
    invoke-direct {v1}, Lcom/narvii/monetization/bubble/ninePatch/Div;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 12
    move-result v2

    .line 13
    .line 14
    iput v2, v1, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 18
    move-result v2

    .line 19
    .line 20
    iput v2, v1, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private static setupColors(Landroid/graphics/Bitmap;Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 10
    move-result v1

    .line 11
    .line 12
    add-int/lit8 v1, v1, -0x2

    .line 13
    .line 14
    iget-object v2, p1, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v0}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v2, p1, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v1}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v3

    .line 33
    mul-int/2addr v2, v3

    .line 34
    .line 35
    new-array v2, v2, [I

    .line 36
    .line 37
    iput-object v2, p1, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    move v3, v2

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v4

    .line 48
    .line 49
    if-eqz v4, :cond_7

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    check-cast v4, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v5

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v6

    .line 64
    .line 65
    if-eqz v6, :cond_0

    .line 66
    .line 67
    .line 68
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v6

    .line 70
    .line 71
    check-cast v6, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 72
    .line 73
    iget v7, v6, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 74
    const/4 v8, 0x1

    .line 75
    add-int/2addr v7, v8

    .line 76
    .line 77
    iget v9, v4, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 78
    add-int/2addr v9, v8

    .line 79
    .line 80
    iget v6, v6, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 81
    add-int/2addr v6, v8

    .line 82
    .line 83
    iget v10, v4, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 84
    add-int/2addr v10, v8

    .line 85
    .line 86
    .line 87
    invoke-static {p0, v7, v6, v9, v10}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->hasSameColor(Landroid/graphics/Bitmap;IIII)Z

    .line 88
    move-result v6

    .line 89
    .line 90
    if-eqz v6, :cond_6

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 94
    move-result v6

    .line 95
    .line 96
    if-lt v7, v6, :cond_1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 100
    move-result v6

    .line 101
    .line 102
    if-lez v6, :cond_1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 106
    move-result v6

    .line 107
    .line 108
    add-int/lit8 v7, v6, -0x1

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 112
    move-result v6

    .line 113
    .line 114
    if-lt v9, v6, :cond_2

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 118
    move-result v6

    .line 119
    .line 120
    if-lez v6, :cond_2

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 124
    move-result v6

    .line 125
    .line 126
    add-int/lit8 v9, v6, -0x1

    .line 127
    .line 128
    :cond_2
    if-gez v7, :cond_3

    .line 129
    move v7, v2

    .line 130
    .line 131
    :cond_3
    if-gez v9, :cond_4

    .line 132
    move v9, v2

    .line 133
    .line 134
    .line 135
    :cond_4
    invoke-virtual {p0, v7, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 136
    move-result v6

    .line 137
    .line 138
    .line 139
    invoke-static {v6}, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->isTransparent(I)Z

    .line 140
    move-result v7

    .line 141
    .line 142
    if-eqz v7, :cond_5

    .line 143
    move v6, v2

    .line 144
    .line 145
    :cond_5
    iget-object v7, p1, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    .line 146
    .line 147
    aput v6, v7, v3

    .line 148
    goto :goto_1

    .line 149
    .line 150
    :cond_6
    iget-object v6, p1, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    .line 151
    .line 152
    aput v8, v6, v3

    .line 153
    .line 154
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 155
    goto :goto_0

    .line 156
    :cond_7
    return-void
.end method

.method private static setupPadding(Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;II[I)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-eqz p3, :cond_1

    .line 5
    array-length v2, p3

    .line 6
    const/4 v3, 0x4

    .line 7
    .line 8
    if-eq v2, v3, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 17
    .line 18
    aget p0, p3, v1

    .line 19
    .line 20
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 21
    const/4 p0, 0x1

    .line 22
    .line 23
    aget p0, p3, p0

    .line 24
    .line 25
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 26
    .line 27
    aget p0, p3, v0

    .line 28
    .line 29
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 30
    const/4 p0, 0x3

    .line 31
    .line 32
    aget p0, p3, p0

    .line 33
    .line 34
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 35
    return-void

    .line 36
    :cond_1
    :goto_0
    sub-int/2addr p1, v0

    .line 37
    sub-int/2addr p2, v0

    .line 38
    .line 39
    new-instance p3, Landroid/graphics/Rect;

    .line 40
    .line 41
    .line 42
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 43
    .line 44
    iput-object p3, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 53
    .line 54
    iget v0, v0, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 55
    .line 56
    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 57
    .line 58
    iget-object p3, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 67
    .line 68
    iget v0, v0, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 69
    sub-int/2addr p1, v0

    .line 70
    .line 71
    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 74
    .line 75
    iget-object p3, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object p3

    .line 80
    .line 81
    check-cast p3, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 82
    .line 83
    iget p3, p3, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 84
    .line 85
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 86
    .line 87
    iget-object p1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object p0

    .line 94
    .line 95
    check-cast p0, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 96
    .line 97
    iget p0, p0, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 98
    sub-int/2addr p2, p0

    .line 99
    .line 100
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 101
    return-void
.end method


# virtual methods
.method public toBytes()[B
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x8

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x20

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 17
    .line 18
    mul-int/lit8 v1, v1, 0x8

    .line 19
    add-int/2addr v0, v1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    .line 22
    array-length v1, v1

    .line 23
    .line 24
    mul-int/lit8 v1, v1, 0x4

    .line 25
    add-int/2addr v0, v1

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x1

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v1

    .line 56
    .line 57
    mul-int/lit8 v1, v1, 0x2

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    .line 65
    move-result v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result v1

    .line 75
    .line 76
    mul-int/lit8 v1, v1, 0x2

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    .line 84
    move-result v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    .line 90
    array-length v1, v1

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    .line 98
    move-result v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 102
    const/4 v1, 0x0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 111
    .line 112
    if-nez v2, :cond_0

    .line 113
    .line 114
    new-instance v2, Landroid/graphics/Rect;

    .line 115
    .line 116
    .line 117
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 118
    .line 119
    iput-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 120
    .line 121
    :cond_0
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 122
    .line 123
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 127
    .line 128
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 129
    .line 130
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 134
    .line 135
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 136
    .line 137
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->padding:Landroid/graphics/Rect;

    .line 143
    .line 144
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    .line 152
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->xDivs:Ljava/util/ArrayList;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    move-result-object v2

    .line 157
    .line 158
    .line 159
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    move-result v3

    .line 161
    .line 162
    if-eqz v3, :cond_1

    .line 163
    .line 164
    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    move-result-object v3

    .line 167
    .line 168
    check-cast v3, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 169
    .line 170
    iget v4, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 174
    .line 175
    iget v3, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 179
    goto :goto_0

    .line 180
    .line 181
    :cond_1
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->yDivs:Ljava/util/ArrayList;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    move-result-object v2

    .line 186
    .line 187
    .line 188
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    move-result v3

    .line 190
    .line 191
    if-eqz v3, :cond_2

    .line 192
    .line 193
    .line 194
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    move-result-object v3

    .line 196
    .line 197
    check-cast v3, Lcom/narvii/monetization/bubble/ninePatch/Div;

    .line 198
    .line 199
    iget v4, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 203
    .line 204
    iget v3, v3, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 208
    goto :goto_1

    .line 209
    .line 210
    :cond_2
    iget-object v2, p0, Lcom/narvii/monetization/bubble/ninePatch/NinePathChunk;->colors:[I

    .line 211
    array-length v3, v2

    .line 212
    .line 213
    :goto_2
    if-ge v1, v3, :cond_3

    .line 214
    .line 215
    aget v4, v2, v1

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 219
    .line 220
    add-int/lit8 v1, v1, 0x1

    .line 221
    goto :goto_2

    .line 222
    .line 223
    .line 224
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 225
    move-result-object v0

    .line 226
    return-object v0
.end method
