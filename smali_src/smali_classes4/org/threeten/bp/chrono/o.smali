.class public final Lorg/threeten/bp/chrono/o;
.super Lorg/threeten/bp/chrono/h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ERA_FULL_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_NARROW_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_SHORT_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALLBACK_LANGUAGE:Ljava/lang/String; = "en"

.field public static final INSTANCE:Lorg/threeten/bp/chrono/o;

.field static final LOCALE:Ljava/util/Locale;

.field private static final TARGET_LANGUAGE:Ljava/lang/String; = "ja"

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    .line 2
    new-instance v0, Ljava/util/Locale;

    .line 3
    .line 4
    const-string v1, "JP"

    .line 5
    .line 6
    const-string v2, "ja"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2, v1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    sput-object v0, Lorg/threeten/bp/chrono/o;->LOCALE:Ljava/util/Locale;

    .line 12
    .line 13
    new-instance v0, Lorg/threeten/bp/chrono/o;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lorg/threeten/bp/chrono/o;-><init>()V

    .line 17
    .line 18
    sput-object v0, Lorg/threeten/bp/chrono/o;->INSTANCE:Lorg/threeten/bp/chrono/o;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    sput-object v0, Lorg/threeten/bp/chrono/o;->ERA_NARROW_NAMES:Ljava/util/Map;

    .line 26
    .line 27
    new-instance v1, Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    sput-object v1, Lorg/threeten/bp/chrono/o;->ERA_SHORT_NAMES:Ljava/util/Map;

    .line 33
    .line 34
    new-instance v3, Ljava/util/HashMap;

    .line 35
    .line 36
    .line 37
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    sput-object v3, Lorg/threeten/bp/chrono/o;->ERA_FULL_NAMES:Ljava/util/Map;

    .line 40
    .line 41
    const-string v4, "Unknown"

    .line 42
    .line 43
    const-string v5, "K"

    .line 44
    .line 45
    const-string v6, "M"

    .line 46
    .line 47
    const-string v7, "T"

    .line 48
    .line 49
    const-string v8, "S"

    .line 50
    .line 51
    const-string v9, "H"

    .line 52
    .line 53
    .line 54
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    const-string v5, "en"

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    const-string v6, "Unknown"

    .line 63
    .line 64
    const-string v7, "K"

    .line 65
    .line 66
    const-string v8, "M"

    .line 67
    .line 68
    const-string v9, "T"

    .line 69
    .line 70
    const-string v10, "S"

    .line 71
    .line 72
    const-string v11, "H"

    .line 73
    .line 74
    .line 75
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    const-string v6, "Unknown"

    .line 82
    .line 83
    const-string v7, "K"

    .line 84
    .line 85
    const-string v8, "M"

    .line 86
    .line 87
    const-string v9, "T"

    .line 88
    .line 89
    const-string v10, "S"

    .line 90
    .line 91
    const-string v11, "H"

    .line 92
    .line 93
    .line 94
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    const-string v6, "Unknown"

    .line 101
    .line 102
    const-string/jumbo v7, "\u6176"

    .line 103
    .line 104
    const-string/jumbo v8, "\u660e"

    .line 105
    .line 106
    const-string/jumbo v9, "\u5927"

    .line 107
    .line 108
    const-string/jumbo v10, "\u662d"

    .line 109
    .line 110
    const-string/jumbo v11, "\u5e73"

    .line 111
    .line 112
    .line 113
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    .line 117
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    const-string v6, "Unknown"

    .line 120
    .line 121
    const-string v7, "Keio"

    .line 122
    .line 123
    const-string v8, "Meiji"

    .line 124
    .line 125
    const-string v9, "Taisho"

    .line 126
    .line 127
    const-string v10, "Showa"

    .line 128
    .line 129
    const-string v11, "Heisei"

    .line 130
    .line 131
    .line 132
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    .line 136
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    const-string v6, "Unknown"

    .line 139
    .line 140
    const-string/jumbo v7, "\u6176\u5fdc"

    .line 141
    .line 142
    const-string/jumbo v8, "\u660e\u6cbb"

    .line 143
    .line 144
    const-string/jumbo v9, "\u5927\u6b63"

    .line 145
    .line 146
    const-string/jumbo v10, "\u662d\u548c"

    .line 147
    .line 148
    const-string/jumbo v11, "\u5e73\u6210"

    .line 149
    .line 150
    .line 151
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/h;-><init>()V

    .line 4
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/threeten/bp/chrono/o;->INSTANCE:Lorg/threeten/bp/chrono/o;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic b(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/o;->t(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/p;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic f(I)Lorg/threeten/bp/chrono/i;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/o;->u(I)Lorg/threeten/bp/chrono/q;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "japanese"

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Japanese"

    return-object v0
.end method

.method public l(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/e;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "Lorg/threeten/bp/chrono/p;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/h;->l(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/c;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public r(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/f;",
            "Lorg/threeten/bp/r;",
            ")",
            "Lorg/threeten/bp/chrono/f<",
            "Lorg/threeten/bp/chrono/p;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lorg/threeten/bp/chrono/h;->r(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/f;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public s(III)Lorg/threeten/bp/chrono/p;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/p;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2, p3}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/p;-><init>(Lorg/threeten/bp/g;)V

    .line 10
    return-object v0
.end method

.method public t(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/p;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/chrono/p;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/chrono/p;

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lorg/threeten/bp/chrono/p;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lorg/threeten/bp/g;->A(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/g;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p1}, Lorg/threeten/bp/chrono/p;-><init>(Lorg/threeten/bp/g;)V

    .line 17
    return-object v0
.end method

.method public u(I)Lorg/threeten/bp/chrono/q;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/threeten/bp/chrono/q;->p(I)Lorg/threeten/bp/chrono/q;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public v(Lorg/threeten/bp/chrono/i;I)I
    .locals 5

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/chrono/q;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/chrono/q;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/q;->s()Lorg/threeten/bp/g;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/threeten/bp/g;->J()I

    .line 14
    move-result v0

    .line 15
    add-int/2addr v0, p2

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/q;->n()Lorg/threeten/bp/g;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lorg/threeten/bp/g;->J()I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/q;->s()Lorg/threeten/bp/g;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lorg/threeten/bp/g;->J()I

    .line 33
    move-result p1

    .line 34
    sub-int/2addr v1, p1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    int-to-long v1, v1

    .line 38
    .line 39
    const-wide/16 v3, 0x1

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4, v1, v2}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 43
    move-result-object p1

    .line 44
    int-to-long v1, p2

    .line 45
    .line 46
    sget-object p2, Lorg/threeten/bp/temporal/a;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/a;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1, v2, p2}, Lorg/threeten/bp/temporal/m;->b(JLorg/threeten/bp/temporal/h;)J

    .line 50
    return v0

    .line 51
    .line 52
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    .line 53
    .line 54
    const-string p2, "Era must be JapaneseEra"

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1
.end method

.method public w(Lorg/threeten/bp/temporal/a;)Lorg/threeten/bp/temporal/m;
    .locals 11

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/o$a;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v1, v0, v1

    .line 9
    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    sget-object v1, Lorg/threeten/bp/chrono/o;->LOCALE:Ljava/util/Locale;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 21
    move-result v2

    .line 22
    .line 23
    aget v0, v0, v2

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    packed-switch v0, :pswitch_data_1

    .line 28
    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v2, "Unimplementable field: "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0

    .line 51
    .line 52
    .line 53
    :pswitch_0
    invoke-static {}, Lorg/threeten/bp/chrono/q;->t()[Lorg/threeten/bp/chrono/q;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    const/16 v0, 0x16e

    .line 57
    :goto_0
    array-length v1, p1

    .line 58
    .line 59
    if-ge v2, v1, :cond_0

    .line 60
    .line 61
    aget-object v1, p1, v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lorg/threeten/bp/chrono/q;->s()Lorg/threeten/bp/g;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lorg/threeten/bp/g;->M()I

    .line 69
    move-result v1

    .line 70
    .line 71
    aget-object v3, p1, v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lorg/threeten/bp/chrono/q;->s()Lorg/threeten/bp/g;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lorg/threeten/bp/g;->F()I

    .line 79
    move-result v3

    .line 80
    sub-int/2addr v1, v3

    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 86
    move-result v0

    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_0
    const-wide/16 v3, 0x1

    .line 92
    int-to-long v5, v0

    .line 93
    .line 94
    const-wide/16 v7, 0x16e

    .line 95
    .line 96
    .line 97
    invoke-static/range {v3 .. v8}, Lorg/threeten/bp/temporal/m;->j(JJJ)Lorg/threeten/bp/temporal/m;

    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :pswitch_1
    const/4 p1, 0x2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->getMinimum(I)I

    .line 104
    move-result v0

    .line 105
    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 107
    int-to-long v2, v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    .line 111
    move-result v0

    .line 112
    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 114
    int-to-long v4, v0

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    .line 118
    move-result v0

    .line 119
    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    int-to-long v6, v0

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->getMaximum(I)I

    .line 125
    move-result p1

    .line 126
    .line 127
    add-int/lit8 p1, p1, 0x1

    .line 128
    int-to-long v8, p1

    .line 129
    .line 130
    .line 131
    invoke-static/range {v2 .. v9}, Lorg/threeten/bp/temporal/m;->k(JJJJ)Lorg/threeten/bp/temporal/m;

    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    .line 135
    .line 136
    :pswitch_2
    invoke-static {}, Lorg/threeten/bp/chrono/q;->t()[Lorg/threeten/bp/chrono/q;

    .line 137
    move-result-object p1

    .line 138
    array-length v0, p1

    .line 139
    .line 140
    add-int/lit8 v0, v0, -0x1

    .line 141
    .line 142
    aget-object v0, p1, v0

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/q;->n()Lorg/threeten/bp/g;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lorg/threeten/bp/g;->J()I

    .line 150
    move-result v0

    .line 151
    array-length v1, p1

    .line 152
    .line 153
    add-int/lit8 v1, v1, -0x1

    .line 154
    .line 155
    aget-object v1, p1, v1

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Lorg/threeten/bp/chrono/q;->s()Lorg/threeten/bp/g;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Lorg/threeten/bp/g;->J()I

    .line 163
    move-result v1

    .line 164
    sub-int/2addr v0, v1

    .line 165
    .line 166
    add-int/lit8 v0, v0, 0x1

    .line 167
    .line 168
    .line 169
    const v1, 0x7fffffff

    .line 170
    :goto_1
    array-length v3, p1

    .line 171
    .line 172
    if-ge v2, v3, :cond_1

    .line 173
    .line 174
    aget-object v3, p1, v2

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Lorg/threeten/bp/chrono/q;->n()Lorg/threeten/bp/g;

    .line 178
    move-result-object v3

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Lorg/threeten/bp/g;->J()I

    .line 182
    move-result v3

    .line 183
    .line 184
    aget-object v4, p1, v2

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Lorg/threeten/bp/chrono/q;->s()Lorg/threeten/bp/g;

    .line 188
    move-result-object v4

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Lorg/threeten/bp/g;->J()I

    .line 192
    move-result v4

    .line 193
    sub-int/2addr v3, v4

    .line 194
    .line 195
    add-int/lit8 v3, v3, 0x1

    .line 196
    .line 197
    .line 198
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 199
    move-result v1

    .line 200
    .line 201
    add-int/lit8 v2, v2, 0x1

    .line 202
    goto :goto_1

    .line 203
    .line 204
    :cond_1
    const-wide/16 v3, 0x1

    .line 205
    .line 206
    const-wide/16 v5, 0x6

    .line 207
    int-to-long v7, v1

    .line 208
    int-to-long v9, v0

    .line 209
    .line 210
    .line 211
    invoke-static/range {v3 .. v10}, Lorg/threeten/bp/temporal/m;->k(JJJJ)Lorg/threeten/bp/temporal/m;

    .line 212
    move-result-object p1

    .line 213
    return-object p1

    .line 214
    .line 215
    .line 216
    :pswitch_3
    invoke-static {}, Lorg/threeten/bp/chrono/q;->t()[Lorg/threeten/bp/chrono/q;

    .line 217
    move-result-object p1

    .line 218
    .line 219
    sget-object v0, Lorg/threeten/bp/chrono/p;->MIN_DATE:Lorg/threeten/bp/g;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Lorg/threeten/bp/g;->J()I

    .line 223
    move-result v0

    .line 224
    int-to-long v0, v0

    .line 225
    array-length v2, p1

    .line 226
    .line 227
    add-int/lit8 v2, v2, -0x1

    .line 228
    .line 229
    aget-object p1, p1, v2

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/q;->n()Lorg/threeten/bp/g;

    .line 233
    move-result-object p1

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Lorg/threeten/bp/g;->J()I

    .line 237
    move-result p1

    .line 238
    int-to-long v2, p1

    .line 239
    .line 240
    .line 241
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 242
    move-result-object p1

    .line 243
    return-object p1

    .line 244
    .line 245
    .line 246
    :pswitch_4
    invoke-static {}, Lorg/threeten/bp/chrono/q;->t()[Lorg/threeten/bp/chrono/q;

    .line 247
    move-result-object p1

    .line 248
    .line 249
    aget-object v0, p1, v2

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/q;->getValue()I

    .line 253
    move-result v0

    .line 254
    int-to-long v0, v0

    .line 255
    array-length v2, p1

    .line 256
    .line 257
    add-int/lit8 v2, v2, -0x1

    .line 258
    .line 259
    aget-object p1, p1, v2

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/q;->getValue()I

    .line 263
    move-result p1

    .line 264
    int-to-long v2, p1

    .line 265
    .line 266
    .line 267
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 268
    move-result-object p1

    .line 269
    return-object p1

    .line 270
    .line 271
    .line 272
    :pswitch_5
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/a;->d()Lorg/threeten/bp/temporal/m;

    .line 273
    move-result-object p1

    .line 274
    return-object p1

    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
