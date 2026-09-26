.class final Lorg/threeten/bp/format/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private locale:Ljava/util/Locale;

.field private optional:I

.field private symbols:Lorg/threeten/bp/format/f;

.field private temporal:Lorg/threeten/bp/temporal/e;


# direct methods
.method constructor <init>(Lorg/threeten/bp/temporal/e;Lorg/threeten/bp/format/b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lorg/threeten/bp/format/d;->a(Lorg/threeten/bp/temporal/e;Lorg/threeten/bp/format/b;)Lorg/threeten/bp/temporal/e;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lorg/threeten/bp/format/d;->temporal:Lorg/threeten/bp/temporal/e;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lorg/threeten/bp/format/b;->e()Ljava/util/Locale;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lorg/threeten/bp/format/d;->locale:Ljava/util/Locale;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lorg/threeten/bp/format/b;->d()Lorg/threeten/bp/format/f;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Lorg/threeten/bp/format/d;->symbols:Lorg/threeten/bp/format/f;

    .line 22
    return-void
.end method

.method private static a(Lorg/threeten/bp/temporal/e;Lorg/threeten/bp/format/b;)Lorg/threeten/bp/temporal/e;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/threeten/bp/format/b;->c()Lorg/threeten/bp/chrono/h;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/threeten/bp/format/b;->f()Lorg/threeten/bp/r;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    return-object p0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/i;->a()Lorg/threeten/bp/temporal/j;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/e;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lorg/threeten/bp/chrono/h;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lorg/threeten/bp/temporal/i;->g()Lorg/threeten/bp/temporal/j;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, v2}, Lorg/threeten/bp/temporal/e;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Lorg/threeten/bp/r;

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Lra/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    move-object v0, v4

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-static {v2, p1}, Lra/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    move-object p1, v4

    .line 49
    .line 50
    :cond_2
    if-nez v0, :cond_3

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    return-object p0

    .line 54
    .line 55
    :cond_3
    if-eqz v0, :cond_4

    .line 56
    move-object v3, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    move-object v3, v1

    .line 59
    .line 60
    :goto_0
    if-eqz p1, :cond_5

    .line 61
    move-object v2, p1

    .line 62
    .line 63
    :cond_5
    const-string v5, " "

    .line 64
    .line 65
    if-eqz p1, :cond_9

    .line 66
    .line 67
    sget-object v6, Lorg/threeten/bp/temporal/a;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 68
    .line 69
    .line 70
    invoke-interface {p0, v6}, Lorg/threeten/bp/temporal/e;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 71
    move-result v6

    .line 72
    .line 73
    if-eqz v6, :cond_7

    .line 74
    .line 75
    if-eqz v3, :cond_6

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_6
    sget-object v3, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-static {p0}, Lorg/threeten/bp/f;->p(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/f;

    .line 82
    move-result-object p0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, p0, p1}, Lorg/threeten/bp/chrono/h;->r(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/f;

    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    .line 89
    .line 90
    :cond_7
    invoke-virtual {p1}, Lorg/threeten/bp/r;->p()Lorg/threeten/bp/r;

    .line 91
    move-result-object v6

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lorg/threeten/bp/temporal/i;->d()Lorg/threeten/bp/temporal/j;

    .line 95
    move-result-object v7

    .line 96
    .line 97
    .line 98
    invoke-interface {p0, v7}, Lorg/threeten/bp/temporal/e;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 99
    move-result-object v7

    .line 100
    .line 101
    check-cast v7, Lorg/threeten/bp/s;

    .line 102
    .line 103
    instance-of v8, v6, Lorg/threeten/bp/s;

    .line 104
    .line 105
    if-eqz v8, :cond_9

    .line 106
    .line 107
    if-eqz v7, :cond_9

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v7}, Lorg/threeten/bp/r;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v6

    .line 112
    .line 113
    if-eqz v6, :cond_8

    .line 114
    goto :goto_2

    .line 115
    .line 116
    :cond_8
    new-instance v0, Lorg/threeten/bp/b;

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    const-string v2, "Invalid override zone for temporal: "

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 140
    .line 141
    .line 142
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 143
    throw v0

    .line 144
    .line 145
    :cond_9
    :goto_2
    if-eqz v0, :cond_e

    .line 146
    .line 147
    sget-object p1, Lorg/threeten/bp/temporal/a;->EPOCH_DAY:Lorg/threeten/bp/temporal/a;

    .line 148
    .line 149
    .line 150
    invoke-interface {p0, p1}, Lorg/threeten/bp/temporal/e;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 151
    move-result p1

    .line 152
    .line 153
    if-eqz p1, :cond_a

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, p0}, Lorg/threeten/bp/chrono/h;->b(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/b;

    .line 157
    move-result-object v4

    .line 158
    goto :goto_5

    .line 159
    .line 160
    :cond_a
    sget-object p1, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 161
    .line 162
    if-ne v0, p1, :cond_b

    .line 163
    .line 164
    if-eqz v1, :cond_e

    .line 165
    .line 166
    .line 167
    :cond_b
    invoke-static {}, Lorg/threeten/bp/temporal/a;->values()[Lorg/threeten/bp/temporal/a;

    .line 168
    move-result-object p1

    .line 169
    array-length v1, p1

    .line 170
    const/4 v6, 0x0

    .line 171
    .line 172
    :goto_3
    if-ge v6, v1, :cond_e

    .line 173
    .line 174
    aget-object v7, p1, v6

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7}, Lorg/threeten/bp/temporal/a;->a()Z

    .line 178
    move-result v8

    .line 179
    .line 180
    if-eqz v8, :cond_d

    .line 181
    .line 182
    .line 183
    invoke-interface {p0, v7}, Lorg/threeten/bp/temporal/e;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 184
    move-result v7

    .line 185
    .line 186
    if-nez v7, :cond_c

    .line 187
    goto :goto_4

    .line 188
    .line 189
    :cond_c
    new-instance p1, Lorg/threeten/bp/b;

    .line 190
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    const-string v2, "Invalid override chronology for temporal: "

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object p0

    .line 213
    .line 214
    .line 215
    invoke-direct {p1, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 216
    throw p1

    .line 217
    .line 218
    :cond_d
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 219
    goto :goto_3

    .line 220
    .line 221
    :cond_e
    :goto_5
    new-instance p1, Lorg/threeten/bp/format/d$a;

    .line 222
    .line 223
    .line 224
    invoke-direct {p1, v4, p0, v3, v2}, Lorg/threeten/bp/format/d$a;-><init>(Lorg/threeten/bp/chrono/b;Lorg/threeten/bp/temporal/e;Lorg/threeten/bp/chrono/h;Lorg/threeten/bp/r;)V

    .line 225
    return-object p1
.end method


# virtual methods
.method b()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/threeten/bp/format/d;->optional:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/threeten/bp/format/d;->optional:I

    return-void
.end method

.method c()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/d;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method d()Lorg/threeten/bp/format/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/d;->symbols:Lorg/threeten/bp/format/f;

    return-object v0
.end method

.method e()Lorg/threeten/bp/temporal/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/d;->temporal:Lorg/threeten/bp/temporal/e;

    return-object v0
.end method

.method f(Lorg/threeten/bp/temporal/h;)Ljava/lang/Long;
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/threeten/bp/format/d;->temporal:Lorg/threeten/bp/temporal/e;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    move-result-object p1
    :try_end_0
    .catch Lorg/threeten/bp/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    .line 14
    iget v0, p0, Lorg/threeten/bp/format/d;->optional:I

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_0
    throw p1
.end method

.method g(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;
    .locals 2
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
    iget-object v0, p0, Lorg/threeten/bp/format/d;->temporal:Lorg/threeten/bp/temporal/e;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/e;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lorg/threeten/bp/format/d;->optional:I

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance p1, Lorg/threeten/bp/b;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v1, "Unable to extract value: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v1, p0, Lorg/threeten/bp/format/d;->temporal:Lorg/threeten/bp/temporal/e;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1

    .line 43
    :cond_1
    :goto_0
    return-object p1
.end method

.method h()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/threeten/bp/format/d;->optional:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/threeten/bp/format/d;->optional:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/d;->temporal:Lorg/threeten/bp/temporal/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
