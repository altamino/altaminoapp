.class public Lcom/narvii/app/incubator/IncubatorNavigator;
.super Lcom/narvii/app/BaseNavigator;
.source "SourceFile"


# static fields
.field private static final AMINOAPP_X:Ljava/util/regex/Pattern;

.field private static final PABKITAPP_X:Ljava/util/regex/Pattern;

.field private static final PATH_X:Ljava/util/regex/Pattern;


# instance fields
.field private communityId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "aminoapp(\\d+)"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/app/incubator/IncubatorNavigator;->AMINOAPP_X:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    const-string v0, "pabkitapp(\\d+)"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/app/incubator/IncubatorNavigator;->PABKITAPP_X:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    const-string v0, "x(\\d+)"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Lcom/narvii/app/incubator/IncubatorNavigator;->PATH_X:Ljava/util/regex/Pattern;

    .line 25
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
    iput p3, p0, Lcom/narvii/app/incubator/IncubatorNavigator;->communityId:I

    .line 6
    return-void
.end method


# virtual methods
.method public intentMapping(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .line 1
    .line 2
    const-string v0, "ana_url"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-object p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/BaseNavigator;->noMapping(Landroid/content/Intent;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1}, Lcom/narvii/app/BaseNavigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v0, "__communityId"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget v3, p0, Lcom/narvii/app/incubator/IncubatorNavigator;->communityId:I

    .line 37
    .line 38
    if-eq v0, v3, :cond_1

    .line 39
    .line 40
    const-string v3, "__forwardCommunityId"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    .line 45
    const-string v0, "__forward"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 49
    move-result p1

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    const-class v0, Lcom/narvii/app/ForwardActivity;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 63
    :cond_1
    return-object v2
.end method

.method protected isMyScheme(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/BaseNavigator;->isMyScheme(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    sget-object v0, Lcom/narvii/app/incubator/IncubatorNavigator;->AMINOAPP_X:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    return v1

    .line 22
    .line 23
    :cond_1
    sget-object v0, Lcom/narvii/app/incubator/IncubatorNavigator;->PABKITAPP_X:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    return v1

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method protected pathMapping(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v7, -0x1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v3, Lcom/narvii/app/incubator/IncubatorNavigator;->AMINOAPP_X:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 18
    move-result v4

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v3, Lcom/narvii/app/incubator/IncubatorNavigator;->PABKITAPP_X:Ljava/util/regex/Pattern;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    move-result v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v0, v7

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    const-string v5, "g"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 75
    move-result v5

    .line 76
    const/4 v6, 0x3

    .line 77
    const/4 v8, 0x2

    .line 78
    const/4 v9, 0x0

    .line 79
    const/4 v10, 0x0

    .line 80
    .line 81
    if-eqz v5, :cond_6

    .line 82
    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 85
    move-result v0

    .line 86
    .line 87
    if-lez v0, :cond_2

    .line 88
    .line 89
    .line 90
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    check-cast v0, Ljava/lang/String;

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move-object v0, v10

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 99
    move-result v4

    .line 100
    .line 101
    if-le v4, v2, :cond_3

    .line 102
    .line 103
    .line 104
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object v4

    .line 106
    .line 107
    check-cast v4, Ljava/lang/String;

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    move-object v4, v10

    .line 110
    .line 111
    .line 112
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 113
    move-result v5

    .line 114
    .line 115
    if-le v5, v8, :cond_4

    .line 116
    .line 117
    .line 118
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v5

    .line 120
    .line 121
    check-cast v5, Ljava/lang/String;

    .line 122
    goto :goto_3

    .line 123
    :cond_4
    move-object v5, v10

    .line 124
    .line 125
    .line 126
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 127
    move-result v8

    .line 128
    .line 129
    if-le v8, v6, :cond_5

    .line 130
    .line 131
    .line 132
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    move-result-object v3

    .line 134
    move-object v10, v3

    .line 135
    .line 136
    check-cast v10, Ljava/lang/String;

    .line 137
    :cond_5
    move-object v3, v0

    .line 138
    move v0, v9

    .line 139
    :goto_4
    move-object v6, v10

    .line 140
    .line 141
    goto/16 :goto_a

    .line 142
    .line 143
    :cond_6
    if-eqz v4, :cond_b

    .line 144
    .line 145
    sget-object v5, Lcom/narvii/app/incubator/IncubatorNavigator;->PATH_X:Ljava/util/regex/Pattern;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 149
    move-result-object v5

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 153
    move-result v11

    .line 154
    .line 155
    if-eqz v11, :cond_b

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 163
    move-result v0

    .line 164
    .line 165
    .line 166
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 167
    move-result v4

    .line 168
    .line 169
    if-lez v4, :cond_7

    .line 170
    .line 171
    .line 172
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    move-result-object v4

    .line 174
    .line 175
    check-cast v4, Ljava/lang/String;

    .line 176
    goto :goto_5

    .line 177
    :cond_7
    move-object v4, v10

    .line 178
    .line 179
    .line 180
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 181
    move-result v5

    .line 182
    .line 183
    if-le v5, v2, :cond_8

    .line 184
    .line 185
    .line 186
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    move-result-object v5

    .line 188
    .line 189
    check-cast v5, Ljava/lang/String;

    .line 190
    goto :goto_6

    .line 191
    :cond_8
    move-object v5, v10

    .line 192
    .line 193
    .line 194
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 195
    move-result v11

    .line 196
    .line 197
    if-le v11, v8, :cond_9

    .line 198
    .line 199
    .line 200
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object v8

    .line 202
    .line 203
    check-cast v8, Ljava/lang/String;

    .line 204
    goto :goto_7

    .line 205
    :cond_9
    move-object v8, v10

    .line 206
    .line 207
    .line 208
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 209
    move-result v11

    .line 210
    .line 211
    if-le v11, v6, :cond_a

    .line 212
    .line 213
    .line 214
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    move-result-object v3

    .line 216
    move-object v10, v3

    .line 217
    .line 218
    check-cast v10, Ljava/lang/String;

    .line 219
    :cond_a
    move-object v3, v4

    .line 220
    move-object v4, v5

    .line 221
    move-object v5, v8

    .line 222
    goto :goto_4

    .line 223
    .line 224
    .line 225
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 226
    move-result v5

    .line 227
    .line 228
    if-lez v5, :cond_c

    .line 229
    .line 230
    .line 231
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    move-result-object v5

    .line 233
    .line 234
    check-cast v5, Ljava/lang/String;

    .line 235
    goto :goto_8

    .line 236
    :cond_c
    move-object v5, v10

    .line 237
    .line 238
    .line 239
    :goto_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 240
    move-result v6

    .line 241
    .line 242
    if-le v6, v2, :cond_d

    .line 243
    .line 244
    .line 245
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    move-result-object v6

    .line 247
    .line 248
    check-cast v6, Ljava/lang/String;

    .line 249
    goto :goto_9

    .line 250
    :cond_d
    move-object v6, v10

    .line 251
    .line 252
    .line 253
    :goto_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 254
    move-result v11

    .line 255
    .line 256
    if-le v11, v8, :cond_e

    .line 257
    .line 258
    .line 259
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 260
    move-result-object v3

    .line 261
    move-object v10, v3

    .line 262
    .line 263
    check-cast v10, Ljava/lang/String;

    .line 264
    :cond_e
    move-object v3, v4

    .line 265
    move-object v4, v5

    .line 266
    move-object v5, v6

    .line 267
    .line 268
    goto/16 :goto_4

    .line 269
    .line 270
    :goto_a
    const-string v8, "__communityId"

    .line 271
    .line 272
    if-gtz v0, :cond_12

    .line 273
    .line 274
    const-string v10, "default"

    .line 275
    .line 276
    .line 277
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    move-result v10

    .line 279
    .line 280
    const-string v11, "home"

    .line 281
    .line 282
    if-nez v10, :cond_f

    .line 283
    .line 284
    .line 285
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    move-result v10

    .line 287
    .line 288
    if-nez v10, :cond_f

    .line 289
    .line 290
    const-string v10, "relogin"

    .line 291
    .line 292
    .line 293
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    move-result v10

    .line 295
    .line 296
    if-eqz v10, :cond_12

    .line 297
    .line 298
    .line 299
    :cond_f
    const v0, 0x10008000

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 303
    .line 304
    const-class v0, Lcom/narvii/master/MasterActivity;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    move-result v0

    .line 312
    .line 313
    if-eqz v0, :cond_11

    .line 314
    .line 315
    const-string v0, "headlines"

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    move-result v0

    .line 320
    .line 321
    if-nez v0, :cond_10

    .line 322
    .line 323
    const-string v0, "my"

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    move-result v0

    .line 328
    .line 329
    if-nez v0, :cond_10

    .line 330
    .line 331
    const-string v0, "explore"

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    move-result v0

    .line 336
    .line 337
    if-nez v0, :cond_10

    .line 338
    .line 339
    const-string v0, "chat"

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    move-result v0

    .line 344
    .line 345
    if-eqz v0, :cond_11

    .line 346
    .line 347
    :cond_10
    const-string v0, "tab"

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    .line 352
    .line 353
    :cond_11
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    return-object p1

    .line 355
    .line 356
    :cond_12
    if-nez v0, :cond_13

    .line 357
    .line 358
    const-string v10, "notifications"

    .line 359
    .line 360
    .line 361
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    move-result v10

    .line 363
    .line 364
    if-eqz v10, :cond_13

    .line 365
    .line 366
    const-class v0, Lcom/narvii/notice/AggregationNoticeFragment;

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 370
    .line 371
    const-string v0, "targetCidTab"

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    return-object p1

    .line 376
    .line 377
    :cond_13
    const-string v10, "id"

    .line 378
    .line 379
    if-lez v0, :cond_16

    .line 380
    .line 381
    const-string v11, "description"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    move-result v11

    .line 386
    .line 387
    if-eqz v11, :cond_16

    .line 388
    .line 389
    const-class v3, Lcom/narvii/master/CommunityDetailFragment;

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0, p1, v3}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 396
    move-result-object v3

    .line 397
    .line 398
    const-string v4, "inviteCode"

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    move-result-object v3

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    .line 410
    iget-object v0, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 411
    .line 412
    const-string v3, "account"

    .line 413
    .line 414
    .line 415
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 416
    move-result-object v0

    .line 417
    .line 418
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 419
    .line 420
    if-eqz v0, :cond_14

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 424
    move-result v0

    .line 425
    .line 426
    if-eqz v0, :cond_14

    .line 427
    move v0, v2

    .line 428
    goto :goto_b

    .line 429
    :cond_14
    move v0, v9

    .line 430
    .line 431
    .line 432
    :goto_b
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 433
    move-result-object v3

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    move-result-object v3

    .line 438
    .line 439
    .line 440
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 441
    move-result v3

    .line 442
    xor-int/2addr v3, v2

    .line 443
    .line 444
    if-nez v0, :cond_15

    .line 445
    .line 446
    if-eqz v3, :cond_15

    .line 447
    goto :goto_c

    .line 448
    :cond_15
    move v2, v9

    .line 449
    .line 450
    :goto_c
    const-string v0, "autoJoin"

    .line 451
    .line 452
    .line 453
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    return-object p1

    .line 455
    .line 456
    :cond_16
    if-lez v0, :cond_17

    .line 457
    .line 458
    const-string v11, "guideline"

    .line 459
    .line 460
    .line 461
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    move-result v11

    .line 463
    .line 464
    if-eqz v11, :cond_17

    .line 465
    .line 466
    const-class v2, Lcom/narvii/guideline/GuidelineFragment;

    .line 467
    .line 468
    .line 469
    invoke-virtual {p0, p1, v2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p1, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    return-object p1

    .line 474
    .line 475
    :cond_17
    if-ne v0, v7, :cond_18

    .line 476
    .line 477
    const-string v10, "topic"

    .line 478
    .line 479
    .line 480
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 481
    move-result v10

    .line 482
    .line 483
    if-eqz v10, :cond_18

    .line 484
    move v10, v9

    .line 485
    goto :goto_d

    .line 486
    :cond_18
    move v10, v0

    .line 487
    .line 488
    :goto_d
    if-ne v10, v7, :cond_19

    .line 489
    .line 490
    iget v0, p0, Lcom/narvii/app/incubator/IncubatorNavigator;->communityId:I

    .line 491
    .line 492
    if-eqz v0, :cond_1b

    .line 493
    .line 494
    :cond_19
    if-nez v10, :cond_1a

    .line 495
    goto :goto_e

    .line 496
    :cond_1a
    move v2, v9

    .line 497
    :cond_1b
    :goto_e
    move-object v0, p0

    .line 498
    move-object v1, p1

    .line 499
    .line 500
    .line 501
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/app/BaseNavigator;->pathMapping(Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    move-result-object v0

    .line 503
    .line 504
    if-eq v10, v7, :cond_1c

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    :cond_1c
    return-object v0
.end method

.method public rawHttpMapping(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
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
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    move-object v1, p0

    .line 40
    move-object v3, p2

    .line 41
    move-object v4, p3

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/app/BaseNavigator;->pathMapping(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 49
    move-result-object p3

    .line 50
    .line 51
    if-eqz p3, :cond_0

    .line 52
    .line 53
    const-string p3, "__communityId"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    return-object p2

    .line 58
    :cond_0
    const/4 p1, 0x0

    .line 59
    return-object p1
.end method
