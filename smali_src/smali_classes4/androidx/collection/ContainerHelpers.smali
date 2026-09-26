.class Landroidx/collection/ContainerHelpers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    new-array v1, v0, [J

    sput-object v1, Landroidx/collection/ContainerHelpers;->EMPTY_LONGS:[J

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

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

.method static a([III)I
    .locals 3

    .line 1
    .line 2
    add-int/lit8 p1, p1, -0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    :goto_0
    if-gt v0, p1, :cond_2

    .line 6
    .line 7
    add-int v1, v0, p1

    .line 8
    .line 9
    ushr-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    aget v2, p0, v1

    .line 12
    .line 13
    if-ge v2, p2, :cond_0

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    if-le v2, p2, :cond_1

    .line 20
    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return v1

    .line 25
    :cond_2
    not-int p0, v0

    .line 26
    return p0
.end method

.method static b([JIJ)I
    .locals 4

    .line 1
    .line 2
    add-int/lit8 p1, p1, -0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    :goto_0
    if-gt v0, p1, :cond_2

    .line 6
    .line 7
    add-int v1, v0, p1

    .line 8
    .line 9
    ushr-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    aget-wide v2, p0, v1

    .line 12
    .line 13
    cmp-long v2, v2, p2

    .line 14
    .line 15
    if-gez v2, :cond_0

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    if-lez v2, :cond_1

    .line 22
    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    move p1, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v1

    .line 27
    :cond_2
    not-int p0, v0

    .line 28
    return p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    if-eq p0, p1, :cond_1

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public static d(I)I
    .locals 2

    .line 1
    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static e(I)I
    .locals 0

    .line 1
    .line 2
    mul-int/lit8 p0, p0, 0x4

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Landroidx/collection/ContainerHelpers;->d(I)I

    .line 6
    move-result p0

    .line 7
    .line 8
    div-int/lit8 p0, p0, 0x4

    .line 9
    return p0
.end method

.method public static f(I)I
    .locals 0

    .line 1
    .line 2
    mul-int/lit8 p0, p0, 0x8

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Landroidx/collection/ContainerHelpers;->d(I)I

    .line 6
    move-result p0

    .line 7
    .line 8
    div-int/lit8 p0, p0, 0x8

    .line 9
    return p0
.end method
