.class public Lcom/airbnb/lottie/model/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/m$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/m$a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/model/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/airbnb/lottie/model/a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/airbnb/lottie/model/a;->INSTANCE:Lcom/airbnb/lottie/model/a;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/a;->b(Ljava/lang/Object;F)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Ljava/lang/Object;F)Ljava/lang/Integer;
    .locals 7

    .line 1
    .line 2
    check-cast p1, Lorg/json/JSONArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x4

    .line 8
    .line 9
    if-ne p2, v0, :cond_3

    .line 10
    const/4 p2, 0x0

    .line 11
    const/4 v0, 0x1

    .line 12
    move v1, p2

    .line 13
    move v2, v0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 17
    move-result v3

    .line 18
    .line 19
    if-ge v1, v3, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optDouble(I)D

    .line 23
    move-result-wide v3

    .line 24
    .line 25
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 26
    .line 27
    cmpl-double v3, v3, v5

    .line 28
    .line 29
    if-lez v3, :cond_0

    .line 30
    move v2, p2

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const/high16 v1, 0x437f0000    # 255.0f

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    :goto_1
    const/4 v2, 0x3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optDouble(I)D

    .line 45
    move-result-wide v2

    .line 46
    float-to-double v4, v1

    .line 47
    mul-double/2addr v2, v4

    .line 48
    double-to-int v1, v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optDouble(I)D

    .line 52
    move-result-wide v2

    .line 53
    mul-double/2addr v2, v4

    .line 54
    double-to-int p2, v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optDouble(I)D

    .line 58
    move-result-wide v2

    .line 59
    mul-double/2addr v2, v4

    .line 60
    double-to-int v0, v2

    .line 61
    const/4 v2, 0x2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optDouble(I)D

    .line 65
    move-result-wide v2

    .line 66
    mul-double/2addr v2, v4

    .line 67
    double-to-int p1, v2

    .line 68
    .line 69
    .line 70
    invoke-static {v1, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 71
    move-result p1

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    .line 78
    :cond_3
    const/high16 p1, -0x1000000

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method
