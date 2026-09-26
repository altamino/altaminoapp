.class final Lorg/threeten/bp/format/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/format/c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# instance fields
.field private final decimalPoint:Z

.field private final field:Lorg/threeten/bp/temporal/h;

.field private final maxWidth:I

.field private final minWidth:I


# direct methods
.method constructor <init>(Lorg/threeten/bp/temporal/h;IIZ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-string v0, "field"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->d()Lorg/threeten/bp/temporal/m;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/threeten/bp/temporal/m;->e()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    if-ltz p2, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x9

    .line 23
    .line 24
    if-gt p2, v0, :cond_2

    .line 25
    const/4 v1, 0x1

    .line 26
    .line 27
    if-lt p3, v1, :cond_1

    .line 28
    .line 29
    if-gt p3, v0, :cond_1

    .line 30
    .line 31
    if-lt p3, p2, :cond_0

    .line 32
    .line 33
    iput-object p1, p0, Lorg/threeten/bp/format/c$h;->field:Lorg/threeten/bp/temporal/h;

    .line 34
    .line 35
    iput p2, p0, Lorg/threeten/bp/format/c$h;->minWidth:I

    .line 36
    .line 37
    iput p3, p0, Lorg/threeten/bp/format/c$h;->maxWidth:I

    .line 38
    .line 39
    iput-boolean p4, p0, Lorg/threeten/bp/format/c$h;->decimalPoint:Z

    .line 40
    return-void

    .line 41
    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    new-instance p4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v0, "Maximum width must exceed or equal the minimum width but "

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p3, " < "

    .line 58
    .line 59
    .line 60
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1

    .line 72
    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    const-string p4, "Maximum width must be from 1 to 9 inclusive but was "

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p1

    .line 95
    .line 96
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    const-string p4, "Minimum width must be from 0 to 9 inclusive but was "

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    throw p1

    .line 118
    .line 119
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    new-instance p3, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    const-string p4, "Field must have a fixed set of values: "

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    .line 139
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    throw p2
.end method

.method private b(J)Ljava/math/BigDecimal;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/c$h;->field:Lorg/threeten/bp/temporal/h;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lorg/threeten/bp/temporal/h;->d()Lorg/threeten/bp/temporal/m;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/threeten/bp/format/c$h;->field:Lorg/threeten/bp/temporal/h;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, v1}, Lorg/threeten/bp/temporal/m;->b(JLorg/threeten/bp/temporal/h;)J

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/threeten/bp/temporal/m;->d()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/threeten/bp/temporal/m;->c()J

    .line 23
    move-result-wide v2

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    const/16 p2, 0x9

    .line 48
    .line 49
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0, p2, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    sget-object p2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 59
    move-result v0

    .line 60
    .line 61
    if-nez v0, :cond_0

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    .line 66
    move-result-object p2

    .line 67
    :goto_0
    return-object p2
.end method


# virtual methods
.method public a(Lorg/threeten/bp/format/d;Ljava/lang/StringBuilder;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/c$h;->field:Lorg/threeten/bp/temporal/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/d;->f(Lorg/threeten/bp/temporal/h;)Ljava/lang/Long;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/format/d;->d()Lorg/threeten/bp/format/f;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    move-result-wide v2

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/format/c$h;->b(J)Ljava/math/BigDecimal;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    iget v0, p0, Lorg/threeten/bp/format/c$h;->minWidth:I

    .line 31
    .line 32
    if-lez v0, :cond_4

    .line 33
    .line 34
    iget-boolean v0, p0, Lorg/threeten/bp/format/c$h;->decimalPoint:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lorg/threeten/bp/format/f;->b()C

    .line 40
    move-result v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    :cond_1
    :goto_0
    iget v0, p0, Lorg/threeten/bp/format/c$h;->minWidth:I

    .line 46
    .line 47
    if-ge v1, v0, :cond_4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/threeten/bp/format/f;->e()C

    .line 51
    move-result v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    .line 61
    move-result v1

    .line 62
    .line 63
    iget v2, p0, Lorg/threeten/bp/format/c$h;->minWidth:I

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 67
    move-result v1

    .line 68
    .line 69
    iget v2, p0, Lorg/threeten/bp/format/c$h;->maxWidth:I

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 73
    move-result v1

    .line 74
    .line 75
    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    const/4 v1, 0x2

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    iget-boolean v1, p0, Lorg/threeten/bp/format/c$h;->decimalPoint:Z

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lorg/threeten/bp/format/f;->b()C

    .line 100
    move-result p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_4
    const/4 p1, 0x1

    .line 108
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/threeten/bp/format/c$h;->decimalPoint:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, ",DecimalPoint"

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v2, "Fraction("

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/threeten/bp/format/c$h;->field:Lorg/threeten/bp/temporal/h;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, ","

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    iget v3, p0, Lorg/threeten/bp/format/c$h;->minWidth:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    iget v2, p0, Lorg/threeten/bp/format/c$h;->maxWidth:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, ")"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
