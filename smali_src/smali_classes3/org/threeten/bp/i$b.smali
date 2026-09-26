.class synthetic Lorg/threeten/bp/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/i;
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
    .locals 9

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
    sput-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    :try_start_0
    sget-object v2, Lorg/threeten/bp/temporal/b;->NANOS:Lorg/threeten/bp/temporal/b;

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
    sget-object v2, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 22
    .line 23
    sget-object v3, Lorg/threeten/bp/temporal/b;->MICROS:Lorg/threeten/bp/temporal/b;

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
    sget-object v3, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 33
    .line 34
    sget-object v4, Lorg/threeten/bp/temporal/b;->MILLIS:Lorg/threeten/bp/temporal/b;

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
    sget-object v4, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 44
    .line 45
    sget-object v5, Lorg/threeten/bp/temporal/b;->SECONDS:Lorg/threeten/bp/temporal/b;

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
    sget-object v5, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 55
    .line 56
    sget-object v6, Lorg/threeten/bp/temporal/b;->MINUTES:Lorg/threeten/bp/temporal/b;

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
    sget-object v6, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 66
    .line 67
    sget-object v7, Lorg/threeten/bp/temporal/b;->HOURS:Lorg/threeten/bp/temporal/b;

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
    sget-object v7, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 77
    .line 78
    sget-object v8, Lorg/threeten/bp/temporal/b;->HALF_DAYS:Lorg/threeten/bp/temporal/b;

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
    .line 87
    :catch_6
    invoke-static {}, Lorg/threeten/bp/temporal/a;->values()[Lorg/threeten/bp/temporal/a;

    .line 88
    move-result-object v7

    .line 89
    array-length v7, v7

    .line 90
    .line 91
    new-array v7, v7, [I

    .line 92
    .line 93
    sput-object v7, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 94
    .line 95
    :try_start_7
    sget-object v8, Lorg/threeten/bp/temporal/a;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 99
    move-result v8

    .line 100
    .line 101
    aput v1, v7, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 102
    .line 103
    :catch_7
    :try_start_8
    sget-object v1, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 104
    .line 105
    sget-object v7, Lorg/threeten/bp/temporal/a;->NANO_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 109
    move-result v7

    .line 110
    .line 111
    aput v0, v1, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 112
    .line 113
    :catch_8
    :try_start_9
    sget-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 114
    .line 115
    sget-object v1, Lorg/threeten/bp/temporal/a;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 119
    move-result v1

    .line 120
    .line 121
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 122
    .line 123
    :catch_9
    :try_start_a
    sget-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 124
    .line 125
    sget-object v1, Lorg/threeten/bp/temporal/a;->MICRO_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 129
    move-result v1

    .line 130
    .line 131
    aput v3, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 132
    .line 133
    :catch_a
    :try_start_b
    sget-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 134
    .line 135
    sget-object v1, Lorg/threeten/bp/temporal/a;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 139
    move-result v1

    .line 140
    .line 141
    aput v4, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 142
    .line 143
    :catch_b
    :try_start_c
    sget-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 144
    .line 145
    sget-object v1, Lorg/threeten/bp/temporal/a;->MILLI_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 149
    move-result v1

    .line 150
    .line 151
    aput v5, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 152
    .line 153
    :catch_c
    :try_start_d
    sget-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 154
    .line 155
    sget-object v1, Lorg/threeten/bp/temporal/a;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/a;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 159
    move-result v1

    .line 160
    .line 161
    aput v6, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 162
    .line 163
    :catch_d
    :try_start_e
    sget-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 164
    .line 165
    sget-object v1, Lorg/threeten/bp/temporal/a;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 169
    move-result v1

    .line 170
    .line 171
    const/16 v2, 0x8

    .line 172
    .line 173
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 174
    .line 175
    :catch_e
    :try_start_f
    sget-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 176
    .line 177
    sget-object v1, Lorg/threeten/bp/temporal/a;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/a;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 181
    move-result v1

    .line 182
    .line 183
    const/16 v2, 0x9

    .line 184
    .line 185
    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 186
    .line 187
    :catch_f
    :try_start_10
    sget-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 188
    .line 189
    sget-object v1, Lorg/threeten/bp/temporal/a;->MINUTE_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 193
    move-result v1

    .line 194
    .line 195
    const/16 v2, 0xa

    .line 196
    .line 197
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 198
    .line 199
    :catch_10
    :try_start_11
    sget-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 200
    .line 201
    sget-object v1, Lorg/threeten/bp/temporal/a;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/a;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 205
    move-result v1

    .line 206
    .line 207
    const/16 v2, 0xb

    .line 208
    .line 209
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 210
    .line 211
    :catch_11
    :try_start_12
    sget-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 212
    .line 213
    sget-object v1, Lorg/threeten/bp/temporal/a;->CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/a;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 217
    move-result v1

    .line 218
    .line 219
    const/16 v2, 0xc

    .line 220
    .line 221
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 222
    .line 223
    :catch_12
    :try_start_13
    sget-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 224
    .line 225
    sget-object v1, Lorg/threeten/bp/temporal/a;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 229
    move-result v1

    .line 230
    .line 231
    const/16 v2, 0xd

    .line 232
    .line 233
    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 234
    .line 235
    :catch_13
    :try_start_14
    sget-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 236
    .line 237
    sget-object v1, Lorg/threeten/bp/temporal/a;->CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 241
    move-result v1

    .line 242
    .line 243
    const/16 v2, 0xe

    .line 244
    .line 245
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    .line 246
    .line 247
    :catch_14
    :try_start_15
    sget-object v0, Lorg/threeten/bp/i$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 248
    .line 249
    sget-object v1, Lorg/threeten/bp/temporal/a;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 253
    move-result v1

    .line 254
    .line 255
    const/16 v2, 0xf

    .line 256
    .line 257
    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    .line 258
    :catch_15
    return-void
.end method
