.class public abstract Lorg/threeten/bp/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Lorg/threeten/bp/r;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORT_IDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x798cab446e6L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/r$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/threeten/bp/r$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/threeten/bp/r;->FROM:Lorg/threeten/bp/temporal/j;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    const-string v1, "ACT"

    .line 15
    .line 16
    const-string v2, "Australia/Darwin"

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    const-string v1, "AET"

    .line 22
    .line 23
    const-string v2, "Australia/Sydney"

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    const-string v1, "AGT"

    .line 29
    .line 30
    const-string v2, "America/Argentina/Buenos_Aires"

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    const-string v1, "ART"

    .line 36
    .line 37
    const-string v2, "Africa/Cairo"

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    const-string v1, "AST"

    .line 43
    .line 44
    const-string v2, "America/Anchorage"

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    const-string v1, "BET"

    .line 50
    .line 51
    const-string v2, "America/Sao_Paulo"

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    const-string v1, "BST"

    .line 57
    .line 58
    const-string v2, "Asia/Dhaka"

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    const-string v1, "CAT"

    .line 64
    .line 65
    const-string v2, "Africa/Harare"

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    const-string v1, "CNT"

    .line 71
    .line 72
    const-string v2, "America/St_Johns"

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    const-string v1, "CST"

    .line 78
    .line 79
    const-string v2, "America/Chicago"

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    const-string v1, "CTT"

    .line 85
    .line 86
    const-string v2, "Asia/Shanghai"

    .line 87
    .line 88
    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    const-string v1, "EAT"

    .line 92
    .line 93
    const-string v2, "Africa/Addis_Ababa"

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    const-string v1, "ECT"

    .line 99
    .line 100
    const-string v2, "Europe/Paris"

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    const-string v1, "IET"

    .line 106
    .line 107
    const-string v2, "America/Indiana/Indianapolis"

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    const-string v1, "IST"

    .line 113
    .line 114
    const-string v2, "Asia/Kolkata"

    .line 115
    .line 116
    .line 117
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    const-string v1, "JST"

    .line 120
    .line 121
    const-string v2, "Asia/Tokyo"

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    const-string v1, "MIT"

    .line 127
    .line 128
    const-string v2, "Pacific/Apia"

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    const-string v1, "NET"

    .line 134
    .line 135
    const-string v2, "Asia/Yerevan"

    .line 136
    .line 137
    .line 138
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    const-string v1, "NST"

    .line 141
    .line 142
    const-string v2, "Pacific/Auckland"

    .line 143
    .line 144
    .line 145
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    const-string v1, "PLT"

    .line 148
    .line 149
    const-string v2, "Asia/Karachi"

    .line 150
    .line 151
    .line 152
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    const-string v1, "PNT"

    .line 155
    .line 156
    const-string v2, "America/Phoenix"

    .line 157
    .line 158
    .line 159
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    const-string v1, "PRT"

    .line 162
    .line 163
    const-string v2, "America/Puerto_Rico"

    .line 164
    .line 165
    .line 166
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    const-string v1, "PST"

    .line 169
    .line 170
    const-string v2, "America/Los_Angeles"

    .line 171
    .line 172
    .line 173
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    const-string v1, "SST"

    .line 176
    .line 177
    const-string v2, "Pacific/Guadalcanal"

    .line 178
    .line 179
    .line 180
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    const-string v1, "VST"

    .line 183
    .line 184
    const-string v2, "Asia/Ho_Chi_Minh"

    .line 185
    .line 186
    .line 187
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    const-string v1, "EST"

    .line 190
    .line 191
    const-string v2, "-05:00"

    .line 192
    .line 193
    .line 194
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    const-string v1, "MST"

    .line 197
    .line 198
    const-string v2, "-07:00"

    .line 199
    .line 200
    .line 201
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    const-string v1, "HST"

    .line 204
    .line 205
    const-string v2, "-10:00"

    .line 206
    .line 207
    .line 208
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    sput-object v0, Lorg/threeten/bp/r;->SHORT_IDS:Ljava/util/Map;

    .line 215
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-class v1, Lorg/threeten/bp/s;

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-class v1, Lorg/threeten/bp/t;

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 23
    .line 24
    const-string v1, "Invalid subclass"

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 28
    throw v0

    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/r;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/temporal/i;->f()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/e;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lorg/threeten/bp/r;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-object v0

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
    const-string v2, "Unable to obtain ZoneId from TemporalAccessor: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, ", type "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public static q(Ljava/lang/String;)Lorg/threeten/bp/r;
    .locals 5

    .line 1
    .line 2
    const-string v0, "zoneId"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    const-string v0, "Z"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lorg/threeten/bp/s;->UTC:Lorg/threeten/bp/s;

    .line 16
    return-object p0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    if-eq v0, v1, :cond_b

    .line 24
    .line 25
    const-string v0, "+"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_a

    .line 32
    .line 33
    const-string v0, "-"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_1
    const-string v0, "UTC"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-nez v0, :cond_9

    .line 50
    .line 51
    const-string v0, "GMT"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-nez v0, :cond_9

    .line 58
    .line 59
    const-string v0, "UT"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v2

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_2
    const-string v2, "UTC+"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    move-result v2

    .line 74
    .line 75
    if-nez v2, :cond_7

    .line 76
    .line 77
    const-string v2, "GMT+"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    move-result v2

    .line 82
    .line 83
    if-nez v2, :cond_7

    .line 84
    .line 85
    const-string v2, "UTC-"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    move-result v2

    .line 90
    .line 91
    if-nez v2, :cond_7

    .line 92
    .line 93
    const-string v2, "GMT-"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    move-result v2

    .line 98
    .line 99
    if-eqz v2, :cond_3

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :cond_3
    const-string v2, "UT+"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 106
    move-result v2

    .line 107
    .line 108
    if-nez v2, :cond_5

    .line 109
    .line 110
    const-string v2, "UT-"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 114
    move-result v2

    .line 115
    .line 116
    if-eqz v2, :cond_4

    .line 117
    goto :goto_0

    .line 118
    .line 119
    .line 120
    :cond_4
    invoke-static {p0, v1}, Lorg/threeten/bp/t;->s(Ljava/lang/String;Z)Lorg/threeten/bp/t;

    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_5
    :goto_0
    const/4 v1, 0x2

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    .line 129
    .line 130
    invoke-static {p0}, Lorg/threeten/bp/s;->w(Ljava/lang/String;)Lorg/threeten/bp/s;

    .line 131
    move-result-object p0

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lorg/threeten/bp/s;->v()I

    .line 135
    move-result v1

    .line 136
    .line 137
    if-nez v1, :cond_6

    .line 138
    .line 139
    new-instance v1, Lorg/threeten/bp/t;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lorg/threeten/bp/s;->o()Lorg/threeten/bp/zone/f;

    .line 143
    move-result-object p0

    .line 144
    .line 145
    .line 146
    invoke-direct {v1, v0, p0}, Lorg/threeten/bp/t;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/f;)V

    .line 147
    return-object v1

    .line 148
    .line 149
    :cond_6
    new-instance v1, Lorg/threeten/bp/t;

    .line 150
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lorg/threeten/bp/s;->n()Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lorg/threeten/bp/s;->o()Lorg/threeten/bp/zone/f;

    .line 172
    move-result-object p0

    .line 173
    .line 174
    .line 175
    invoke-direct {v1, v0, p0}, Lorg/threeten/bp/t;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/f;)V

    .line 176
    return-object v1

    .line 177
    :cond_7
    :goto_1
    const/4 v0, 0x3

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 181
    move-result-object v1

    .line 182
    .line 183
    .line 184
    invoke-static {v1}, Lorg/threeten/bp/s;->w(Ljava/lang/String;)Lorg/threeten/bp/s;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Lorg/threeten/bp/s;->v()I

    .line 189
    move-result v2

    .line 190
    const/4 v3, 0x0

    .line 191
    .line 192
    if-nez v2, :cond_8

    .line 193
    .line 194
    new-instance v2, Lorg/threeten/bp/t;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 198
    move-result-object p0

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Lorg/threeten/bp/s;->o()Lorg/threeten/bp/zone/f;

    .line 202
    move-result-object v0

    .line 203
    .line 204
    .line 205
    invoke-direct {v2, p0, v0}, Lorg/threeten/bp/t;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/f;)V

    .line 206
    return-object v2

    .line 207
    .line 208
    :cond_8
    new-instance v2, Lorg/threeten/bp/t;

    .line 209
    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 217
    move-result-object p0

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Lorg/threeten/bp/s;->n()Ljava/lang/String;

    .line 224
    move-result-object p0

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object p0

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Lorg/threeten/bp/s;->o()Lorg/threeten/bp/zone/f;

    .line 235
    move-result-object v0

    .line 236
    .line 237
    .line 238
    invoke-direct {v2, p0, v0}, Lorg/threeten/bp/t;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/f;)V

    .line 239
    return-object v2

    .line 240
    .line 241
    :cond_9
    :goto_2
    new-instance v0, Lorg/threeten/bp/t;

    .line 242
    .line 243
    sget-object v1, Lorg/threeten/bp/s;->UTC:Lorg/threeten/bp/s;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Lorg/threeten/bp/s;->o()Lorg/threeten/bp/zone/f;

    .line 247
    move-result-object v1

    .line 248
    .line 249
    .line 250
    invoke-direct {v0, p0, v1}, Lorg/threeten/bp/t;-><init>(Ljava/lang/String;Lorg/threeten/bp/zone/f;)V

    .line 251
    return-object v0

    .line 252
    .line 253
    .line 254
    :cond_a
    :goto_3
    invoke-static {p0}, Lorg/threeten/bp/s;->w(Ljava/lang/String;)Lorg/threeten/bp/s;

    .line 255
    move-result-object p0

    .line 256
    return-object p0

    .line 257
    .line 258
    :cond_b
    new-instance v0, Lorg/threeten/bp/b;

    .line 259
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    const-string v2, "Invalid zone: "

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object p0

    .line 276
    .line 277
    .line 278
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 279
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/r;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p1, Lorg/threeten/bp/r;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/threeten/bp/r;->n()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/threeten/bp/r;->n()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/r;->n()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public abstract o()Lorg/threeten/bp/zone/f;
.end method

.method public p()Lorg/threeten/bp/r;
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/threeten/bp/r;->o()Lorg/threeten/bp/zone/f;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/zone/f;->d()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lorg/threeten/bp/f;->EPOCH:Lorg/threeten/bp/f;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/f;->a(Lorg/threeten/bp/f;)Lorg/threeten/bp/s;

    .line 16
    move-result-object v0
    :try_end_0
    .catch Lorg/threeten/bp/zone/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object v0

    .line 18
    :catch_0
    :cond_0
    return-object p0
.end method

.method abstract r(Ljava/io/DataOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/r;->n()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
