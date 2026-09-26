.class public final Lcoil/decode/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExifUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExifUtils.kt\ncoil/decode/ExifUtils\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,132:1\n95#2:133\n95#2:134\n43#2,3:135\n*S KotlinDebug\n*F\n+ 1 ExifUtils.kt\ncoil/decode/ExifUtils\n*L\n65#1:133\n67#1:134\n70#1:135,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcoil/decode/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PAINT:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcoil/decode/m;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcoil/decode/m;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcoil/decode/m;->INSTANCE:Lcoil/decode/m;

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Paint;

    .line 10
    const/4 v1, 0x3

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 14
    .line 15
    sput-object v0, Lcoil/decode/m;->PAINT:Landroid/graphics/Paint;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lokio/BufferedSource;Lcoil/decode/l;)Lcoil/decode/j;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/decode/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p3, p1}, Lcoil/decode/n;->c(Lcoil/decode/l;Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Landroidx/exifinterface/media/ExifInterface;

    .line 9
    .line 10
    new-instance p3, Lcoil/decode/k;

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Lokio/BufferedSource;->peek()Lokio/BufferedSource;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-direct {p3, p2}, Lcoil/decode/k;-><init>(Ljava/io/InputStream;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p3}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 25
    .line 26
    new-instance p2, Lcoil/decode/j;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface;->t()Z

    .line 30
    move-result p3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface;->l()I

    .line 34
    move-result p1

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p3, p1}, Lcoil/decode/j;-><init>(ZI)V

    .line 38
    return-object p2

    .line 39
    .line 40
    :cond_0
    sget-object p1, Lcoil/decode/j;->NONE:Lcoil/decode/j;

    .line 41
    return-object p1
.end method

.method public final b(Landroid/graphics/Bitmap;Lcoil/decode/j;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/decode/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcoil/decode/j;->b()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcoil/decode/n;->a(Lcoil/decode/j;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 22
    move-result v1

    .line 23
    int-to-float v1, v1

    .line 24
    .line 25
    const/high16 v2, 0x40000000    # 2.0f

    .line 26
    div-float/2addr v1, v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 30
    move-result v3

    .line 31
    int-to-float v3, v3

    .line 32
    div-float/2addr v3, v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcoil/decode/j;->b()Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const/high16 v2, -0x40800000    # -1.0f

    .line 41
    .line 42
    const/high16 v4, 0x3f800000    # 1.0f

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-static {p2}, Lcoil/decode/n;->a(Lcoil/decode/j;)Z

    .line 49
    move-result v2

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcoil/decode/j;->a()I

    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 60
    .line 61
    :cond_2
    new-instance v1, Landroid/graphics/RectF;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 65
    move-result v2

    .line 66
    int-to-float v2, v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 70
    move-result v3

    .line 71
    int-to-float v3, v3

    .line 72
    const/4 v4, 0x0

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 79
    .line 80
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 81
    .line 82
    cmpg-float v3, v2, v4

    .line 83
    .line 84
    if-nez v3, :cond_3

    .line 85
    .line 86
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 87
    .line 88
    cmpg-float v3, v3, v4

    .line 89
    .line 90
    if-nez v3, :cond_3

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    neg-float v2, v2

    .line 93
    .line 94
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 95
    neg-float v1, v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 99
    .line 100
    .line 101
    :goto_0
    invoke-static {p2}, Lcoil/decode/n;->b(Lcoil/decode/j;)Z

    .line 102
    move-result p2

    .line 103
    .line 104
    const-string v1, "createBitmap(width, height, config)"

    .line 105
    .line 106
    if-eqz p2, :cond_4

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 110
    move-result p2

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 114
    move-result v2

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Lcoil/util/a;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    .line 121
    invoke-static {p2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 122
    move-result-object p2

    .line 123
    .line 124
    .line 125
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    goto :goto_1

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 130
    move-result p2

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 134
    move-result v2

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Lcoil/util/a;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    .line 141
    invoke-static {p2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 142
    move-result-object p2

    .line 143
    .line 144
    .line 145
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    .line 148
    .line 149
    .line 150
    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    .line 152
    sget-object v2, Lcoil/decode/m;->PAINT:Landroid/graphics/Paint;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, p1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    return-object p2
.end method
