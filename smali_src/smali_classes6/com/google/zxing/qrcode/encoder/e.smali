.class final Lcom/google/zxing/qrcode/encoder/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final POSITION_ADJUSTMENT_PATTERN:[[I

.field private static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field private static final POSITION_DETECTION_PATTERN:[[I

.field private static final TYPE_INFO_COORDINATES:[[I

.field private static final TYPE_INFO_MASK_PATTERN:I = 0x5412

.field private static final TYPE_INFO_POLY:I = 0x537

.field private static final VERSION_INFO_POLY:I = 0x1f25


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x7

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v2, v0, [I

    fill-array-data v2, :array_4

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-array v2, v0, [I

    fill-array-data v2, :array_5

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-array v2, v0, [I

    fill-array-data v2, :array_6

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sput-object v1, Lcom/google/zxing/qrcode/encoder/e;->POSITION_DETECTION_PATTERN:[[I

    new-array v1, v8, [[I

    filled-new-array {v4, v4, v4, v4, v4}, [I

    move-result-object v2

    aput-object v2, v1, v3

    filled-new-array {v4, v3, v3, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v4

    filled-new-array {v4, v3, v4, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v4, v3, v3, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v6

    filled-new-array {v4, v4, v4, v4, v4}, [I

    move-result-object v2

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/zxing/qrcode/encoder/e;->POSITION_ADJUSTMENT_PATTERN:[[I

    const/16 v1, 0x28

    new-array v1, v1, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v6

    new-array v2, v0, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v7

    new-array v2, v0, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v8

    new-array v2, v0, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v9

    new-array v2, v0, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v0

    new-array v2, v0, [I

    fill-array-data v2, :array_f

    const/16 v10, 0x8

    aput-object v2, v1, v10

    new-array v2, v0, [I

    fill-array-data v2, :array_10

    const/16 v11, 0x9

    aput-object v2, v1, v11

    new-array v2, v0, [I

    fill-array-data v2, :array_11

    const/16 v12, 0xa

    aput-object v2, v1, v12

    new-array v2, v0, [I

    fill-array-data v2, :array_12

    const/16 v13, 0xb

    aput-object v2, v1, v13

    new-array v2, v0, [I

    fill-array-data v2, :array_13

    const/16 v14, 0xc

    aput-object v2, v1, v14

    new-array v2, v0, [I

    fill-array-data v2, :array_14

    const/16 v15, 0xd

    aput-object v2, v1, v15

    new-array v2, v0, [I

    fill-array-data v2, :array_15

    const/16 v16, 0xe

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_16

    const/16 v15, 0xf

    aput-object v2, v1, v15

    new-array v2, v0, [I

    fill-array-data v2, :array_17

    const/16 v17, 0x10

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_18

    const/16 v17, 0x11

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_19

    const/16 v17, 0x12

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_1a

    const/16 v17, 0x13

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_1b

    const/16 v17, 0x14

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_1c

    const/16 v17, 0x15

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_1d

    const/16 v17, 0x16

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_1e

    const/16 v17, 0x17

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_1f

    const/16 v17, 0x18

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_20

    const/16 v17, 0x19

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_21

    const/16 v17, 0x1a

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_22

    const/16 v17, 0x1b

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_23

    const/16 v17, 0x1c

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_24

    const/16 v17, 0x1d

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_25

    const/16 v17, 0x1e

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_26

    const/16 v17, 0x1f

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_27

    const/16 v17, 0x20

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_28

    const/16 v17, 0x21

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_29

    const/16 v17, 0x22

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_2a

    const/16 v17, 0x23

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_2b

    const/16 v17, 0x24

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_2c

    const/16 v17, 0x25

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_2d

    const/16 v17, 0x26

    aput-object v2, v1, v17

    new-array v2, v0, [I

    fill-array-data v2, :array_2e

    const/16 v17, 0x27

    aput-object v2, v1, v17

    sput-object v1, Lcom/google/zxing/qrcode/encoder/e;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    new-array v1, v15, [[I

    filled-new-array {v10, v3}, [I

    move-result-object v2

    aput-object v2, v1, v3

    filled-new-array {v10, v4}, [I

    move-result-object v2

    aput-object v2, v1, v4

    filled-new-array {v10, v5}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v10, v6}, [I

    move-result-object v2

    aput-object v2, v1, v6

    filled-new-array {v10, v7}, [I

    move-result-object v2

    aput-object v2, v1, v7

    filled-new-array {v10, v8}, [I

    move-result-object v2

    aput-object v2, v1, v8

    filled-new-array {v10, v0}, [I

    move-result-object v2

    aput-object v2, v1, v9

    filled-new-array {v10, v10}, [I

    move-result-object v2

    aput-object v2, v1, v0

    filled-new-array {v0, v10}, [I

    move-result-object v0

    aput-object v0, v1, v10

    filled-new-array {v8, v10}, [I

    move-result-object v0

    aput-object v0, v1, v11

    filled-new-array {v7, v10}, [I

    move-result-object v0

    aput-object v0, v1, v12

    filled-new-array {v6, v10}, [I

    move-result-object v0

    aput-object v0, v1, v13

    filled-new-array {v5, v10}, [I

    move-result-object v0

    aput-object v0, v1, v14

    filled-new-array {v4, v10}, [I

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    filled-new-array {v3, v10}, [I

    move-result-object v0

    aput-object v0, v1, v16

    sput-object v1, Lcom/google/zxing/qrcode/encoder/e;->TYPE_INFO_COORDINATES:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_2c
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_2d
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method static a(Lg5/a;Ll5/a;Ll5/c;ILcom/google/zxing/qrcode/encoder/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p4}, Lcom/google/zxing/qrcode/encoder/e;->c(Lcom/google/zxing/qrcode/encoder/b;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/e;->d(Ll5/c;Lcom/google/zxing/qrcode/encoder/b;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p3, p4}, Lcom/google/zxing/qrcode/encoder/e;->l(Ll5/a;ILcom/google/zxing/qrcode/encoder/b;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/e;->s(Ll5/c;Lcom/google/zxing/qrcode/encoder/b;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p3, p4}, Lcom/google/zxing/qrcode/encoder/e;->f(Lg5/a;ILcom/google/zxing/qrcode/encoder/b;)V

    .line 16
    return-void
.end method

.method static b(II)I
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/e;->n(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v1, v0, -0x1

    .line 9
    shl-int/2addr p0, v1

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/e;->n(I)I

    .line 13
    move-result v1

    .line 14
    .line 15
    if-lt v1, v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/e;->n(I)I

    .line 19
    move-result v1

    .line 20
    sub-int/2addr v1, v0

    .line 21
    .line 22
    shl-int v1, p1, v1

    .line 23
    xor-int/2addr p0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return p0

    .line 26
    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p1, "0 polynomial"

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
.end method

.method static c(Lcom/google/zxing/qrcode/encoder/b;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/encoder/b;->a(B)V

    .line 5
    return-void
.end method

.method static d(Ll5/c;Lcom/google/zxing/qrcode/encoder/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/e;->j(Lcom/google/zxing/qrcode/encoder/b;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/e;->e(Lcom/google/zxing/qrcode/encoder/b;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/encoder/e;->r(Ll5/c;Lcom/google/zxing/qrcode/encoder/b;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/e;->k(Lcom/google/zxing/qrcode/encoder/b;)V

    .line 13
    return-void
.end method

.method private static e(Lcom/google/zxing/qrcode/encoder/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    sub-int/2addr v0, v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/qrcode/encoder/b;->b(II)B

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    .line 17
    move-result v0

    .line 18
    sub-int/2addr v0, v1

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/zxing/qrcode/encoder/b;->f(III)V

    .line 23
    return-void

    .line 24
    .line 25
    :cond_0
    new-instance p0, Lcom/google/zxing/h;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/google/zxing/h;-><init>()V

    .line 29
    throw p0
.end method

.method static f(Lg5/a;ILcom/google/zxing/qrcode/encoder/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    .line 10
    move-result v1

    .line 11
    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, -0x1

    .line 15
    move v4, v2

    .line 16
    move v5, v3

    .line 17
    .line 18
    :goto_0
    if-lez v0, :cond_6

    .line 19
    const/4 v6, 0x6

    .line 20
    .line 21
    if-ne v0, v6, :cond_0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :cond_0
    :goto_1
    if-ltz v1, :cond_5

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    .line 29
    move-result v6

    .line 30
    .line 31
    if-ge v1, v6, :cond_5

    .line 32
    move v6, v2

    .line 33
    :goto_2
    const/4 v7, 0x2

    .line 34
    .line 35
    if-ge v6, v7, :cond_4

    .line 36
    .line 37
    sub-int v7, v0, v6

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v7, v1}, Lcom/google/zxing/qrcode/encoder/b;->b(II)B

    .line 41
    move-result v8

    .line 42
    .line 43
    .line 44
    invoke-static {v8}, Lcom/google/zxing/qrcode/encoder/e;->o(I)Z

    .line 45
    move-result v8

    .line 46
    .line 47
    if-eqz v8, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lg5/a;->i()I

    .line 51
    move-result v8

    .line 52
    .line 53
    if-ge v4, v8, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v4}, Lg5/a;->g(I)Z

    .line 57
    move-result v8

    .line 58
    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 60
    goto :goto_3

    .line 61
    :cond_1
    move v8, v2

    .line 62
    .line 63
    :goto_3
    if-eq p1, v3, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v7, v1}, Lcom/google/zxing/qrcode/encoder/d;->f(III)Z

    .line 67
    move-result v9

    .line 68
    .line 69
    if-eqz v9, :cond_2

    .line 70
    .line 71
    xor-int/lit8 v8, v8, 0x1

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {p2, v7, v1, v8}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    .line 75
    .line 76
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    add-int/2addr v1, v5

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    neg-int v5, v5

    .line 81
    add-int/2addr v1, v5

    .line 82
    .line 83
    add-int/lit8 v0, v0, -0x2

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :cond_6
    invoke-virtual {p0}, Lg5/a;->i()I

    .line 88
    move-result p1

    .line 89
    .line 90
    if-ne v4, p1, :cond_7

    .line 91
    return-void

    .line 92
    .line 93
    :cond_7
    new-instance p1, Lcom/google/zxing/h;

    .line 94
    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v0, "Not all bits consumed: "

    .line 98
    .line 99
    .line 100
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const/16 v0, 0x2f

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lg5/a;->i()I

    .line 112
    move-result p0

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, p0}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 123
    throw p1
.end method

.method private static g(IILcom/google/zxing/qrcode/encoder/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    const/16 v2, 0x8

    .line 5
    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    add-int v2, p0, v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v2, p1}, Lcom/google/zxing/qrcode/encoder/b;->b(II)B

    .line 12
    move-result v3

    .line 13
    .line 14
    .line 15
    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/e;->o(I)Z

    .line 16
    move-result v3

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v2, p1, v0}, Lcom/google/zxing/qrcode/encoder/b;->f(III)V

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    new-instance p0, Lcom/google/zxing/h;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/zxing/h;-><init>()V

    .line 30
    throw p0

    .line 31
    :cond_1
    return-void
.end method

.method private static h(IILcom/google/zxing/qrcode/encoder/b;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x5

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    sget-object v3, Lcom/google/zxing/qrcode/encoder/e;->POSITION_ADJUSTMENT_PATTERN:[[I

    .line 8
    .line 9
    aget-object v3, v3, v1

    .line 10
    move v4, v0

    .line 11
    .line 12
    :goto_1
    if-ge v4, v2, :cond_0

    .line 13
    .line 14
    add-int v5, p0, v4

    .line 15
    .line 16
    add-int v6, p1, v1

    .line 17
    .line 18
    aget v7, v3, v4

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v5, v6, v7}, Lcom/google/zxing/qrcode/encoder/b;->f(III)V

    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method private static i(IILcom/google/zxing/qrcode/encoder/b;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x7

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    sget-object v3, Lcom/google/zxing/qrcode/encoder/e;->POSITION_DETECTION_PATTERN:[[I

    .line 8
    .line 9
    aget-object v3, v3, v1

    .line 10
    move v4, v0

    .line 11
    .line 12
    :goto_1
    if-ge v4, v2, :cond_0

    .line 13
    .line 14
    add-int v5, p0, v4

    .line 15
    .line 16
    add-int v6, p1, v1

    .line 17
    .line 18
    aget v7, v3, v4

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v5, v6, v7}, Lcom/google/zxing/qrcode/encoder/b;->f(III)V

    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method private static j(Lcom/google/zxing/qrcode/encoder/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/zxing/qrcode/encoder/e;->POSITION_DETECTION_PATTERN:[[I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    array-length v0, v0

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v1, p0}, Lcom/google/zxing/qrcode/encoder/e;->i(IILcom/google/zxing/qrcode/encoder/b;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    .line 13
    move-result v2

    .line 14
    sub-int/2addr v2, v0

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v1, p0}, Lcom/google/zxing/qrcode/encoder/e;->i(IILcom/google/zxing/qrcode/encoder/b;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    .line 21
    move-result v2

    .line 22
    sub-int/2addr v2, v0

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2, p0}, Lcom/google/zxing/qrcode/encoder/e;->i(IILcom/google/zxing/qrcode/encoder/b;)V

    .line 26
    const/4 v0, 0x7

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0, p0}, Lcom/google/zxing/qrcode/encoder/e;->g(IILcom/google/zxing/qrcode/encoder/b;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    .line 33
    move-result v2

    .line 34
    .line 35
    add-int/lit8 v2, v2, -0x8

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v0, p0}, Lcom/google/zxing/qrcode/encoder/e;->g(IILcom/google/zxing/qrcode/encoder/b;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    .line 42
    move-result v2

    .line 43
    .line 44
    add-int/lit8 v2, v2, -0x8

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v2, p0}, Lcom/google/zxing/qrcode/encoder/e;->g(IILcom/google/zxing/qrcode/encoder/b;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1, p0}, Lcom/google/zxing/qrcode/encoder/e;->m(IILcom/google/zxing/qrcode/encoder/b;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    .line 54
    move-result v2

    .line 55
    .line 56
    add-int/lit8 v2, v2, -0x8

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v1, p0}, Lcom/google/zxing/qrcode/encoder/e;->m(IILcom/google/zxing/qrcode/encoder/b;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    .line 63
    move-result v1

    .line 64
    sub-int/2addr v1, v0

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1, p0}, Lcom/google/zxing/qrcode/encoder/e;->m(IILcom/google/zxing/qrcode/encoder/b;)V

    .line 68
    return-void
.end method

.method private static k(Lcom/google/zxing/qrcode/encoder/b;)V
    .locals 6

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    move v1, v0

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    .line 7
    move-result v2

    .line 8
    sub-int/2addr v2, v0

    .line 9
    .line 10
    if-ge v1, v2, :cond_2

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    rem-int/lit8 v3, v2, 0x2

    .line 15
    const/4 v4, 0x6

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1, v4}, Lcom/google/zxing/qrcode/encoder/b;->b(II)B

    .line 19
    move-result v5

    .line 20
    .line 21
    .line 22
    invoke-static {v5}, Lcom/google/zxing/qrcode/encoder/e;->o(I)Z

    .line 23
    move-result v5

    .line 24
    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v4, v3}, Lcom/google/zxing/qrcode/encoder/b;->f(III)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0, v4, v1}, Lcom/google/zxing/qrcode/encoder/b;->b(II)B

    .line 32
    move-result v5

    .line 33
    .line 34
    .line 35
    invoke-static {v5}, Lcom/google/zxing/qrcode/encoder/e;->o(I)Z

    .line 36
    move-result v5

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v4, v1, v3}, Lcom/google/zxing/qrcode/encoder/b;->f(III)V

    .line 42
    :cond_1
    move v1, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method static l(Ll5/a;ILcom/google/zxing/qrcode/encoder/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lg5/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lg5/a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/e;->p(Ll5/a;ILg5/a;)V

    .line 9
    const/4 p0, 0x0

    .line 10
    move p1, p0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0}, Lg5/a;->i()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge p1, v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lg5/a;->i()I

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    sub-int/2addr v1, v2

    .line 23
    sub-int/2addr v1, p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lg5/a;->g(I)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    sget-object v3, Lcom/google/zxing/qrcode/encoder/e;->TYPE_INFO_COORDINATES:[[I

    .line 30
    .line 31
    aget-object v3, v3, p1

    .line 32
    .line 33
    aget v4, v3, p0

    .line 34
    .line 35
    aget v3, v3, v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v4, v3, v1}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    .line 39
    .line 40
    const/16 v3, 0x8

    .line 41
    .line 42
    if-ge p1, v3, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    .line 46
    move-result v4

    .line 47
    sub-int/2addr v4, p1

    .line 48
    sub-int/2addr v4, v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v4, v3, v1}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    .line 56
    move-result v2

    .line 57
    .line 58
    add-int/lit8 v2, v2, -0x7

    .line 59
    .line 60
    add-int/lit8 v4, p1, -0x8

    .line 61
    add-int/2addr v2, v4

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v3, v2, v1}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    .line 65
    .line 66
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method private static m(IILcom/google/zxing/qrcode/encoder/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x7

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    add-int v2, p1, v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p0, v2}, Lcom/google/zxing/qrcode/encoder/b;->b(II)B

    .line 11
    move-result v3

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/e;->o(I)Z

    .line 15
    move-result v3

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/b;->f(III)V

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance p0, Lcom/google/zxing/h;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/google/zxing/h;-><init>()V

    .line 29
    throw p0

    .line 30
    :cond_1
    return-void
.end method

.method static n(I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    rsub-int/lit8 p0, p0, 0x20

    .line 7
    return p0
.end method

.method private static o(I)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static p(Ll5/a;ILg5/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/f;->b(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ll5/a;->a()I

    .line 10
    move-result p0

    .line 11
    .line 12
    shl-int/lit8 p0, p0, 0x3

    .line 13
    or-int/2addr p0, p1

    .line 14
    const/4 p1, 0x5

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0, p1}, Lg5/a;->d(II)V

    .line 18
    .line 19
    const/16 p1, 0x537

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/encoder/e;->b(II)I

    .line 23
    move-result p0

    .line 24
    .line 25
    const/16 p1, 0xa

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p0, p1}, Lg5/a;->d(II)V

    .line 29
    .line 30
    new-instance p0, Lg5/a;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lg5/a;-><init>()V

    .line 34
    .line 35
    const/16 p1, 0x5412

    .line 36
    .line 37
    const/16 v0, 0xf

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, v0}, Lg5/a;->d(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p0}, Lg5/a;->m(Lg5/a;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lg5/a;->i()I

    .line 47
    move-result p0

    .line 48
    .line 49
    if-ne p0, v0, :cond_0

    .line 50
    return-void

    .line 51
    .line 52
    :cond_0
    new-instance p0, Lcom/google/zxing/h;

    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v0, "should not happen but we got: "

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lg5/a;->i()I

    .line 63
    move-result p2

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 74
    throw p0

    .line 75
    .line 76
    :cond_1
    new-instance p0, Lcom/google/zxing/h;

    .line 77
    .line 78
    const-string p1, "Invalid mask pattern"

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, p1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 82
    throw p0
.end method

.method static q(Ll5/c;Lg5/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ll5/c;->f()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Lg5/a;->d(II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ll5/c;->f()I

    .line 12
    move-result p0

    .line 13
    .line 14
    const/16 v0, 0x1f25

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/e;->b(II)I

    .line 18
    move-result p0

    .line 19
    .line 20
    const/16 v0, 0xc

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0, v0}, Lg5/a;->d(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lg5/a;->i()I

    .line 27
    move-result p0

    .line 28
    .line 29
    const/16 v0, 0x12

    .line 30
    .line 31
    if-ne p0, v0, :cond_0

    .line 32
    return-void

    .line 33
    .line 34
    :cond_0
    new-instance p0, Lcom/google/zxing/h;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "should not happen but we got: "

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lg5/a;->i()I

    .line 45
    move-result p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0
.end method

.method private static r(Ll5/c;Lcom/google/zxing/qrcode/encoder/b;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ll5/c;->f()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Ll5/c;->f()I

    .line 12
    move-result p0

    .line 13
    .line 14
    add-int/lit8 p0, p0, -0x1

    .line 15
    .line 16
    sget-object v0, Lcom/google/zxing/qrcode/encoder/e;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    .line 17
    .line 18
    aget-object p0, v0, p0

    .line 19
    array-length v0, p0

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    .line 23
    :goto_0
    if-ge v2, v0, :cond_3

    .line 24
    .line 25
    aget v3, p0, v2

    .line 26
    .line 27
    if-ltz v3, :cond_2

    .line 28
    array-length v4, p0

    .line 29
    move v5, v1

    .line 30
    .line 31
    :goto_1
    if-ge v5, v4, :cond_2

    .line 32
    .line 33
    aget v6, p0, v5

    .line 34
    .line 35
    if-ltz v6, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v6, v3}, Lcom/google/zxing/qrcode/encoder/b;->b(II)B

    .line 39
    move-result v7

    .line 40
    .line 41
    .line 42
    invoke-static {v7}, Lcom/google/zxing/qrcode/encoder/e;->o(I)Z

    .line 43
    move-result v7

    .line 44
    .line 45
    if-eqz v7, :cond_1

    .line 46
    .line 47
    add-int/lit8 v6, v6, -0x2

    .line 48
    .line 49
    add-int/lit8 v7, v3, -0x2

    .line 50
    .line 51
    .line 52
    invoke-static {v6, v7, p1}, Lcom/google/zxing/qrcode/encoder/e;->h(IILcom/google/zxing/qrcode/encoder/b;)V

    .line 53
    .line 54
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return-void
.end method

.method static s(Ll5/c;Lcom/google/zxing/qrcode/encoder/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ll5/c;->f()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    new-instance v0, Lg5/a;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Lg5/a;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/e;->q(Ll5/c;Lg5/a;)V

    .line 17
    const/4 p0, 0x0

    .line 18
    .line 19
    const/16 v1, 0x11

    .line 20
    move v2, p0

    .line 21
    :goto_0
    const/4 v3, 0x6

    .line 22
    .line 23
    if-ge v2, v3, :cond_2

    .line 24
    move v3, p0

    .line 25
    :goto_1
    const/4 v4, 0x3

    .line 26
    .line 27
    if-ge v3, v4, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lg5/a;->g(I)Z

    .line 31
    move-result v4

    .line 32
    .line 33
    add-int/lit8 v1, v1, -0x1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    .line 37
    move-result v5

    .line 38
    .line 39
    add-int/lit8 v5, v5, -0xb

    .line 40
    add-int/2addr v5, v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v2, v5, v4}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    .line 47
    move-result v5

    .line 48
    .line 49
    add-int/lit8 v5, v5, -0xb

    .line 50
    add-int/2addr v5, v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v5, v2, v4}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method
