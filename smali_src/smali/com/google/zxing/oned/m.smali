.class public final Lcom/google/zxing/oned/m;
.super Lcom/google/zxing/oned/o;
.source "SourceFile"


# static fields
.field private static final END_PATTERN:[I

.field private static final N:I = 0x1

.field private static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/zxing/oned/m;->START_PATTERN:[I

    const/4 v1, 0x3

    filled-new-array {v1, v0, v0}, [I

    move-result-object v2

    sput-object v2, Lcom/google/zxing/oned/m;->END_PATTERN:[I

    const/16 v2, 0xa

    new-array v2, v2, [[I

    const/4 v3, 0x0

    filled-new-array {v0, v0, v1, v1, v0}, [I

    move-result-object v4

    aput-object v4, v2, v3

    filled-new-array {v1, v0, v0, v0, v1}, [I

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    filled-new-array {v0, v1, v0, v0, v1}, [I

    move-result-object v4

    aput-object v4, v2, v3

    filled-new-array {v1, v1, v0, v0, v0}, [I

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x4

    filled-new-array {v0, v0, v1, v0, v1}, [I

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    filled-new-array {v1, v0, v1, v0, v0}, [I

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    filled-new-array {v0, v1, v1, v0, v0}, [I

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    filled-new-array {v0, v0, v0, v1, v1}, [I

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    filled-new-array {v1, v0, v0, v1, v0}, [I

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    filled-new-array {v0, v1, v0, v1, v0}, [I

    move-result-object v0

    aput-object v0, v2, v3

    sput-object v2, Lcom/google/zxing/oned/m;->PATTERNS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/zxing/oned/o;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lg5/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/c;",
            "*>;)",
            "Lg5/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/zxing/a;->ITF:Lcom/google/zxing/a;

    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/o;->a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lg5/b;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-string p3, "Can only encode ITF, but got "

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method

.method public c(Ljava/lang/String;)[Z
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    rem-int/lit8 v1, v0, 0x2

    .line 7
    .line 8
    if-nez v1, :cond_3

    .line 9
    .line 10
    const/16 v1, 0x50

    .line 11
    .line 12
    if-gt v0, v1, :cond_2

    .line 13
    .line 14
    mul-int/lit8 v1, v0, 0x9

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x9

    .line 17
    .line 18
    new-array v1, v1, [Z

    .line 19
    .line 20
    sget-object v2, Lcom/google/zxing/oned/m;->START_PATTERN:[I

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v3, v2, v4}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 26
    move-result v2

    .line 27
    move v5, v3

    .line 28
    .line 29
    :goto_0
    if-ge v5, v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 33
    move-result v6

    .line 34
    .line 35
    const/16 v7, 0xa

    .line 36
    .line 37
    .line 38
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    .line 39
    move-result v6

    .line 40
    .line 41
    add-int/lit8 v8, v5, 0x1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    .line 45
    move-result v8

    .line 46
    .line 47
    .line 48
    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    .line 49
    move-result v8

    .line 50
    .line 51
    new-array v7, v7, [I

    .line 52
    move v9, v3

    .line 53
    :goto_1
    const/4 v10, 0x5

    .line 54
    .line 55
    if-ge v9, v10, :cond_0

    .line 56
    .line 57
    mul-int/lit8 v10, v9, 0x2

    .line 58
    .line 59
    sget-object v11, Lcom/google/zxing/oned/m;->PATTERNS:[[I

    .line 60
    .line 61
    aget-object v12, v11, v6

    .line 62
    .line 63
    aget v12, v12, v9

    .line 64
    .line 65
    aput v12, v7, v10

    .line 66
    add-int/2addr v10, v4

    .line 67
    .line 68
    aget-object v11, v11, v8

    .line 69
    .line 70
    aget v11, v11, v9

    .line 71
    .line 72
    aput v11, v7, v10

    .line 73
    .line 74
    add-int/lit8 v9, v9, 0x1

    .line 75
    goto :goto_1

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-static {v1, v2, v7, v4}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 79
    move-result v6

    .line 80
    add-int/2addr v2, v6

    .line 81
    .line 82
    add-int/lit8 v5, v5, 0x2

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_1
    sget-object p1, Lcom/google/zxing/oned/m;->END_PATTERN:[I

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v2, p1, v4}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 89
    return-object v1

    .line 90
    .line 91
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    const-string v1, "Requested contents should be less than 80 digits long, but got "

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p1

    .line 106
    .line 107
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    const-string v0, "The length of the input should be even"

    .line 110
    .line 111
    .line 112
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p1
.end method
