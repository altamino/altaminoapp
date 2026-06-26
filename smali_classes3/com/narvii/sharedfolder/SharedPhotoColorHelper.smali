.class public Lcom/narvii/sharedfolder/SharedPhotoColorHelper;
.super Ljava/lang/Object;
.source "SharedPhotoColorHelper.java"


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

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 19
    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->nickNameColors:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 20
    fill-array-data v0, :array_1

    sput-object v0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->albumTagColors:[I

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->sparseArray:Landroid/util/SparseArray;

    return-void

    nop

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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41700000    # 15.0f

    .line 27
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    const/16 v0, 0x8

    new-array v1, v0, [F

    int-to-float p1, p1

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p1, v1, v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, v1, v4

    const/4 v6, 0x3

    aput v5, v1, v6

    const/4 v7, 0x4

    aput v5, v1, v7

    const/4 v8, 0x5

    aput v5, v1, v8

    const/4 v9, 0x6

    aput p1, v1, v9

    const/4 v10, 0x7

    aput p1, v1, v10

    .line 28
    iput-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->radiusArray:[F

    new-array v0, v0, [F

    aput v5, v0, v2

    aput v5, v0, v3

    aput p1, v0, v4

    aput p1, v0, v6

    aput p1, v0, v7

    aput p1, v0, v8

    aput v5, v0, v9

    aput v5, v0, v10

    .line 29
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->rtlRadiusArray:[F

    return-void
.end method

.method private getRandomIndex(Ljava/lang/String;[I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 36
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    array-length p2, p2

    rem-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getNickNameColor(Ljava/lang/String;)I
    .locals 1

    .line 40
    sget-object v0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->nickNameColors:[I

    invoke-direct {p0, p1, v0}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->getRandomIndex(Ljava/lang/String;[I)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public getTagBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 50
    invoke-static {p2, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    .line 51
    aget v1, p1, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    aput v1, p1, v0

    .line 52
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 53
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 55
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 56
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 57
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->rtlRadiusArray:[F

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->radiusArray:[F

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 61
    :goto_0
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 62
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 63
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->rtlRadiusArray:[F

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_1

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->radiusArray:[F

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 68
    :goto_1
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 69
    invoke-virtual {p1, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v3, [I

    .line 70
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public getTagBackground(Landroid/content/Context;Lcom/narvii/model/SharedAlbum;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 44
    sget-object v0, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->albumTagColors:[I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    sget-object v1, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->albumTagColors:[I

    invoke-direct {p0, p2, v1}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->getRandomIndex(Ljava/lang/String;[I)I

    move-result p2

    aget p2, v0, p2

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->getTagBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
