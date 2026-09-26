.class public Lcom/narvii/app/AminoNavigator;
.super Lcom/narvii/app/BaseNavigator;
.source "SourceFile"


# static fields
.field private static final PATH_X:Ljava/util/regex/Pattern;


# instance fields
.field private myCommunityId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "x(\\d+)"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/app/AminoNavigator;->PATH_X:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 4
    .line 5
    iput p3, p0, Lcom/narvii/app/AminoNavigator;->myCommunityId:I

    .line 6
    return-void
.end method


# virtual methods
.method protected pathMapping(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 14

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "g"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x3

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v6, 0x1

    .line 27
    const/4 v7, 0x0

    .line 28
    .line 29
    if-eqz v2, :cond_4

    .line 30
    .line 31
    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    move-result v2

    .line 38
    .line 39
    if-lez v2, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    check-cast v2, Ljava/lang/String;

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v2, v7

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    move-result v4

    .line 52
    .line 53
    if-le v4, v6, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    check-cast v4, Ljava/lang/String;

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object v4, v7

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 65
    move-result v6

    .line 66
    .line 67
    if-le v6, v5, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v5

    .line 72
    .line 73
    check-cast v5, Ljava/lang/String;

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move-object v5, v7

    .line 76
    .line 77
    .line 78
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 79
    move-result v6

    .line 80
    .line 81
    if-le v6, v3, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    move-object v7, v0

    .line 87
    .line 88
    check-cast v7, Ljava/lang/String;

    .line 89
    :cond_3
    :goto_3
    move-object v10, v2

    .line 90
    move-object v11, v4

    .line 91
    move-object v12, v5

    .line 92
    move-object v13, v7

    .line 93
    move-object v7, v1

    .line 94
    .line 95
    goto/16 :goto_b

    .line 96
    .line 97
    :cond_4
    if-eqz v1, :cond_a

    .line 98
    .line 99
    sget-object v2, Lcom/narvii/app/AminoNavigator;->PATH_X:Ljava/util/regex/Pattern;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 107
    move-result v8

    .line 108
    .line 109
    if-eqz v8, :cond_a

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    move-result v1

    .line 118
    .line 119
    iget-object v2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 120
    .line 121
    const-string v8, "config"

    .line 122
    .line 123
    .line 124
    invoke-interface {v2, v8}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 131
    move-result v8

    .line 132
    .line 133
    if-eq v1, v8, :cond_5

    .line 134
    .line 135
    iget v8, p0, Lcom/narvii/app/AminoNavigator;->myCommunityId:I

    .line 136
    .line 137
    if-eq v1, v8, :cond_5

    .line 138
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    const-string v1, "ignore redirect to other community url "

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    .line 161
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 162
    return-object p1

    .line 163
    .line 164
    .line 165
    :cond_5
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 166
    move-result v2

    .line 167
    .line 168
    if-eq v1, v2, :cond_6

    .line 169
    .line 170
    iget v1, p0, Lcom/narvii/app/AminoNavigator;->myCommunityId:I

    .line 171
    .line 172
    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    move-result-object v1

    .line 175
    goto :goto_4

    .line 176
    :cond_6
    move-object v1, v7

    .line 177
    .line 178
    .line 179
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 180
    move-result v2

    .line 181
    .line 182
    if-lez v2, :cond_7

    .line 183
    .line 184
    .line 185
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    move-result-object v2

    .line 187
    .line 188
    check-cast v2, Ljava/lang/String;

    .line 189
    goto :goto_5

    .line 190
    :cond_7
    move-object v2, v7

    .line 191
    .line 192
    .line 193
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 194
    move-result v4

    .line 195
    .line 196
    if-le v4, v6, :cond_8

    .line 197
    .line 198
    .line 199
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    move-result-object v4

    .line 201
    .line 202
    check-cast v4, Ljava/lang/String;

    .line 203
    goto :goto_6

    .line 204
    :cond_8
    move-object v4, v7

    .line 205
    .line 206
    .line 207
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 208
    move-result v6

    .line 209
    .line 210
    if-le v6, v5, :cond_9

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    move-result-object v5

    .line 215
    .line 216
    check-cast v5, Ljava/lang/String;

    .line 217
    goto :goto_7

    .line 218
    :cond_9
    move-object v5, v7

    .line 219
    .line 220
    .line 221
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 222
    move-result v6

    .line 223
    .line 224
    if-le v6, v3, :cond_3

    .line 225
    .line 226
    .line 227
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 228
    move-result-object v0

    .line 229
    move-object v7, v0

    .line 230
    .line 231
    check-cast v7, Ljava/lang/String;

    .line 232
    .line 233
    goto/16 :goto_3

    .line 234
    .line 235
    .line 236
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 237
    move-result v2

    .line 238
    .line 239
    if-lez v2, :cond_b

    .line 240
    .line 241
    .line 242
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    move-result-object v2

    .line 244
    .line 245
    check-cast v2, Ljava/lang/String;

    .line 246
    move-object v4, v2

    .line 247
    goto :goto_8

    .line 248
    :cond_b
    move-object v4, v7

    .line 249
    .line 250
    .line 251
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 252
    move-result v2

    .line 253
    .line 254
    if-le v2, v6, :cond_c

    .line 255
    .line 256
    .line 257
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 258
    move-result-object v2

    .line 259
    .line 260
    check-cast v2, Ljava/lang/String;

    .line 261
    goto :goto_9

    .line 262
    :cond_c
    move-object v2, v7

    .line 263
    .line 264
    .line 265
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 266
    move-result v3

    .line 267
    .line 268
    if-le v3, v5, :cond_d

    .line 269
    .line 270
    .line 271
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 272
    move-result-object v0

    .line 273
    .line 274
    check-cast v0, Ljava/lang/String;

    .line 275
    goto :goto_a

    .line 276
    :cond_d
    move-object v0, v7

    .line 277
    :goto_a
    move-object v13, v0

    .line 278
    move-object v10, v1

    .line 279
    move-object v12, v2

    .line 280
    move-object v11, v4

    .line 281
    :goto_b
    move-object v8, p0

    .line 282
    move-object v9, p1

    .line 283
    .line 284
    .line 285
    invoke-virtual/range {v8 .. v13}, Lcom/narvii/app/BaseNavigator;->pathMapping(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    move-result-object p1

    .line 287
    .line 288
    if-eqz v7, :cond_e

    .line 289
    .line 290
    const-string v0, "__communityId"

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 294
    move-result v1

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    :cond_e
    return-object p1
.end method

.method protected rawHttpMapping(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "ndc://"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "/"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    new-instance v2, Landroid/content/Intent;

    .line 32
    .line 33
    const-string v1, "android.intent.action.VIEW"

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 39
    .line 40
    const-string v1, "config"

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 50
    move-result v0

    .line 51
    .line 52
    if-ne v0, p1, :cond_0

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    move-object v1, p0

    .line 56
    move-object v3, p2

    .line 57
    move-object v4, p3

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/app/BaseNavigator;->pathMapping(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    if-eqz p2, :cond_1

    .line 68
    return-object p1

    .line 69
    .line 70
    :cond_0
    new-instance p2, Lcom/narvii/util/PackageUtils;

    .line 71
    .line 72
    iget-object p3, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 73
    .line 74
    .line 75
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 76
    move-result-object p3

    .line 77
    .line 78
    .line 79
    invoke-direct {p2, p3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Lcom/narvii/util/PackageUtils;->isCommunityInstalled(I)Z

    .line 83
    move-result p3

    .line 84
    .line 85
    if-eqz p3, :cond_1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p1}, Lcom/narvii/util/PackageUtils;->getPackageName(I)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    const-class p2, Lcom/narvii/app/ForwardActivity;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    return-object v2

    .line 100
    :cond_1
    const/4 p1, 0x0

    .line 101
    return-object p1
.end method
