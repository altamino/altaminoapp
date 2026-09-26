.class public Lcom/narvii/sharedfolder/SharedPhotoColorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final albumTagColors:[I

.field public static final nickNameColors:[I

.field public static sparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final radiusArray:[F

.field public final rtlRadiusArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xc

    .line 3
    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->nickNameColors:[I

    .line 10
    const/4 v0, 0x7

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    .line 15
    fill-array-data v0, :array_1

    .line 16
    .line 17
    sput-object v0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->albumTagColors:[I

    .line 18
    .line 19
    new-instance v0, Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 23
    .line 24
    sput-object v0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->sparseArray:Landroid/util/SparseArray;

    .line 25
    return-void

    .line 26
    nop

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    :array_0
    .array-data 4
        -0xff2921
        -0xfd6b01
        -0x88ff01
        -0x59ff01
        -0x2fff18
        -0x2af8d
        -0x5900
        -0x3eb4
        -0x61800
        -0xa22900
        -0xf94bb1
        -0xff207e
    .end array-data

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    :array_1
    .array-data 4
        -0xfd6b01
        -0x88ff01
        -0x59ff01
        -0x2fff18
        -0x2af8d
        -0x5900
        -0xff207e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/high16 v0, 0x41700000    # 15.0f

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 9
    move-result p1

    .line 10
    float-to-int p1, p1

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    new-array v1, v0, [F

    .line 15
    int-to-float p1, p1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    aput p1, v1, v2

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    aput p1, v1, v3

    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x0

    .line 24
    .line 25
    aput v5, v1, v4

    .line 26
    const/4 v6, 0x3

    .line 27
    .line 28
    aput v5, v1, v6

    .line 29
    const/4 v7, 0x4

    .line 30
    .line 31
    aput v5, v1, v7

    .line 32
    const/4 v8, 0x5

    .line 33
    .line 34
    aput v5, v1, v8

    .line 35
    const/4 v9, 0x6

    .line 36
    .line 37
    aput p1, v1, v9

    .line 38
    const/4 v10, 0x7

    .line 39
    .line 40
    aput p1, v1, v10

    .line 41
    .line 42
    iput-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->radiusArray:[F

    .line 43
    .line 44
    new-array v0, v0, [F

    .line 45
    .line 46
    aput v5, v0, v2

    .line 47
    .line 48
    aput v5, v0, v3

    .line 49
    .line 50
    aput p1, v0, v4

    .line 51
    .line 52
    aput p1, v0, v6

    .line 53
    .line 54
    aput p1, v0, v7

    .line 55
    .line 56
    aput p1, v0, v8

    .line 57
    .line 58
    aput v5, v0, v9

    .line 59
    .line 60
    aput v5, v0, v10

    .line 61
    .line 62
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->rtlRadiusArray:[F

    .line 63
    return-void
.end method

.method private getRandomIndex(Ljava/lang/String;[I)I
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result p1

    .line 9
    array-length p2, p2

    .line 10
    rem-int/2addr p1, p2

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method


# virtual methods
.method public getNickNameColor(Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->nickNameColors:[I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->getRandomIndex(Ljava/lang/String;[I)I

    .line 6
    move-result p1

    .line 7
    .line 8
    aget p1, v0, p1

    .line 9
    return p1
.end method

.method public getTagBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 3
    invoke-static {p2, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    aget v1, p1, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 5
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 6
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 7
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->rtlRadiusArray:[F

    .line 8
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->radiusArray:[F

    .line 9
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 10
    :goto_0
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 11
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 12
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->rtlRadiusArray:[F

    .line 13
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->radiusArray:[F

    .line 14
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 15
    :goto_1
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    .line 16
    invoke-virtual {p1, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    new-array p2, p2, [I

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public getTagBackground(Landroid/content/Context;Lcom/narvii/model/SharedAlbum;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->albumTagColors:[I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2, p1}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->getRandomIndex(Ljava/lang/String;[I)I

    move-result p2

    aget p2, v0, p2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->getTagBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
