.class public Lcom/narvii/nvplayerview/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SHARED_ELEMENT_TRANSITION_SUPPORT_SDK_INT:I = 0x17

.field private static photoManager:Lcom/narvii/photos/PhotoManager;


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

.method private static getLocalPhotoRatio(Lcom/narvii/app/NVContext;Ljava/lang/String;)F
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/nvplayerview/Utils;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "photo"

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, Lcom/narvii/photos/PhotoManager;

    .line 13
    .line 14
    sput-object p0, Lcom/narvii/nvplayerview/Utils;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 15
    .line 16
    :cond_0
    sget-object p0, Lcom/narvii/nvplayerview/Utils;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 26
    const/4 v0, 0x1

    .line 27
    .line 28
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 38
    .line 39
    if-lez p0, :cond_1

    .line 40
    .line 41
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 42
    .line 43
    if-lez p1, :cond_1

    .line 44
    int-to-float p0, p0

    .line 45
    .line 46
    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    mul-float/2addr p0, v0

    .line 48
    int-to-float p1, p1

    .line 49
    div-float/2addr p0, p1

    .line 50
    return p0

    .line 51
    .line 52
    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    .line 53
    return p0
.end method

.method public static getVisibilityHorizontalPercentage(Landroid/view/View;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v1

    .line 15
    .line 16
    new-instance v2, Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 23
    move-result p0

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lcom/narvii/nvplayerview/Utils;->viewIsPartiallyHiddenLeft(Landroid/graphics/Rect;)Z

    .line 29
    move-result p0

    .line 30
    .line 31
    const/16 v0, 0x64

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    iget p0, v2, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    sub-int p0, v1, p0

    .line 38
    mul-int/2addr p0, v0

    .line 39
    div-int/2addr p0, v1

    .line 40
    return p0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {v2, v1}, Lcom/narvii/nvplayerview/Utils;->viewIsPartiallyHiddenRight(Landroid/graphics/Rect;I)Z

    .line 44
    move-result p0

    .line 45
    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    iget p0, v2, Landroid/graphics/Rect;->right:I

    .line 49
    mul-int/2addr p0, v0

    .line 50
    div-int/2addr p0, v1

    .line 51
    return p0

    .line 52
    :cond_2
    :goto_0
    return v0
.end method

.method public static getVisibilityPercentage(Landroid/view/View;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    move-result v1

    .line 15
    .line 16
    new-instance v2, Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 23
    move-result p0

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lcom/narvii/nvplayerview/Utils;->viewIsPartiallyHiddenTop(Landroid/graphics/Rect;)Z

    .line 29
    move-result p0

    .line 30
    .line 31
    const/16 v0, 0x64

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    iget p0, v2, Landroid/graphics/Rect;->top:I

    .line 36
    .line 37
    sub-int p0, v1, p0

    .line 38
    mul-int/2addr p0, v0

    .line 39
    div-int/2addr p0, v1

    .line 40
    return p0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {v2, v1}, Lcom/narvii/nvplayerview/Utils;->viewIsPartiallyHiddenBottom(Landroid/graphics/Rect;I)Z

    .line 44
    move-result p0

    .line 45
    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 49
    mul-int/2addr p0, v0

    .line 50
    div-int/2addr p0, v1

    .line 51
    return p0

    .line 52
    :cond_2
    :goto_0
    return v0
.end method

.method public static predictRatio(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;)F
    .locals 5

    .line 1
    .line 2
    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    .line 4
    if-eqz p1, :cond_5

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    goto :goto_2

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {v1}, Lcom/narvii/util/Utils;->getUrlWithoutQuery(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    :try_start_0
    const-string v2, "-"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    array-length v3, v2

    .line 21
    const/4 v4, 0x3

    .line 22
    .line 23
    if-ne v3, v4, :cond_2

    .line 24
    const/4 p0, 0x1

    .line 25
    .line 26
    aget-object p0, v2, p0

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    move-result p0

    .line 31
    const/4 p1, 0x2

    .line 32
    .line 33
    aget-object v1, v2, p1

    .line 34
    .line 35
    const-string v2, "_"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    array-length v2, v1

    .line 41
    .line 42
    if-ne v2, p1, :cond_5

    .line 43
    const/4 v2, 0x0

    .line 44
    .line 45
    aget-object v3, v1, v2

    .line 46
    .line 47
    const-string v4, "v2"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 51
    move-result v3

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    aget-object v3, v1, v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 59
    move-result v4

    .line 60
    sub-int/2addr v4, p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    aput-object p1, v1, v2

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_1
    :goto_0
    aget-object p1, v1, v2

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    move-result p1

    .line 76
    .line 77
    if-lez p0, :cond_5

    .line 78
    .line 79
    if-lez p1, :cond_5

    .line 80
    int-to-float p0, p0

    .line 81
    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    mul-float/2addr p0, v0

    .line 84
    int-to-float p1, p1

    .line 85
    div-float/2addr p0, p1

    .line 86
    return p0

    .line 87
    .line 88
    :cond_2
    const-string v2, "photo"

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v1

    .line 101
    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    iget-object p1, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 105
    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    .line 109
    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/Utils;->getLocalPhotoRatio(Lcom/narvii/app/NVContext;Ljava/lang/String;)F

    .line 110
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return p0

    .line 112
    :cond_3
    return v0

    .line 113
    .line 114
    .line 115
    :cond_4
    const p0, 0x3fe38e39

    .line 116
    return p0

    .line 117
    .line 118
    .line 119
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    :cond_5
    :goto_2
    return v0
.end method

.method private static viewIsPartiallyHiddenBottom(Landroid/graphics/Rect;I)Z
    .locals 1

    .line 1
    .line 2
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-lt p0, v0, :cond_0

    .line 6
    sub-int/2addr p1, v0

    .line 7
    .line 8
    if-gt p0, p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method private static viewIsPartiallyHiddenLeft(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 3
    .line 4
    if-lez p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method private static viewIsPartiallyHiddenRight(Landroid/graphics/Rect;I)Z
    .locals 1

    .line 1
    .line 2
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-lt p0, v0, :cond_0

    .line 6
    sub-int/2addr p1, v0

    .line 7
    .line 8
    if-gt p0, p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method private static viewIsPartiallyHiddenTop(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 3
    .line 4
    if-lez p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method
