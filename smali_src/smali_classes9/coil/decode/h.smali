.class public final Lcoil/decode/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/decode/h$a;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcoil/decode/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcoil/decode/h;

    invoke-direct {v0}, Lcoil/decode/h;-><init>()V

    sput-object v0, Lcoil/decode/h;->INSTANCE:Lcoil/decode/h;

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

.method public static final a(IIIILcoil/size/h;)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # Lcoil/size/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    div-int/2addr p0, p2

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 5
    move-result p0

    .line 6
    div-int/2addr p1, p3

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 10
    move-result p1

    .line 11
    .line 12
    sget-object p2, Lcoil/decode/h$a;->$EnumSwitchMapping$0:[I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result p3

    .line 17
    .line 18
    aget p2, p2, p3

    .line 19
    const/4 p3, 0x1

    .line 20
    .line 21
    if-eq p2, p3, :cond_1

    .line 22
    const/4 p4, 0x2

    .line 23
    .line 24
    if-ne p2, p4, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result p0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    new-instance p0, Lw7/s;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 35
    throw p0

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 39
    move-result p0

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-static {p0, p3}, Lj8/m;->e(II)I

    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public static final b(DDDDLcoil/size/h;)D
    .locals 0
    .param p0    # D
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p6    # D
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p8    # Lcoil/size/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    div-double/2addr p4, p0

    .line 2
    div-double/2addr p6, p2

    .line 3
    .line 4
    sget-object p0, Lcoil/decode/h$a;->$EnumSwitchMapping$0:[I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p8}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result p1

    .line 9
    .line 10
    aget p0, p0, p1

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    if-eq p0, p1, :cond_1

    .line 14
    const/4 p1, 0x2

    .line 15
    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(DD)D

    .line 20
    move-result-wide p0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance p0, Lw7/s;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 27
    throw p0

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(DD)D

    .line 31
    move-result-wide p0

    .line 32
    :goto_0
    return-wide p0
.end method

.method public static final c(IIIILcoil/size/h;)D
    .locals 4
    .param p0    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # Lcoil/size/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    int-to-double v0, p2

    .line 2
    int-to-double v2, p0

    .line 3
    div-double/2addr v0, v2

    .line 4
    int-to-double p2, p3

    .line 5
    int-to-double p0, p1

    .line 6
    div-double/2addr p2, p0

    .line 7
    .line 8
    sget-object p0, Lcoil/decode/h$a;->$EnumSwitchMapping$0:[I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result p1

    .line 13
    .line 14
    aget p0, p0, p1

    .line 15
    const/4 p1, 0x1

    .line 16
    .line 17
    if-eq p0, p1, :cond_1

    .line 18
    const/4 p1, 0x2

    .line 19
    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(DD)D

    .line 24
    move-result-wide p0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    new-instance p0, Lw7/s;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 31
    throw p0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(DD)D

    .line 35
    move-result-wide p0

    .line 36
    :goto_0
    return-wide p0
.end method
