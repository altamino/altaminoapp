.class public Lcom/airbnb/lottie/model/content/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final colors:[I

.field private final positions:[F


# direct methods
.method public constructor <init>([F[I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/c;->positions:[F

    .line 6
    .line 7
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/c;->colors:[I

    .line 8
    return-void
.end method


# virtual methods
.method public a()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/c;->colors:[I

    return-object v0
.end method

.method public b()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/c;->positions:[F

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/c;->colors:[I

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public d(Lcom/airbnb/lottie/model/content/c;Lcom/airbnb/lottie/model/content/c;F)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/airbnb/lottie/model/content/c;->colors:[I

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    iget-object v1, p2, Lcom/airbnb/lottie/model/content/c;->colors:[I

    .line 6
    array-length v1, v1

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    :goto_0
    iget-object v1, p1, Lcom/airbnb/lottie/model/content/c;->colors:[I

    .line 12
    array-length v1, v1

    .line 13
    .line 14
    if-ge v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/c;->positions:[F

    .line 17
    .line 18
    iget-object v2, p1, Lcom/airbnb/lottie/model/content/c;->positions:[F

    .line 19
    .line 20
    aget v2, v2, v0

    .line 21
    .line 22
    iget-object v3, p2, Lcom/airbnb/lottie/model/content/c;->positions:[F

    .line 23
    .line 24
    aget v3, v3, v0

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3, p3}, Lcom/airbnb/lottie/utils/e;->h(FFF)F

    .line 28
    move-result v2

    .line 29
    .line 30
    aput v2, v1, v0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/c;->colors:[I

    .line 33
    .line 34
    iget-object v2, p1, Lcom/airbnb/lottie/model/content/c;->colors:[I

    .line 35
    .line 36
    aget v2, v2, v0

    .line 37
    .line 38
    iget-object v3, p2, Lcom/airbnb/lottie/model/content/c;->colors:[I

    .line 39
    .line 40
    aget v3, v3, v0

    .line 41
    .line 42
    .line 43
    invoke-static {p3, v2, v3}, Lcom/airbnb/lottie/utils/a;->c(FII)I

    .line 44
    move-result v2

    .line 45
    .line 46
    aput v2, v1, v0

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void

    .line 51
    .line 52
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v1, "Cannot interpolate between gradients. Lengths vary ("

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/airbnb/lottie/model/content/c;->colors:[I

    .line 65
    array-length p1, p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p1, " vs "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    iget-object p1, p2, Lcom/airbnb/lottie/model/content/c;->colors:[I

    .line 76
    array-length p1, p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string p1, ")"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p3
.end method
