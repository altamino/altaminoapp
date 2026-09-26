.class public final Landroidx/compose/ui/unit/Constraints$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/unit/Constraints;
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
    invoke-direct {p0}, Landroidx/compose/ui/unit/Constraints$Companion;-><init>()V

    return-void
.end method

.method private final a(I)I
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x1fff

    .line 3
    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    const/16 p1, 0xd

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    const/16 v0, 0x7fff

    .line 10
    .line 11
    if-ge p1, v0, :cond_1

    .line 12
    .line 13
    const/16 p1, 0xf

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    const v0, 0xffff

    .line 18
    .line 19
    if-ge p1, v0, :cond_2

    .line 20
    .line 21
    const/16 p1, 0x10

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_2
    const v0, 0x3ffff

    .line 26
    .line 27
    if-ge p1, v0, :cond_3

    .line 28
    .line 29
    const/16 p1, 0x12

    .line 30
    :goto_0
    return p1

    .line 31
    .line 32
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v2, "Can\'t represent a size of "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p1, " in Constraints"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0
.end method


# virtual methods
.method public final b(IIII)J
    .locals 6

    .line 1
    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    if-ne p4, v0, :cond_0

    .line 6
    move v1, p3

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v1, p4

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-direct {p0, v1}, Landroidx/compose/ui/unit/Constraints$Companion;->a(I)I

    .line 12
    move-result v2

    .line 13
    .line 14
    if-ne p2, v0, :cond_1

    .line 15
    move v3, p1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v3, p2

    .line 18
    .line 19
    .line 20
    :goto_1
    invoke-direct {p0, v3}, Landroidx/compose/ui/unit/Constraints$Companion;->a(I)I

    .line 21
    move-result v4

    .line 22
    add-int/2addr v2, v4

    .line 23
    .line 24
    const/16 v5, 0x1f

    .line 25
    .line 26
    if-gt v2, v5, :cond_8

    .line 27
    .line 28
    const/16 v1, 0xd

    .line 29
    .line 30
    if-eq v4, v1, :cond_5

    .line 31
    .line 32
    const/16 v1, 0x12

    .line 33
    .line 34
    if-eq v4, v1, :cond_4

    .line 35
    .line 36
    const/16 v1, 0xf

    .line 37
    .line 38
    if-eq v4, v1, :cond_3

    .line 39
    .line 40
    const/16 v1, 0x10

    .line 41
    .line 42
    if-ne v4, v1, :cond_2

    .line 43
    .line 44
    const-wide/16 v1, 0x0

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p2, "Should only have the provided constants."

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    .line 55
    :cond_3
    const-wide/16 v1, 0x2

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_4
    const-wide/16 v1, 0x1

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_5
    const-wide/16 v1, 0x3

    .line 62
    :goto_2
    const/4 v3, 0x0

    .line 63
    .line 64
    if-ne p2, v0, :cond_6

    .line 65
    move p2, v3

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .line 69
    .line 70
    :goto_3
    if-ne p4, v0, :cond_7

    .line 71
    goto :goto_4

    .line 72
    .line 73
    :cond_7
    add-int/lit8 v3, p4, 0x1

    .line 74
    .line 75
    .line 76
    :goto_4
    invoke-static {}, Landroidx/compose/ui/unit/Constraints;->a()[I

    .line 77
    move-result-object p4

    .line 78
    long-to-int v0, v1

    .line 79
    .line 80
    aget p4, p4, v0

    .line 81
    .line 82
    add-int/lit8 v0, p4, 0x1f

    .line 83
    int-to-long v4, p1

    .line 84
    const/4 p1, 0x2

    .line 85
    shl-long/2addr v4, p1

    .line 86
    or-long/2addr v1, v4

    .line 87
    int-to-long p1, p2

    .line 88
    .line 89
    const/16 v4, 0x21

    .line 90
    shl-long/2addr p1, v4

    .line 91
    or-long/2addr p1, v1

    .line 92
    int-to-long v1, p3

    .line 93
    .line 94
    shl-long p3, v1, p4

    .line 95
    or-long/2addr p1, p3

    .line 96
    int-to-long p3, v3

    .line 97
    shl-long/2addr p3, v0

    .line 98
    or-long/2addr p1, p3

    .line 99
    .line 100
    .line 101
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->c(J)J

    .line 102
    move-result-wide p1

    .line 103
    return-wide p1

    .line 104
    .line 105
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    const-string p3, "Can\'t represent a width of "

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string p3, " and height of "

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string p3, " in Constraints"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p2

    .line 136
    .line 137
    .line 138
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    throw p1
.end method

.method public final c(II)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    if-ltz p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p1, p2, p2}, Landroidx/compose/ui/unit/Constraints$Companion;->b(IIII)J

    .line 8
    move-result-wide p1

    .line 9
    return-wide p1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v1, "width("

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p1, ") and height("

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p1, ") must be >= 0"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p2
.end method

.method public final d(I)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    const v1, 0x7fffffff

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1, p1}, Landroidx/compose/ui/unit/Constraints$Companion;->b(IIII)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v1, "height("

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, ") must be >= 0"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    throw v0
.end method

.method public final e(I)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    const v1, 0x7fffffff

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p1, v0, v1}, Landroidx/compose/ui/unit/Constraints$Companion;->b(IIII)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v1, "width("

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, ") must be >= 0"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    throw v0
.end method
