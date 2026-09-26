.class public final Landroidx/compose/ui/graphics/Float16$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/Float16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/Float16$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/graphics/Float16$Companion;F)S
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/Float16$Companion;->c(F)S

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/graphics/Float16$Companion;S)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/Float16$Companion;->d(S)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final c(F)S
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 4
    move-result p1

    .line 5
    .line 6
    ushr-int/lit8 v0, p1, 0x1f

    .line 7
    .line 8
    ushr-int/lit8 v1, p1, 0x17

    .line 9
    .line 10
    const/16 v2, 0xff

    .line 11
    and-int/2addr v1, v2

    .line 12
    .line 13
    .line 14
    const v3, 0x7fffff

    .line 15
    and-int/2addr v3, p1

    .line 16
    .line 17
    const/16 v4, 0x1f

    .line 18
    const/4 v5, 0x0

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    if-eqz v3, :cond_6

    .line 23
    .line 24
    const/16 v5, 0x200

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v1, v1, -0x70

    .line 28
    .line 29
    if-lt v1, v4, :cond_1

    .line 30
    .line 31
    const/16 v4, 0x31

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_1
    if-gtz v1, :cond_4

    .line 35
    .line 36
    const/16 p1, -0xa

    .line 37
    .line 38
    if-lt v1, p1, :cond_3

    .line 39
    .line 40
    const/high16 p1, 0x800000

    .line 41
    or-int/2addr p1, v3

    .line 42
    .line 43
    rsub-int/lit8 v1, v1, 0x1

    .line 44
    shr-int/2addr p1, v1

    .line 45
    .line 46
    and-int/lit16 v1, p1, 0x1000

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    add-int/lit16 p1, p1, 0x2000

    .line 51
    .line 52
    :cond_2
    shr-int/lit8 p1, p1, 0xd

    .line 53
    move v4, v5

    .line 54
    move v5, p1

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move v4, v5

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_4
    shr-int/lit8 v5, v3, 0xd

    .line 60
    .line 61
    and-int/lit16 p1, p1, 0x1000

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    shl-int/lit8 p1, v1, 0xa

    .line 66
    or-int/2addr p1, v5

    .line 67
    .line 68
    add-int/lit8 p1, p1, 0x1

    .line 69
    .line 70
    shl-int/lit8 v0, v0, 0xf

    .line 71
    or-int/2addr p1, v0

    .line 72
    :goto_0
    int-to-short p1, p1

    .line 73
    return p1

    .line 74
    :cond_5
    move v4, v1

    .line 75
    .line 76
    :cond_6
    :goto_1
    shl-int/lit8 p1, v0, 0xf

    .line 77
    .line 78
    shl-int/lit8 v0, v4, 0xa

    .line 79
    or-int/2addr p1, v0

    .line 80
    or-int/2addr p1, v5

    .line 81
    goto :goto_0
.end method

.method private final d(S)I
    .locals 3

    .line 1
    const v0, 0x8000

    and-int v1, p1, v0

    const v2, 0xffff

    if-eqz v1, :cond_0

    and-int/2addr p1, v2

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    and-int v0, p1, v2

    :goto_0
    return v0
.end method
