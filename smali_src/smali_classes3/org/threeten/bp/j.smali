.class public final enum Lorg/threeten/bp/j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/e;
.implements Lorg/threeten/bp/temporal/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/j;",
        ">;",
        "Lorg/threeten/bp/temporal/e;",
        "Lorg/threeten/bp/temporal/f;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/j;

.field public static final enum APRIL:Lorg/threeten/bp/j;

.field public static final enum AUGUST:Lorg/threeten/bp/j;

.field public static final enum DECEMBER:Lorg/threeten/bp/j;

.field private static final ENUMS:[Lorg/threeten/bp/j;

.field public static final enum FEBRUARY:Lorg/threeten/bp/j;

.field public static final FROM:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Lorg/threeten/bp/j;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum JANUARY:Lorg/threeten/bp/j;

.field public static final enum JULY:Lorg/threeten/bp/j;

.field public static final enum JUNE:Lorg/threeten/bp/j;

.field public static final enum MARCH:Lorg/threeten/bp/j;

.field public static final enum MAY:Lorg/threeten/bp/j;

.field public static final enum NOVEMBER:Lorg/threeten/bp/j;

.field public static final enum OCTOBER:Lorg/threeten/bp/j;

.field public static final enum SEPTEMBER:Lorg/threeten/bp/j;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/j;

    .line 3
    .line 4
    const-string v1, "JANUARY"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/j;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lorg/threeten/bp/j;->JANUARY:Lorg/threeten/bp/j;

    .line 11
    .line 12
    new-instance v1, Lorg/threeten/bp/j;

    .line 13
    .line 14
    const-string v3, "FEBRUARY"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Lorg/threeten/bp/j;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Lorg/threeten/bp/j;->FEBRUARY:Lorg/threeten/bp/j;

    .line 21
    .line 22
    new-instance v3, Lorg/threeten/bp/j;

    .line 23
    .line 24
    const-string v5, "MARCH"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6}, Lorg/threeten/bp/j;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v3, Lorg/threeten/bp/j;->MARCH:Lorg/threeten/bp/j;

    .line 31
    .line 32
    new-instance v5, Lorg/threeten/bp/j;

    .line 33
    .line 34
    const-string v7, "APRIL"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8}, Lorg/threeten/bp/j;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v5, Lorg/threeten/bp/j;->APRIL:Lorg/threeten/bp/j;

    .line 41
    .line 42
    new-instance v7, Lorg/threeten/bp/j;

    .line 43
    .line 44
    const-string v9, "MAY"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10}, Lorg/threeten/bp/j;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v7, Lorg/threeten/bp/j;->MAY:Lorg/threeten/bp/j;

    .line 51
    .line 52
    new-instance v9, Lorg/threeten/bp/j;

    .line 53
    .line 54
    const-string v11, "JUNE"

    .line 55
    const/4 v12, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v9, v11, v12}, Lorg/threeten/bp/j;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    sput-object v9, Lorg/threeten/bp/j;->JUNE:Lorg/threeten/bp/j;

    .line 61
    .line 62
    new-instance v11, Lorg/threeten/bp/j;

    .line 63
    .line 64
    const-string v13, "JULY"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v13, v14}, Lorg/threeten/bp/j;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    sput-object v11, Lorg/threeten/bp/j;->JULY:Lorg/threeten/bp/j;

    .line 71
    .line 72
    new-instance v13, Lorg/threeten/bp/j;

    .line 73
    .line 74
    const-string v15, "AUGUST"

    .line 75
    const/4 v14, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v13, v15, v14}, Lorg/threeten/bp/j;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    sput-object v13, Lorg/threeten/bp/j;->AUGUST:Lorg/threeten/bp/j;

    .line 81
    .line 82
    new-instance v15, Lorg/threeten/bp/j;

    .line 83
    .line 84
    const-string v14, "SEPTEMBER"

    .line 85
    .line 86
    const/16 v12, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v15, v14, v12}, Lorg/threeten/bp/j;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    sput-object v15, Lorg/threeten/bp/j;->SEPTEMBER:Lorg/threeten/bp/j;

    .line 92
    .line 93
    new-instance v14, Lorg/threeten/bp/j;

    .line 94
    .line 95
    const-string v12, "OCTOBER"

    .line 96
    .line 97
    const/16 v10, 0x9

    .line 98
    .line 99
    .line 100
    invoke-direct {v14, v12, v10}, Lorg/threeten/bp/j;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    sput-object v14, Lorg/threeten/bp/j;->OCTOBER:Lorg/threeten/bp/j;

    .line 103
    .line 104
    new-instance v12, Lorg/threeten/bp/j;

    .line 105
    .line 106
    const-string v10, "NOVEMBER"

    .line 107
    .line 108
    const/16 v8, 0xa

    .line 109
    .line 110
    .line 111
    invoke-direct {v12, v10, v8}, Lorg/threeten/bp/j;-><init>(Ljava/lang/String;I)V

    .line 112
    .line 113
    sput-object v12, Lorg/threeten/bp/j;->NOVEMBER:Lorg/threeten/bp/j;

    .line 114
    .line 115
    new-instance v10, Lorg/threeten/bp/j;

    .line 116
    .line 117
    const-string v8, "DECEMBER"

    .line 118
    .line 119
    const/16 v6, 0xb

    .line 120
    .line 121
    .line 122
    invoke-direct {v10, v8, v6}, Lorg/threeten/bp/j;-><init>(Ljava/lang/String;I)V

    .line 123
    .line 124
    sput-object v10, Lorg/threeten/bp/j;->DECEMBER:Lorg/threeten/bp/j;

    .line 125
    .line 126
    const/16 v8, 0xc

    .line 127
    .line 128
    new-array v8, v8, [Lorg/threeten/bp/j;

    .line 129
    .line 130
    aput-object v0, v8, v2

    .line 131
    .line 132
    aput-object v1, v8, v4

    .line 133
    const/4 v0, 0x2

    .line 134
    .line 135
    aput-object v3, v8, v0

    .line 136
    const/4 v0, 0x3

    .line 137
    .line 138
    aput-object v5, v8, v0

    .line 139
    const/4 v0, 0x4

    .line 140
    .line 141
    aput-object v7, v8, v0

    .line 142
    const/4 v0, 0x5

    .line 143
    .line 144
    aput-object v9, v8, v0

    .line 145
    const/4 v0, 0x6

    .line 146
    .line 147
    aput-object v11, v8, v0

    .line 148
    const/4 v0, 0x7

    .line 149
    .line 150
    aput-object v13, v8, v0

    .line 151
    .line 152
    const/16 v0, 0x8

    .line 153
    .line 154
    aput-object v15, v8, v0

    .line 155
    .line 156
    const/16 v0, 0x9

    .line 157
    .line 158
    aput-object v14, v8, v0

    .line 159
    .line 160
    const/16 v0, 0xa

    .line 161
    .line 162
    aput-object v12, v8, v0

    .line 163
    .line 164
    aput-object v10, v8, v6

    .line 165
    .line 166
    sput-object v8, Lorg/threeten/bp/j;->$VALUES:[Lorg/threeten/bp/j;

    .line 167
    .line 168
    new-instance v0, Lorg/threeten/bp/j$a;

    .line 169
    .line 170
    .line 171
    invoke-direct {v0}, Lorg/threeten/bp/j$a;-><init>()V

    .line 172
    .line 173
    sput-object v0, Lorg/threeten/bp/j;->FROM:Lorg/threeten/bp/temporal/j;

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lorg/threeten/bp/j;->values()[Lorg/threeten/bp/j;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    sput-object v0, Lorg/threeten/bp/j;->ENUMS:[Lorg/threeten/bp/j;

    .line 180
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static n(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/j;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p0, Lorg/threeten/bp/j;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lorg/threeten/bp/j;

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lorg/threeten/bp/chrono/h;->h(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/h;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/h;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lorg/threeten/bp/g;->A(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/g;

    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/e;->f(Lorg/threeten/bp/temporal/h;)I

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lorg/threeten/bp/j;->r(I)Lorg/threeten/bp/j;

    .line 36
    move-result-object p0
    :try_end_0
    .catch Lorg/threeten/bp/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object p0

    .line 38
    .line 39
    :goto_1
    new-instance v1, Lorg/threeten/bp/b;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    const-string v3, "Unable to obtain Month from TemporalAccessor: "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, ", type "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    move-result-object p0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, p0, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    throw v1
.end method

.method public static r(I)Lorg/threeten/bp/j;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    if-gt p0, v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lorg/threeten/bp/j;->ENUMS:[Lorg/threeten/bp/j;

    .line 10
    sub-int/2addr p0, v0

    .line 11
    .line 12
    aget-object p0, v1, p0

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lorg/threeten/bp/b;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v2, "Invalid value for MonthOfYear: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 36
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/j;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/threeten/bp/j;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/threeten/bp/j;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/j;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/j;->$VALUES:[Lorg/threeten/bp/j;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/threeten/bp/j;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/threeten/bp/j;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a(Z)I
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/j$b;->$SwitchMap$org$threeten$bp$Month:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    add-int/lit16 p1, p1, 0x14f

    .line 14
    return p1

    .line 15
    .line 16
    :pswitch_0
    add-int/lit16 p1, p1, 0x112

    .line 17
    return p1

    .line 18
    .line 19
    :pswitch_1
    add-int/lit16 p1, p1, 0xd5

    .line 20
    return p1

    .line 21
    .line 22
    :pswitch_2
    add-int/lit16 p1, p1, 0xb6

    .line 23
    return p1

    .line 24
    .line 25
    :pswitch_3
    add-int/lit8 p1, p1, 0x79

    .line 26
    return p1

    .line 27
    .line 28
    :pswitch_4
    add-int/lit8 p1, p1, 0x3c

    .line 29
    return p1

    .line 30
    :pswitch_5
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    .line 33
    :pswitch_6
    add-int/lit16 p1, p1, 0x131

    .line 34
    return p1

    .line 35
    .line 36
    :pswitch_7
    add-int/lit16 p1, p1, 0xf4

    .line 37
    return p1

    .line 38
    .line 39
    :pswitch_8
    add-int/lit16 p1, p1, 0x98

    .line 40
    return p1

    .line 41
    .line 42
    :pswitch_9
    add-int/lit8 p1, p1, 0x5b

    .line 43
    return p1

    .line 44
    .line 45
    :pswitch_a
    const/16 p1, 0x20

    .line 46
    return p1

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/threeten/bp/chrono/h;->h(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/h;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/h;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/threeten/bp/j;->getValue()I

    .line 18
    move-result v1

    .line 19
    int-to-long v1, v1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    .line 26
    :cond_0
    new-instance p1, Lorg/threeten/bp/b;

    .line 27
    .line 28
    const-string v0, "Adjustment only supported on ISO date-time"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method

.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->d()Lorg/threeten/bp/temporal/m;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v2, "Unsupported field: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method

.method public d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/j<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/temporal/i;->a()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/i;->e()Lorg/threeten/bp/temporal/j;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    sget-object p1, Lorg/threeten/bp/temporal/b;->MONTHS:Lorg/threeten/bp/temporal/b;

    .line 18
    return-object p1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-eq p1, v0, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lorg/threeten/bp/temporal/i;->c()Lorg/threeten/bp/temporal/j;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eq p1, v0, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lorg/threeten/bp/temporal/i;->f()Lorg/threeten/bp/temporal/j;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-eq p1, v0, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lorg/threeten/bp/temporal/i;->g()Lorg/threeten/bp/temporal/j;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    if-eq p1, v0, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lorg/threeten/bp/temporal/i;->d()Lorg/threeten/bp/temporal/j;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/j;->a(Lorg/threeten/bp/temporal/e;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method

.method public f(Lorg/threeten/bp/temporal/h;)I
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/j;->getValue()I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lorg/threeten/bp/j;->k(Lorg/threeten/bp/temporal/h;)J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/temporal/m;->a(JLorg/threeten/bp/temporal/h;)I

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public getValue()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public i(Lorg/threeten/bp/temporal/h;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    move v1, v2

    .line 12
    :cond_0
    return v1

    .line 13
    .line 14
    :cond_1
    if-eqz p1, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->c(Lorg/threeten/bp/temporal/e;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    move v1, v2

    .line 22
    :cond_2
    return v1
.end method

.method public k(Lorg/threeten/bp/temporal/h;)J
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/j;->getValue()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0

    .line 11
    .line 12
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    .line 21
    :cond_1
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v2, "Unsupported field: "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0
.end method

.method public o(Z)I
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/j$b;->$SwitchMap$org$threeten$bp$Month:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    const/4 p1, 0x2

    .line 13
    .line 14
    if-eq v0, p1, :cond_0

    .line 15
    const/4 p1, 0x3

    .line 16
    .line 17
    if-eq v0, p1, :cond_0

    .line 18
    const/4 p1, 0x4

    .line 19
    .line 20
    if-eq v0, p1, :cond_0

    .line 21
    const/4 p1, 0x5

    .line 22
    .line 23
    if-eq v0, p1, :cond_0

    .line 24
    .line 25
    const/16 p1, 0x1f

    .line 26
    return p1

    .line 27
    .line 28
    :cond_0
    const/16 p1, 0x1e

    .line 29
    return p1

    .line 30
    .line 31
    :cond_1
    if-eqz p1, :cond_2

    .line 32
    .line 33
    const/16 p1, 0x1d

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_2
    const/16 p1, 0x1c

    .line 37
    :goto_0
    return p1
.end method

.method public p()I
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/j$b;->$SwitchMap$org$threeten$bp$Month:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    const/4 v1, 0x4

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    const/4 v1, 0x5

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x1f

    .line 26
    return v0

    .line 27
    .line 28
    :cond_0
    const/16 v0, 0x1e

    .line 29
    return v0

    .line 30
    .line 31
    :cond_1
    const/16 v0, 0x1d

    .line 32
    return v0
.end method

.method public q()I
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/j$b;->$SwitchMap$org$threeten$bp$Month:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    const/4 v1, 0x4

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    const/4 v1, 0x5

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x1f

    .line 26
    return v0

    .line 27
    .line 28
    :cond_0
    const/16 v0, 0x1e

    .line 29
    return v0

    .line 30
    .line 31
    :cond_1
    const/16 v0, 0x1c

    .line 32
    return v0
.end method

.method public s(J)Lorg/threeten/bp/j;
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0xc

    .line 3
    rem-long/2addr p1, v0

    .line 4
    long-to-int p1, p1

    .line 5
    .line 6
    sget-object p2, Lorg/threeten/bp/j;->ENUMS:[Lorg/threeten/bp/j;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v0

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0xc

    .line 13
    add-int/2addr v0, p1

    .line 14
    .line 15
    rem-int/lit8 v0, v0, 0xc

    .line 16
    .line 17
    aget-object p1, p2, v0

    .line 18
    return-object p1
.end method
