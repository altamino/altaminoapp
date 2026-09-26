.class synthetic Lcom/google/i18n/phonenumbers/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

.field static final synthetic $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

.field static final synthetic $SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/i18n/phonenumbers/h$c;->values()[Lcom/google/i18n/phonenumbers/h$c;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    sput-object v0, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    :try_start_0
    sget-object v2, Lcom/google/i18n/phonenumbers/h$c;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/h$c;

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
    sget-object v2, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    .line 22
    .line 23
    sget-object v3, Lcom/google/i18n/phonenumbers/h$c;->TOLL_FREE:Lcom/google/i18n/phonenumbers/h$c;

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
    sget-object v3, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    .line 33
    .line 34
    sget-object v4, Lcom/google/i18n/phonenumbers/h$c;->MOBILE:Lcom/google/i18n/phonenumbers/h$c;

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
    sget-object v4, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    .line 44
    .line 45
    sget-object v5, Lcom/google/i18n/phonenumbers/h$c;->FIXED_LINE:Lcom/google/i18n/phonenumbers/h$c;

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
    .line 53
    :catch_3
    :try_start_4
    sget-object v4, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    .line 54
    .line 55
    sget-object v5, Lcom/google/i18n/phonenumbers/h$c;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/h$c;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 59
    move-result v5

    .line 60
    const/4 v6, 0x5

    .line 61
    .line 62
    aput v6, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 63
    .line 64
    :catch_4
    :try_start_5
    sget-object v4, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    .line 65
    .line 66
    sget-object v5, Lcom/google/i18n/phonenumbers/h$c;->SHARED_COST:Lcom/google/i18n/phonenumbers/h$c;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 70
    move-result v5

    .line 71
    const/4 v6, 0x6

    .line 72
    .line 73
    aput v6, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 74
    .line 75
    :catch_5
    :try_start_6
    sget-object v4, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    .line 76
    .line 77
    sget-object v5, Lcom/google/i18n/phonenumbers/h$c;->VOIP:Lcom/google/i18n/phonenumbers/h$c;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 81
    move-result v5

    .line 82
    const/4 v6, 0x7

    .line 83
    .line 84
    aput v6, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 85
    .line 86
    :catch_6
    :try_start_7
    sget-object v4, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    .line 87
    .line 88
    sget-object v5, Lcom/google/i18n/phonenumbers/h$c;->PERSONAL_NUMBER:Lcom/google/i18n/phonenumbers/h$c;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 92
    move-result v5

    .line 93
    .line 94
    const/16 v6, 0x8

    .line 95
    .line 96
    aput v6, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 97
    .line 98
    :catch_7
    :try_start_8
    sget-object v4, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    .line 99
    .line 100
    sget-object v5, Lcom/google/i18n/phonenumbers/h$c;->PAGER:Lcom/google/i18n/phonenumbers/h$c;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 104
    move-result v5

    .line 105
    .line 106
    const/16 v6, 0x9

    .line 107
    .line 108
    aput v6, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 109
    .line 110
    :catch_8
    :try_start_9
    sget-object v4, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    .line 111
    .line 112
    sget-object v5, Lcom/google/i18n/phonenumbers/h$c;->UAN:Lcom/google/i18n/phonenumbers/h$c;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 116
    move-result v5

    .line 117
    .line 118
    const/16 v6, 0xa

    .line 119
    .line 120
    aput v6, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 121
    .line 122
    :catch_9
    :try_start_a
    sget-object v4, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    .line 123
    .line 124
    sget-object v5, Lcom/google/i18n/phonenumbers/h$c;->VOICEMAIL:Lcom/google/i18n/phonenumbers/h$c;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 128
    move-result v5

    .line 129
    .line 130
    const/16 v6, 0xb

    .line 131
    .line 132
    aput v6, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 133
    .line 134
    .line 135
    :catch_a
    invoke-static {}, Lcom/google/i18n/phonenumbers/h$b;->values()[Lcom/google/i18n/phonenumbers/h$b;

    .line 136
    move-result-object v4

    .line 137
    array-length v4, v4

    .line 138
    .line 139
    new-array v4, v4, [I

    .line 140
    .line 141
    sput-object v4, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

    .line 142
    .line 143
    :try_start_b
    sget-object v5, Lcom/google/i18n/phonenumbers/h$b;->E164:Lcom/google/i18n/phonenumbers/h$b;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 147
    move-result v5

    .line 148
    .line 149
    aput v1, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 150
    .line 151
    :catch_b
    :try_start_c
    sget-object v4, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

    .line 152
    .line 153
    sget-object v5, Lcom/google/i18n/phonenumbers/h$b;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/h$b;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 157
    move-result v5

    .line 158
    .line 159
    aput v0, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 160
    .line 161
    :catch_c
    :try_start_d
    sget-object v4, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

    .line 162
    .line 163
    sget-object v5, Lcom/google/i18n/phonenumbers/h$b;->RFC3966:Lcom/google/i18n/phonenumbers/h$b;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 167
    move-result v5

    .line 168
    .line 169
    aput v2, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 170
    .line 171
    :catch_d
    :try_start_e
    sget-object v4, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

    .line 172
    .line 173
    sget-object v5, Lcom/google/i18n/phonenumbers/h$b;->NATIONAL:Lcom/google/i18n/phonenumbers/h$b;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 177
    move-result v5

    .line 178
    .line 179
    aput v3, v4, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 180
    .line 181
    .line 182
    :catch_e
    invoke-static {}, Lcom/google/i18n/phonenumbers/m$a;->values()[Lcom/google/i18n/phonenumbers/m$a;

    .line 183
    move-result-object v4

    .line 184
    array-length v4, v4

    .line 185
    .line 186
    new-array v4, v4, [I

    .line 187
    .line 188
    sput-object v4, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    .line 189
    .line 190
    :try_start_f
    sget-object v5, Lcom/google/i18n/phonenumbers/m$a;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/i18n/phonenumbers/m$a;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 194
    move-result v5

    .line 195
    .line 196
    aput v1, v4, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 197
    .line 198
    :catch_f
    :try_start_10
    sget-object v1, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    .line 199
    .line 200
    sget-object v4, Lcom/google/i18n/phonenumbers/m$a;->FROM_NUMBER_WITH_IDD:Lcom/google/i18n/phonenumbers/m$a;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 204
    move-result v4

    .line 205
    .line 206
    aput v0, v1, v4
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 207
    .line 208
    :catch_10
    :try_start_11
    sget-object v0, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    .line 209
    .line 210
    sget-object v1, Lcom/google/i18n/phonenumbers/m$a;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/i18n/phonenumbers/m$a;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 214
    move-result v1

    .line 215
    .line 216
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 217
    .line 218
    :catch_11
    :try_start_12
    sget-object v0, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    .line 219
    .line 220
    sget-object v1, Lcom/google/i18n/phonenumbers/m$a;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/m$a;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 224
    move-result v1

    .line 225
    .line 226
    aput v3, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 227
    :catch_12
    return-void
.end method
