.class synthetic Lorg/threeten/bp/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$threeten$bp$temporal$ChronoField:[I

.field static final synthetic $SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/temporal/b;->values()[Lorg/threeten/bp/temporal/b;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    sput-object v0, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    :try_start_0
    sget-object v2, Lorg/threeten/bp/temporal/b;->DAYS:Lorg/threeten/bp/temporal/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v2

    .line 17
    .line 18
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    const/4 v0, 0x2

    .line 20
    .line 21
    :try_start_1
    sget-object v2, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 22
    .line 23
    sget-object v3, Lorg/threeten/bp/temporal/b;->WEEKS:Lorg/threeten/bp/temporal/b;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result v3

    .line 28
    .line 29
    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    :catch_1
    const/4 v2, 0x3

    .line 31
    .line 32
    :try_start_2
    sget-object v3, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 33
    .line 34
    sget-object v4, Lorg/threeten/bp/temporal/b;->MONTHS:Lorg/threeten/bp/temporal/b;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v4

    .line 39
    .line 40
    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 41
    :catch_2
    const/4 v3, 0x4

    .line 42
    .line 43
    :try_start_3
    sget-object v4, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 44
    .line 45
    sget-object v5, Lorg/threeten/bp/temporal/b;->YEARS:Lorg/threeten/bp/temporal/b;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 49
    move-result v5

    .line 50
    .line 51
    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 52
    :catch_3
    const/4 v4, 0x5

    .line 53
    .line 54
    :try_start_4
    sget-object v5, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 55
    .line 56
    sget-object v6, Lorg/threeten/bp/temporal/b;->DECADES:Lorg/threeten/bp/temporal/b;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 60
    move-result v6

    .line 61
    .line 62
    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 63
    :catch_4
    const/4 v5, 0x6

    .line 64
    .line 65
    :try_start_5
    sget-object v6, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 66
    .line 67
    sget-object v7, Lorg/threeten/bp/temporal/b;->CENTURIES:Lorg/threeten/bp/temporal/b;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 71
    move-result v7

    .line 72
    .line 73
    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 74
    :catch_5
    const/4 v6, 0x7

    .line 75
    .line 76
    :try_start_6
    sget-object v7, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 77
    .line 78
    sget-object v8, Lorg/threeten/bp/temporal/b;->MILLENNIA:Lorg/threeten/bp/temporal/b;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 82
    move-result v8

    .line 83
    .line 84
    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 85
    .line 86
    :catch_6
    const/16 v7, 0x8

    .line 87
    .line 88
    :try_start_7
    sget-object v8, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 89
    .line 90
    sget-object v9, Lorg/threeten/bp/temporal/b;->ERAS:Lorg/threeten/bp/temporal/b;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 94
    move-result v9

    .line 95
    .line 96
    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 97
    .line 98
    .line 99
    :catch_7
    invoke-static {}, Lorg/threeten/bp/temporal/a;->values()[Lorg/threeten/bp/temporal/a;

    .line 100
    move-result-object v8

    .line 101
    array-length v8, v8

    .line 102
    .line 103
    new-array v8, v8, [I

    .line 104
    .line 105
    sput-object v8, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 106
    .line 107
    :try_start_8
    sget-object v9, Lorg/threeten/bp/temporal/a;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/a;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 111
    move-result v9

    .line 112
    .line 113
    aput v1, v8, v9
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 114
    .line 115
    :catch_8
    :try_start_9
    sget-object v1, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 116
    .line 117
    sget-object v8, Lorg/threeten/bp/temporal/a;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 121
    move-result v8

    .line 122
    .line 123
    aput v0, v1, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 124
    .line 125
    :catch_9
    :try_start_a
    sget-object v0, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 126
    .line 127
    sget-object v1, Lorg/threeten/bp/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/a;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 131
    move-result v1

    .line 132
    .line 133
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 134
    .line 135
    :catch_a
    :try_start_b
    sget-object v0, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 136
    .line 137
    sget-object v1, Lorg/threeten/bp/temporal/a;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/a;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 141
    move-result v1

    .line 142
    .line 143
    aput v3, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 144
    .line 145
    :catch_b
    :try_start_c
    sget-object v0, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 146
    .line 147
    sget-object v1, Lorg/threeten/bp/temporal/a;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 151
    move-result v1

    .line 152
    .line 153
    aput v4, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 154
    .line 155
    :catch_c
    :try_start_d
    sget-object v0, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 156
    .line 157
    sget-object v1, Lorg/threeten/bp/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/a;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 161
    move-result v1

    .line 162
    .line 163
    aput v5, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 164
    .line 165
    :catch_d
    :try_start_e
    sget-object v0, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 166
    .line 167
    sget-object v1, Lorg/threeten/bp/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/a;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 171
    move-result v1

    .line 172
    .line 173
    aput v6, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 174
    .line 175
    :catch_e
    :try_start_f
    sget-object v0, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 176
    .line 177
    sget-object v1, Lorg/threeten/bp/temporal/a;->EPOCH_DAY:Lorg/threeten/bp/temporal/a;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 181
    move-result v1

    .line 182
    .line 183
    aput v7, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 184
    .line 185
    :catch_f
    :try_start_10
    sget-object v0, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 186
    .line 187
    sget-object v1, Lorg/threeten/bp/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 191
    move-result v1

    .line 192
    .line 193
    const/16 v2, 0x9

    .line 194
    .line 195
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 196
    .line 197
    :catch_10
    :try_start_11
    sget-object v0, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 198
    .line 199
    sget-object v1, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 203
    move-result v1

    .line 204
    .line 205
    const/16 v2, 0xa

    .line 206
    .line 207
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 208
    .line 209
    :catch_11
    :try_start_12
    sget-object v0, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 210
    .line 211
    sget-object v1, Lorg/threeten/bp/temporal/a;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/a;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 215
    move-result v1

    .line 216
    .line 217
    const/16 v2, 0xb

    .line 218
    .line 219
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 220
    .line 221
    :catch_12
    :try_start_13
    sget-object v0, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 222
    .line 223
    sget-object v1, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 227
    move-result v1

    .line 228
    .line 229
    const/16 v2, 0xc

    .line 230
    .line 231
    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 232
    .line 233
    :catch_13
    :try_start_14
    sget-object v0, Lorg/threeten/bp/g$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 234
    .line 235
    sget-object v1, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 239
    move-result v1

    .line 240
    .line 241
    const/16 v2, 0xd

    .line 242
    .line 243
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    .line 244
    :catch_14
    return-void
.end method
