.class public final Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/db/SimpleSQLiteQuery;
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
    invoke-direct {p0}, Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;-><init>()V

    return-void
.end method

.method private final a(Landroidx/sqlite/db/SupportSQLiteProgram;ILjava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->P(I)V

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    instance-of v0, p3, [B

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p3, [B

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->K(I[B)V

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_1
    instance-of v0, p3, Ljava/lang/Float;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    check-cast p3, Ljava/lang/Number;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    .line 28
    move-result p3

    .line 29
    float-to-double v0, p3

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->Y(ID)V

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_2
    instance-of v0, p3, Ljava/lang/Double;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    check-cast p3, Ljava/lang/Number;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    .line 44
    move-result-wide v0

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->Y(ID)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_3
    instance-of v0, p3, Ljava/lang/Long;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    check-cast p3, Ljava/lang/Number;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    .line 58
    move-result-wide v0

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_4
    instance-of v0, p3, Ljava/lang/Integer;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    check-cast p3, Ljava/lang/Number;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 72
    move-result p3

    .line 73
    int-to-long v0, p3

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_5
    instance-of v0, p3, Ljava/lang/Short;

    .line 80
    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    check-cast p3, Ljava/lang/Number;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3}, Ljava/lang/Number;->shortValue()S

    .line 87
    move-result p3

    .line 88
    int-to-long v0, p3

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_6
    instance-of v0, p3, Ljava/lang/Byte;

    .line 95
    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    check-cast p3, Ljava/lang/Number;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3}, Ljava/lang/Number;->byteValue()B

    .line 102
    move-result p3

    .line 103
    int-to-long v0, p3

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 107
    goto :goto_1

    .line 108
    .line 109
    :cond_7
    instance-of v0, p3, Ljava/lang/String;

    .line 110
    .line 111
    if-eqz v0, :cond_8

    .line 112
    .line 113
    check-cast p3, Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->s(ILjava/lang/String;)V

    .line 117
    goto :goto_1

    .line 118
    .line 119
    :cond_8
    instance-of v0, p3, Ljava/lang/Boolean;

    .line 120
    .line 121
    if-eqz v0, :cond_a

    .line 122
    .line 123
    check-cast p3, Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    move-result p3

    .line 128
    .line 129
    if-eqz p3, :cond_9

    .line 130
    .line 131
    const-wide/16 v0, 0x1

    .line 132
    goto :goto_0

    .line 133
    .line 134
    :cond_9
    const-wide/16 v0, 0x0

    .line 135
    .line 136
    .line 137
    :goto_0
    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 138
    :goto_1
    return-void

    .line 139
    .line 140
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    const-string v1, "Cannot bind "

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string p3, " at index "

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string p2, " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p2

    .line 171
    .line 172
    .line 173
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    throw p1
.end method


# virtual methods
.method public final b(Landroidx/sqlite/db/SupportSQLiteProgram;[Ljava/lang/Object;)V
    .locals 3
    .param p1    # Landroidx/sqlite/db/SupportSQLiteProgram;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "statement"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    array-length v0, p2

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-object v2, p2, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, v1, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;->a(Landroidx/sqlite/db/SupportSQLiteProgram;ILjava/lang/Object;)V

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-void
.end method
