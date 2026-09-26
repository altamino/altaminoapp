.class public Lorg/schabi/newpipe/extractor/services/youtube/s0;
.super Lx9/s;
.source "SourceFile"


# static fields
.field private static final SUPPORTED_COUNTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/localization/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_LANGUAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/localization/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 110

    .line 1
    .line 2
    const-string v0, "en-GB"

    .line 3
    .line 4
    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/i;->i([Ljava/lang/String;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/s0;->SUPPORTED_LANGUAGES:Ljava/util/List;

    .line 13
    .line 14
    const-string v1, "DZ"

    .line 15
    .line 16
    const-string v2, "AR"

    .line 17
    .line 18
    const-string v3, "AU"

    .line 19
    .line 20
    const-string v4, "AT"

    .line 21
    .line 22
    const-string v5, "AZ"

    .line 23
    .line 24
    const-string v6, "BH"

    .line 25
    .line 26
    const-string v7, "BD"

    .line 27
    .line 28
    const-string v8, "BY"

    .line 29
    .line 30
    const-string v9, "BE"

    .line 31
    .line 32
    const-string v10, "BO"

    .line 33
    .line 34
    const-string v11, "BA"

    .line 35
    .line 36
    const-string v12, "BR"

    .line 37
    .line 38
    const-string v13, "BG"

    .line 39
    .line 40
    const-string v14, "KH"

    .line 41
    .line 42
    const-string v15, "CA"

    .line 43
    .line 44
    const-string v16, "CL"

    .line 45
    .line 46
    const-string v17, "CO"

    .line 47
    .line 48
    const-string v18, "CR"

    .line 49
    .line 50
    const-string v19, "HR"

    .line 51
    .line 52
    const-string v20, "CY"

    .line 53
    .line 54
    const-string v21, "CZ"

    .line 55
    .line 56
    const-string v22, "DK"

    .line 57
    .line 58
    const-string v23, "DO"

    .line 59
    .line 60
    const-string v24, "EC"

    .line 61
    .line 62
    const-string v25, "EG"

    .line 63
    .line 64
    const-string v26, "SV"

    .line 65
    .line 66
    const-string v27, "EE"

    .line 67
    .line 68
    const-string v28, "FI"

    .line 69
    .line 70
    const-string v29, "FR"

    .line 71
    .line 72
    const-string v30, "GE"

    .line 73
    .line 74
    const-string v31, "DE"

    .line 75
    .line 76
    const-string v32, "GH"

    .line 77
    .line 78
    const-string v33, "GR"

    .line 79
    .line 80
    const-string v34, "GT"

    .line 81
    .line 82
    const-string v35, "HN"

    .line 83
    .line 84
    const-string v36, "HK"

    .line 85
    .line 86
    const-string v37, "HU"

    .line 87
    .line 88
    const-string v38, "IS"

    .line 89
    .line 90
    const-string v39, "IN"

    .line 91
    .line 92
    const-string v40, "ID"

    .line 93
    .line 94
    const-string v41, "IQ"

    .line 95
    .line 96
    const-string v42, "IE"

    .line 97
    .line 98
    const-string v43, "IL"

    .line 99
    .line 100
    const-string v44, "IT"

    .line 101
    .line 102
    const-string v45, "JM"

    .line 103
    .line 104
    const-string v46, "JP"

    .line 105
    .line 106
    const-string v47, "JO"

    .line 107
    .line 108
    const-string v48, "KZ"

    .line 109
    .line 110
    const-string v49, "KE"

    .line 111
    .line 112
    const-string v50, "KW"

    .line 113
    .line 114
    const-string v51, "LA"

    .line 115
    .line 116
    const-string v52, "LV"

    .line 117
    .line 118
    const-string v53, "LB"

    .line 119
    .line 120
    const-string v54, "LY"

    .line 121
    .line 122
    const-string v55, "LI"

    .line 123
    .line 124
    const-string v56, "LT"

    .line 125
    .line 126
    const-string v57, "LU"

    .line 127
    .line 128
    const-string v58, "MY"

    .line 129
    .line 130
    const-string v59, "MT"

    .line 131
    .line 132
    const-string v60, "MX"

    .line 133
    .line 134
    const-string v61, "ME"

    .line 135
    .line 136
    const-string v62, "MA"

    .line 137
    .line 138
    const-string v63, "NP"

    .line 139
    .line 140
    const-string v64, "NL"

    .line 141
    .line 142
    const-string v65, "NZ"

    .line 143
    .line 144
    const-string v66, "NI"

    .line 145
    .line 146
    const-string v67, "NG"

    .line 147
    .line 148
    const-string v68, "MK"

    .line 149
    .line 150
    const-string v69, "NO"

    .line 151
    .line 152
    const-string v70, "OM"

    .line 153
    .line 154
    const-string v71, "PK"

    .line 155
    .line 156
    const-string v72, "PA"

    .line 157
    .line 158
    const-string v73, "PG"

    .line 159
    .line 160
    const-string v74, "PY"

    .line 161
    .line 162
    const-string v75, "PE"

    .line 163
    .line 164
    const-string v76, "PH"

    .line 165
    .line 166
    const-string v77, "PL"

    .line 167
    .line 168
    const-string v78, "PT"

    .line 169
    .line 170
    const-string v79, "PR"

    .line 171
    .line 172
    const-string v80, "QA"

    .line 173
    .line 174
    const-string v81, "RO"

    .line 175
    .line 176
    const-string v82, "RU"

    .line 177
    .line 178
    const-string v83, "SA"

    .line 179
    .line 180
    const-string v84, "SN"

    .line 181
    .line 182
    const-string v85, "RS"

    .line 183
    .line 184
    const-string v86, "SG"

    .line 185
    .line 186
    const-string v87, "SK"

    .line 187
    .line 188
    const-string v88, "SI"

    .line 189
    .line 190
    const-string v89, "ZA"

    .line 191
    .line 192
    const-string v90, "KR"

    .line 193
    .line 194
    const-string v91, "ES"

    .line 195
    .line 196
    const-string v92, "LK"

    .line 197
    .line 198
    const-string v93, "SE"

    .line 199
    .line 200
    const-string v94, "CH"

    .line 201
    .line 202
    const-string v95, "TW"

    .line 203
    .line 204
    const-string v96, "TZ"

    .line 205
    .line 206
    const-string v97, "TH"

    .line 207
    .line 208
    const-string v98, "TN"

    .line 209
    .line 210
    const-string v99, "TR"

    .line 211
    .line 212
    const-string v100, "UG"

    .line 213
    .line 214
    const-string v101, "UA"

    .line 215
    .line 216
    const-string v102, "AE"

    .line 217
    .line 218
    const-string v103, "GB"

    .line 219
    .line 220
    const-string v104, "US"

    .line 221
    .line 222
    const-string v105, "UY"

    .line 223
    .line 224
    const-string v106, "VE"

    .line 225
    .line 226
    const-string v107, "VN"

    .line 227
    .line 228
    const-string v108, "YE"

    .line 229
    .line 230
    const-string v109, "ZW"

    .line 231
    .line 232
    .line 233
    filled-new-array/range {v1 .. v109}, [Ljava/lang/String;

    .line 234
    move-result-object v0

    .line 235
    .line 236
    .line 237
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/a;->b([Ljava/lang/String;)Ljava/util/List;

    .line 238
    move-result-object v0

    .line 239
    .line 240
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/s0;->SUPPORTED_COUNTRIES:Ljava/util/List;

    .line 241
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v0, v0, [Lx9/s$b$a;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    sget-object v2, Lx9/s$b$a;->AUDIO:Lx9/s$b$a;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    sget-object v2, Lx9/s$b$a;->VIDEO:Lx9/s$b$a;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    sget-object v2, Lx9/s$b$a;->LIVE:Lx9/s$b$a;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    const/4 v1, 0x3

    .line 20
    .line 21
    sget-object v2, Lx9/s$b$a;->COMMENTS:Lx9/s$b$a;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v1, "YouTube"

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1, v1, v0}, Lx9/s;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a()Lorg/schabi/newpipe/extractor/linkhandler/d;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lna/a;->n()Lna/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Lorg/schabi/newpipe/extractor/linkhandler/d;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lna/b;->n()Lna/b;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h(Lorg/schabi/newpipe/extractor/linkhandler/a;)Loa/h;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lma/h0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lma/h0;-><init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V

    .line 6
    return-object v0
.end method

.method public i()Lorg/schabi/newpipe/extractor/linkhandler/b;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lna/d;->l()Lna/d;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/localization/a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/s0;->SUPPORTED_COUNTRIES:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/localization/i;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/s0;->SUPPORTED_LANGUAGES:Ljava/util/List;

    return-object v0
.end method
