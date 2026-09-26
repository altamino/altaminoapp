.class public final Lh5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AZTEC_DATA_10:Lh5/a;

.field public static final AZTEC_DATA_12:Lh5/a;

.field public static final AZTEC_DATA_6:Lh5/a;

.field public static final AZTEC_DATA_8:Lh5/a;

.field public static final AZTEC_PARAM:Lh5/a;

.field public static final DATA_MATRIX_FIELD_256:Lh5/a;

.field public static final MAXICODE_FIELD_64:Lh5/a;

.field public static final QR_CODE_FIELD_256:Lh5/a;


# instance fields
.field private final expTable:[I

.field private final generatorBase:I

.field private final logTable:[I

.field private final one:Lh5/b;

.field private final primitive:I

.field private final size:I

.field private final zero:Lh5/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lh5/a;

    .line 3
    .line 4
    const/16 v1, 0x1069

    .line 5
    .line 6
    const/16 v2, 0x1000

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3}, Lh5/a;-><init>(III)V

    .line 11
    .line 12
    sput-object v0, Lh5/a;->AZTEC_DATA_12:Lh5/a;

    .line 13
    .line 14
    new-instance v0, Lh5/a;

    .line 15
    .line 16
    const/16 v1, 0x409

    .line 17
    .line 18
    const/16 v2, 0x400

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3}, Lh5/a;-><init>(III)V

    .line 22
    .line 23
    sput-object v0, Lh5/a;->AZTEC_DATA_10:Lh5/a;

    .line 24
    .line 25
    new-instance v0, Lh5/a;

    .line 26
    .line 27
    const/16 v1, 0x43

    .line 28
    .line 29
    const/16 v2, 0x40

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2, v3}, Lh5/a;-><init>(III)V

    .line 33
    .line 34
    sput-object v0, Lh5/a;->AZTEC_DATA_6:Lh5/a;

    .line 35
    .line 36
    new-instance v1, Lh5/a;

    .line 37
    .line 38
    const/16 v2, 0x13

    .line 39
    .line 40
    const/16 v4, 0x10

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2, v4, v3}, Lh5/a;-><init>(III)V

    .line 44
    .line 45
    sput-object v1, Lh5/a;->AZTEC_PARAM:Lh5/a;

    .line 46
    .line 47
    new-instance v1, Lh5/a;

    .line 48
    const/4 v2, 0x0

    .line 49
    .line 50
    const/16 v4, 0x11d

    .line 51
    .line 52
    const/16 v5, 0x100

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v4, v5, v2}, Lh5/a;-><init>(III)V

    .line 56
    .line 57
    sput-object v1, Lh5/a;->QR_CODE_FIELD_256:Lh5/a;

    .line 58
    .line 59
    new-instance v1, Lh5/a;

    .line 60
    .line 61
    const/16 v2, 0x12d

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, v2, v5, v3}, Lh5/a;-><init>(III)V

    .line 65
    .line 66
    sput-object v1, Lh5/a;->DATA_MATRIX_FIELD_256:Lh5/a;

    .line 67
    .line 68
    sput-object v1, Lh5/a;->AZTEC_DATA_8:Lh5/a;

    .line 69
    .line 70
    sput-object v0, Lh5/a;->MAXICODE_FIELD_64:Lh5/a;

    .line 71
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lh5/a;->primitive:I

    .line 6
    .line 7
    iput p2, p0, Lh5/a;->size:I

    .line 8
    .line 9
    iput p3, p0, Lh5/a;->generatorBase:I

    .line 10
    .line 11
    new-array p3, p2, [I

    .line 12
    .line 13
    iput-object p3, p0, Lh5/a;->expTable:[I

    .line 14
    .line 15
    new-array p3, p2, [I

    .line 16
    .line 17
    iput-object p3, p0, Lh5/a;->logTable:[I

    .line 18
    const/4 p3, 0x1

    .line 19
    const/4 v0, 0x0

    .line 20
    move v2, p3

    .line 21
    move v1, v0

    .line 22
    .line 23
    :goto_0
    if-ge v1, p2, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Lh5/a;->expTable:[I

    .line 26
    .line 27
    aput v2, v3, v1

    .line 28
    shl-int/2addr v2, p3

    .line 29
    .line 30
    if-lt v2, p2, :cond_0

    .line 31
    xor-int/2addr v2, p1

    .line 32
    .line 33
    add-int/lit8 v3, p2, -0x1

    .line 34
    and-int/2addr v2, v3

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move p1, v0

    .line 39
    .line 40
    :goto_1
    add-int/lit8 v1, p2, -0x1

    .line 41
    .line 42
    if-ge p1, v1, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Lh5/a;->logTable:[I

    .line 45
    .line 46
    iget-object v2, p0, Lh5/a;->expTable:[I

    .line 47
    .line 48
    aget v2, v2, p1

    .line 49
    .line 50
    aput p1, v1, v2

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_2
    new-instance p1, Lh5/b;

    .line 56
    .line 57
    .line 58
    filled-new-array {v0}, [I

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, p0, p2}, Lh5/b;-><init>(Lh5/a;[I)V

    .line 63
    .line 64
    iput-object p1, p0, Lh5/a;->zero:Lh5/b;

    .line 65
    .line 66
    new-instance p1, Lh5/b;

    .line 67
    .line 68
    .line 69
    filled-new-array {p3}, [I

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, p0, p2}, Lh5/b;-><init>(Lh5/a;[I)V

    .line 74
    .line 75
    iput-object p1, p0, Lh5/a;->one:Lh5/b;

    .line 76
    return-void
.end method

.method static a(II)I
    .locals 0

    .line 1
    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method b(II)Lh5/b;
    .locals 1

    .line 1
    .line 2
    if-ltz p1, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lh5/a;->zero:Lh5/b;

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    new-array p1, p1, [I

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    aput p2, p1, v0

    .line 15
    .line 16
    new-instance p2, Lh5/b;

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p0, p1}, Lh5/b;-><init>(Lh5/a;[I)V

    .line 20
    return-object p2

    .line 21
    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 26
    throw p1
.end method

.method c(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lh5/a;->expTable:[I

    .line 3
    .line 4
    aget p1, v0, p1

    .line 5
    return p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lh5/a;->generatorBase:I

    return v0
.end method

.method e()Lh5/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lh5/a;->zero:Lh5/b;

    return-object v0
.end method

.method f(I)I
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lh5/a;->expTable:[I

    .line 5
    .line 6
    iget v1, p0, Lh5/a;->size:I

    .line 7
    .line 8
    iget-object v2, p0, Lh5/a;->logTable:[I

    .line 9
    .line 10
    aget p1, v2, p1

    .line 11
    sub-int/2addr v1, p1

    .line 12
    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    aget p1, v0, v1

    .line 16
    return p1

    .line 17
    .line 18
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    .line 22
    throw p1
.end method

.method g(I)I
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lh5/a;->logTable:[I

    .line 5
    .line 6
    aget p1, v0, p1

    .line 7
    return p1

    .line 8
    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 13
    throw p1
.end method

.method h(II)I
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lh5/a;->expTable:[I

    .line 8
    .line 9
    iget-object v1, p0, Lh5/a;->logTable:[I

    .line 10
    .line 11
    aget p1, v1, p1

    .line 12
    .line 13
    aget p2, v1, p2

    .line 14
    add-int/2addr p1, p2

    .line 15
    .line 16
    iget p2, p0, Lh5/a;->size:I

    .line 17
    .line 18
    add-int/lit8 p2, p2, -0x1

    .line 19
    rem-int/2addr p1, p2

    .line 20
    .line 21
    aget p1, v0, p1

    .line 22
    return p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "GF(0x"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    iget v1, p0, Lh5/a;->primitive:I

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const/16 v1, 0x2c

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget v1, p0, Lh5/a;->size:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const/16 v1, 0x29

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
