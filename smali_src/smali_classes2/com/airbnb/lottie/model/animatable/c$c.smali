.class Lcom/airbnb/lottie/model/animatable/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/m$a<",
        "Lcom/airbnb/lottie/model/content/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final colorPoints:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/model/animatable/c$c;->colorPoints:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/airbnb/lottie/model/animatable/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/animatable/c$c;-><init>(I)V

    return-void
.end method

.method private b(Lcom/airbnb/lottie/model/content/c;Lorg/json/JSONArray;)V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/airbnb/lottie/model/animatable/c$c;->colorPoints:I

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-gt v1, v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 15
    move-result v1

    .line 16
    sub-int/2addr v1, v0

    .line 17
    .line 18
    div-int/lit8 v1, v1, 0x2

    .line 19
    .line 20
    new-array v2, v1, [D

    .line 21
    .line 22
    new-array v1, v1, [D

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 28
    move-result v5

    .line 29
    .line 30
    if-ge v0, v5, :cond_2

    .line 31
    .line 32
    rem-int/lit8 v5, v0, 0x2

    .line 33
    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optDouble(I)D

    .line 38
    move-result-wide v5

    .line 39
    .line 40
    aput-wide v5, v2, v4

    .line 41
    goto :goto_1

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optDouble(I)D

    .line 45
    move-result-wide v5

    .line 46
    .line 47
    aput-wide v5, v1, v4

    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/c;->c()I

    .line 56
    move-result p2

    .line 57
    .line 58
    if-ge v3, p2, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/c;->a()[I

    .line 62
    move-result-object p2

    .line 63
    .line 64
    aget p2, p2, v3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/c;->b()[F

    .line 68
    move-result-object v0

    .line 69
    .line 70
    aget v0, v0, v3

    .line 71
    float-to-double v4, v0

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v4, v5, v2, v1}, Lcom/airbnb/lottie/model/animatable/c$c;->c(D[D[D)I

    .line 75
    move-result v0

    .line 76
    .line 77
    .line 78
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 79
    move-result v4

    .line 80
    .line 81
    .line 82
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 83
    move-result v5

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 87
    move-result p2

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v4, v5, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 91
    move-result p2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/c;->a()[I

    .line 95
    move-result-object v0

    .line 96
    .line 97
    aput p2, v0, v3

    .line 98
    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    return-void
.end method

.method private c(D[D[D)I
    .locals 19
    .annotation build Landroidx/annotation/IntRange;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p3

    .line 3
    .line 4
    move-object/from16 v1, p4

    .line 5
    const/4 v2, 0x1

    .line 6
    move v3, v2

    .line 7
    :goto_0
    array-length v4, v0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v5, 0x406fe00000000000L    # 255.0

    .line 13
    .line 14
    if-ge v3, v4, :cond_1

    .line 15
    .line 16
    add-int/lit8 v4, v3, -0x1

    .line 17
    .line 18
    aget-wide v7, v0, v4

    .line 19
    .line 20
    aget-wide v9, v0, v3

    .line 21
    .line 22
    cmpl-double v11, v9, p1

    .line 23
    .line 24
    if-ltz v11, :cond_0

    .line 25
    .line 26
    sub-double v11, p1, v7

    .line 27
    sub-double/2addr v9, v7

    .line 28
    .line 29
    div-double v17, v11, v9

    .line 30
    .line 31
    aget-wide v13, v1, v4

    .line 32
    .line 33
    aget-wide v15, v1, v3

    .line 34
    .line 35
    .line 36
    invoke-static/range {v13 .. v18}, Lcom/airbnb/lottie/utils/e;->g(DDD)D

    .line 37
    move-result-wide v0

    .line 38
    :goto_1
    mul-double/2addr v0, v5

    .line 39
    double-to-int v0, v0

    .line 40
    return v0

    .line 41
    .line 42
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    array-length v0, v1

    .line 45
    sub-int/2addr v0, v2

    .line 46
    .line 47
    aget-wide v0, v1, v0

    .line 48
    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/c$c;->d(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/content/c;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/content/c;
    .locals 12

    .line 1
    .line 2
    check-cast p1, Lorg/json/JSONArray;

    .line 3
    .line 4
    iget p2, p0, Lcom/airbnb/lottie/model/animatable/c$c;->colorPoints:I

    .line 5
    .line 6
    new-array v0, p2, [F

    .line 7
    .line 8
    new-array p2, p2, [I

    .line 9
    .line 10
    new-instance v1, Lcom/airbnb/lottie/model/content/c;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v0, p2}, Lcom/airbnb/lottie/model/content/c;-><init>([F[I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 17
    move-result v2

    .line 18
    .line 19
    iget v3, p0, Lcom/airbnb/lottie/model/animatable/c$c;->colorPoints:I

    .line 20
    .line 21
    mul-int/lit8 v3, v3, 0x4

    .line 22
    .line 23
    if-eq v2, v3, :cond_0

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v3, "Unexpected gradient length: "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 37
    move-result v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, ". Expected "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    iget v3, p0, Lcom/airbnb/lottie/model/animatable/c$c;->colorPoints:I

    .line 48
    .line 49
    mul-int/lit8 v3, v3, 0x4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, ". This may affect the appearance of the gradient. "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v3, "Make sure to save your After Effects file before exporting an animation with "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v3, "gradients."

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    const-string v3, "LOTTIE"

    .line 74
    .line 75
    .line 76
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    const/4 v2, 0x0

    .line 78
    move v3, v2

    .line 79
    move v4, v3

    .line 80
    .line 81
    :goto_0
    iget v5, p0, Lcom/airbnb/lottie/model/animatable/c$c;->colorPoints:I

    .line 82
    .line 83
    mul-int/lit8 v5, v5, 0x4

    .line 84
    .line 85
    if-ge v2, v5, :cond_5

    .line 86
    .line 87
    div-int/lit8 v5, v2, 0x4

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optDouble(I)D

    .line 91
    move-result-wide v6

    .line 92
    .line 93
    rem-int/lit8 v8, v2, 0x4

    .line 94
    .line 95
    if-eqz v8, :cond_4

    .line 96
    const/4 v9, 0x1

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    const-wide v10, 0x406fe00000000000L    # 255.0

    .line 102
    .line 103
    if-eq v8, v9, :cond_3

    .line 104
    const/4 v9, 0x2

    .line 105
    .line 106
    if-eq v8, v9, :cond_2

    .line 107
    const/4 v9, 0x3

    .line 108
    .line 109
    if-eq v8, v9, :cond_1

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    mul-double/2addr v6, v10

    .line 112
    double-to-int v6, v6

    .line 113
    .line 114
    const/16 v7, 0xff

    .line 115
    .line 116
    .line 117
    invoke-static {v7, v3, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    .line 118
    move-result v6

    .line 119
    .line 120
    aput v6, p2, v5

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    mul-double/2addr v6, v10

    .line 123
    double-to-int v4, v6

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    mul-double/2addr v6, v10

    .line 126
    double-to-int v3, v6

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    double-to-float v6, v6

    .line 129
    .line 130
    aput v6, v0, v5

    .line 131
    .line 132
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 133
    goto :goto_0

    .line 134
    .line 135
    .line 136
    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/airbnb/lottie/model/animatable/c$c;->b(Lcom/airbnb/lottie/model/content/c;Lorg/json/JSONArray;)V

    .line 137
    return-object v1
.end method
