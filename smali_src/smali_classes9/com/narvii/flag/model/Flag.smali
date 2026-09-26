.class public Lcom/narvii/flag/model/Flag;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


# static fields
.field public static final FLAG_RESOLVE_TYPE_CUSTOM:I = 0x64

.field public static final FLAG_RESOLVE_TYPE_INAPPROPRIATE_CONTENT:I = 0x2

.field public static final FLAG_RESOLVE_TYPE_KEEP:I = 0x0

.field public static final FLAG_RESOLVE_TYPE_OFF_TOPIC:I = 0x1

.field public static final FLAG_RESOLVE_TYPE_SPAM:I = 0x3

.field public static final FLAG_RESOLVE_TYPE_VIOLATION:I = 0x4

.field public static final FLAG_STATUS_NONE:I = 0x0

.field public static final FLAG_STATUS_PENDING:I = 0x1

.field public static final FLAG_STATUS_RESOLVED:I = 0x2

.field public static final FLAG_TYPE_HARASSMENT_N_TROLLING:I = 0x6d

.field public static final FLAG_TYPE_HATE_SPEECH_N_BIGOTRY:I = 0x6b

.field public static final FLAG_TYPE_INAPPROPRIATE_REQUESTS:I = 0x66

.field public static final FLAG_TYPE_NUDITY_N_PORNOGRAPHY:I = 0x6e

.field public static final FLAG_TYPE_SELF_INJURY_N_SUICIDE:I = 0x6c

.field public static final FLAG_TYPE_USER_IN_AUDIO_CHAT:I = 0x68

.field public static final FLAG_TYPE_USER_IN_VIDEO_CHAT:I = 0x69

.field public static final FLAG_TYPE_VIOLENT_GRAPHIC_CONTENT_OR_DANGEROUS_ACTIVITY:I = 0x6a

.field public static final TYPE_ART_THEFT:I = 0x3

.field public static final TYPE_BULLYING:I = 0x0

.field public static final TYPE_INAPPROPRIATE_CONTENT:I = 0x1

.field public static final TYPE_NONE:I = 0x3e7

.field public static final TYPE_OFF_TOPIC:I = 0x4

.field public static final TYPE_OTHERS:I = 0xc8

.field public static final TYPE_OTHERS_VV_CHAT:I = 0xc9

.field public static final TYPE_SEXUALLY_EXPLICIT:I = 0x64

.field public static final TYPE_SPAM:I = 0x2

.field public static final TYPE_TROLLING:I = 0x5

.field public static final TYPE_VIOLENT_CONTENT:I = 0x65


# instance fields
.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public externalSource:Lcom/narvii/model/ExternalSource;

.field public flaggedCount:I

.field public flaggedTypes:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Ljava/lang/Integer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lastResolvedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public modifiedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public objectId:Ljava/lang/String;

.field public objectType:I

.field public objectUid:Ljava/lang/String;

.field public objectUser:Lcom/narvii/model/User;

.field public operator:Lcom/narvii/model/User;

.field public parentId:Ljava/lang/String;

.field public parentType:I

.field public reasonMessage:Ljava/lang/String;

.field public reasonType:I

.field public screenshotMediaList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Media;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public status:I

.field public totalFlaggedCount:I

.field public totalFlaggedTypes:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Ljava/lang/Integer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method

.method public static getFlagType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    .line 1
    .line 2
    .line 3
    const v0, 0x7f120773

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    .line 17
    .line 18
    :cond_0
    const v0, 0x7f120785

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    .line 32
    .line 33
    :cond_1
    const v0, 0x7f1207a0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    const/4 p0, 0x2

    .line 45
    return p0

    .line 46
    .line 47
    .line 48
    :cond_2
    const v0, 0x7f12078d

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    const/16 v1, 0xc8

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    return v1

    .line 62
    .line 63
    .line 64
    :cond_3
    const v0, 0x7f12079d

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v0

    .line 73
    .line 74
    const/16 v2, 0x64

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    return v2

    .line 78
    .line 79
    .line 80
    :cond_4
    const v0, 0x7f1207a8

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v0

    .line 89
    .line 90
    const/16 v3, 0x65

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    return v3

    .line 94
    .line 95
    .line 96
    :cond_5
    const v0, 0x7f12078e

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v0

    .line 105
    .line 106
    if-eqz v0, :cond_6

    .line 107
    return v1

    .line 108
    .line 109
    .line 110
    :cond_6
    const v0, 0x7f12078c

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v0

    .line 119
    .line 120
    if-eqz v0, :cond_7

    .line 121
    const/4 p0, 0x4

    .line 122
    return p0

    .line 123
    .line 124
    .line 125
    :cond_7
    const v0, 0x7f12079c

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v0

    .line 134
    .line 135
    if-eqz v0, :cond_8

    .line 136
    return v2

    .line 137
    .line 138
    .line 139
    :cond_8
    const v0, 0x7f1207a9

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result v0

    .line 148
    .line 149
    if-eqz v0, :cond_9

    .line 150
    return v3

    .line 151
    .line 152
    .line 153
    :cond_9
    const v0, 0x7f120786

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v0

    .line 162
    .line 163
    if-eqz v0, :cond_a

    .line 164
    .line 165
    const/16 p0, 0x66

    .line 166
    return p0

    .line 167
    .line 168
    .line 169
    :cond_a
    const v0, 0x7f1207a7

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result v0

    .line 178
    .line 179
    if-eqz v0, :cond_b

    .line 180
    .line 181
    const/16 p0, 0x6a

    .line 182
    return p0

    .line 183
    .line 184
    .line 185
    :cond_b
    const v0, 0x7f120784

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result v0

    .line 194
    .line 195
    if-eqz v0, :cond_c

    .line 196
    .line 197
    const/16 p0, 0x6b

    .line 198
    return p0

    .line 199
    .line 200
    .line 201
    :cond_c
    const v0, 0x7f12079b

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 205
    move-result-object v0

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    move-result v0

    .line 210
    .line 211
    if-eqz v0, :cond_d

    .line 212
    .line 213
    const/16 p0, 0x6c

    .line 214
    return p0

    .line 215
    .line 216
    .line 217
    :cond_d
    const v0, 0x7f120783

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 221
    move-result-object v0

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    move-result v0

    .line 226
    .line 227
    if-eqz v0, :cond_e

    .line 228
    .line 229
    const/16 p0, 0x6d

    .line 230
    return p0

    .line 231
    .line 232
    .line 233
    :cond_e
    const v0, 0x7f12078b

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 237
    move-result-object p0

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    move-result p0

    .line 242
    .line 243
    if-eqz p0, :cond_f

    .line 244
    .line 245
    const/16 p0, 0x6e

    .line 246
    return p0

    .line 247
    .line 248
    :cond_f
    const/16 p0, 0x3e7

    .line 249
    return p0
.end method

.method public static getFlagTypeString(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Bullying"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "Inappropriate content"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "Spam"

    return-object p0

    :cond_2
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_3

    const-string p0, "Other"

    return-object p0

    :cond_3
    const/16 v0, 0x64

    if-ne p0, v0, :cond_4

    const-string p0, "Sexually Explicit"

    return-object p0

    :cond_4
    const/16 v0, 0x65

    if-ne p0, v0, :cond_5

    const-string p0, "Violent Profile Image"

    return-object p0

    :cond_5
    const/4 v0, 0x4

    if-ne p0, v0, :cond_6

    const-string p0, "Off Topic"

    return-object p0

    :cond_6
    const/16 v0, 0x66

    if-ne p0, v0, :cond_7

    const-string p0, "Inappropriate Requests"

    return-object p0

    :cond_7
    const/16 v0, 0x6a

    if-ne p0, v0, :cond_8

    const-string p0, "Violence Graphic Content or Dangerous Activity"

    return-object p0

    :cond_8
    const/16 v0, 0x6b

    if-ne p0, v0, :cond_9

    const-string p0, "Hate Speech and Bigotry"

    return-object p0

    :cond_9
    const/16 v0, 0x6c

    if-ne p0, v0, :cond_a

    const-string p0, "Self Injury and Suicide"

    return-object p0

    :cond_a
    const/16 v0, 0x6d

    if-ne p0, v0, :cond_b

    const-string p0, "Harassment and Trolling"

    return-object p0

    :cond_b
    const/16 v0, 0x6e

    if-ne p0, v0, :cond_c

    const-string p0, "Nudity and Pornography"

    return-object p0

    :cond_c
    const-string p0, "Others"

    return-object p0
.end method


# virtual methods
.method public getBlogType()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/model/Flag;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    const-string v1, "objectSubtype"

    .line 9
    .line 10
    .line 11
    filled-new-array {v1}, [Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getExternalOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/model/Flag;->externalSource:Lcom/narvii/model/ExternalSource;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/model/ExternalSource;->getOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getExternalOriginName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/model/Flag;->externalSource:Lcom/narvii/model/ExternalSource;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/model/ExternalSource;->getFeedShowTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getStrikeSpanStr(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 5
    .line 6
    const-string v1, "strikeCount"

    .line 7
    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    .line 20
    const v2, -0xff3183

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    .line 26
    const v2, -0xa59dd

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_1
    const v2, -0x2ffde5

    .line 31
    .line 32
    .line 33
    :goto_0
    const v3, 0x7f120e01

    .line 34
    .line 35
    .line 36
    const v4, 0x7f120d33

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0, v3, v4}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    const-string v3, " "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 51
    .line 52
    new-instance v3, Lcom/narvii/util/text/TagSpan;

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, v2, p1}, Lcom/narvii/util/text/TagSpan;-><init>(ILjava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 59
    move-result p1

    .line 60
    sub-int/2addr p1, v1

    .line 61
    .line 62
    const/16 v1, 0x21

    .line 63
    const/4 v2, 0x0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 67
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/flag/model/Flag;->objectUid:Ljava/lang/String;

    return-object v0
.end method
