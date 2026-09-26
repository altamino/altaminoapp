.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$9;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    .line 5
    return-void
.end method


# virtual methods
.method anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "thead"

    .line 14
    .line 15
    const-string v2, "tr"

    .line 16
    .line 17
    const-string v3, "table"

    .line 18
    .line 19
    const-string v4, "tbody"

    .line 20
    .line 21
    const-string v5, "tfoot"

    .line 22
    .line 23
    .line 24
    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFosterInserts(Z)V

    .line 36
    .line 37
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 41
    move-result p1

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFosterInserts(Z)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 52
    move-result p1

    .line 53
    :goto_0
    return p1
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isCharacter()Z

    .line 10
    move-result v3

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->newPendingTableCharacters()V

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 19
    .line 20
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 27
    move-result v1

    .line 28
    return v1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isComment()Z

    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x1

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    .line 43
    return v4

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isDoctype()Z

    .line 47
    move-result v3

    .line 48
    const/4 v5, 0x0

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 54
    return v5

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    .line 58
    move-result v3

    .line 59
    .line 60
    const-string v6, "table"

    .line 61
    .line 62
    if-eqz v3, :cond_f

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 70
    move-result-object v7

    .line 71
    .line 72
    const-string v8, "caption"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v8

    .line 77
    .line 78
    if-eqz v8, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableContext()V

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 88
    .line 89
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_3
    const-string v8, "colgroup"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v9

    .line 101
    .line 102
    if-eqz v9, :cond_4

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableContext()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 109
    .line 110
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_4
    const-string v9, "col"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v9

    .line 122
    .line 123
    if-eqz v9, :cond_5

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/TreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 130
    move-result v1

    .line 131
    return v1

    .line 132
    .line 133
    :cond_5
    const-string v8, "tfoot"

    .line 134
    .line 135
    const-string v9, "thead"

    .line 136
    .line 137
    const-string v10, "tbody"

    .line 138
    .line 139
    .line 140
    filled-new-array {v10, v8, v9}, [Ljava/lang/String;

    .line 141
    move-result-object v8

    .line 142
    .line 143
    .line 144
    invoke-static {v7, v8}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 145
    move-result v8

    .line 146
    .line 147
    if-eqz v8, :cond_6

    .line 148
    .line 149
    .line 150
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableContext()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 154
    .line 155
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_6
    const-string v8, "th"

    .line 163
    .line 164
    const-string v9, "tr"

    .line 165
    .line 166
    const-string v11, "td"

    .line 167
    .line 168
    .line 169
    filled-new-array {v11, v8, v9}, [Ljava/lang/String;

    .line 170
    move-result-object v8

    .line 171
    .line 172
    .line 173
    invoke-static {v7, v8}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 174
    move-result v8

    .line 175
    .line 176
    if-eqz v8, :cond_7

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/TreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 183
    move-result v1

    .line 184
    return v1

    .line 185
    .line 186
    .line 187
    :cond_7
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    move-result v8

    .line 189
    .line 190
    if-eqz v8, :cond_8

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 197
    move-result v3

    .line 198
    .line 199
    if-eqz v3, :cond_d

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 203
    move-result v1

    .line 204
    return v1

    .line 205
    .line 206
    :cond_8
    const-string v6, "style"

    .line 207
    .line 208
    const-string v8, "script"

    .line 209
    .line 210
    .line 211
    filled-new-array {v6, v8}, [Ljava/lang/String;

    .line 212
    move-result-object v6

    .line 213
    .line 214
    .line 215
    invoke-static {v7, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 216
    move-result v6

    .line 217
    .line 218
    if-eqz v6, :cond_9

    .line 219
    .line 220
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 224
    move-result v1

    .line 225
    return v1

    .line 226
    .line 227
    :cond_9
    const-string v6, "input"

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v6

    .line 232
    .line 233
    if-eqz v6, :cond_b

    .line 234
    .line 235
    iget-object v5, v3, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 236
    .line 237
    const-string v6, "type"

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    move-result-object v5

    .line 242
    .line 243
    const-string v6, "hidden"

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 247
    move-result v5

    .line 248
    .line 249
    if-nez v5, :cond_a

    .line 250
    .line 251
    .line 252
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 253
    move-result v1

    .line 254
    return v1

    .line 255
    .line 256
    .line 257
    :cond_a
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 258
    goto :goto_0

    .line 259
    .line 260
    :cond_b
    const-string v6, "form"

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    move-result v6

    .line 265
    .line 266
    if-eqz v6, :cond_e

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    .line 273
    move-result-object v1

    .line 274
    .line 275
    if-eqz v1, :cond_c

    .line 276
    return v5

    .line 277
    .line 278
    .line 279
    :cond_c
    invoke-virtual {v2, v3, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForm(Lorg/jsoup/parser/Token$StartTag;Z)Lorg/jsoup/nodes/FormElement;

    .line 280
    :cond_d
    :goto_0
    return v4

    .line 281
    .line 282
    .line 283
    :cond_e
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 284
    move-result v1

    .line 285
    return v1

    .line 286
    .line 287
    .line 288
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    .line 289
    move-result v3

    .line 290
    .line 291
    if-eqz v3, :cond_13

    .line 292
    .line 293
    .line 294
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    .line 295
    move-result-object v3

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 299
    move-result-object v3

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    move-result v7

    .line 304
    .line 305
    if-eqz v7, :cond_11

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    .line 309
    move-result v1

    .line 310
    .line 311
    if-nez v1, :cond_10

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 315
    return v5

    .line 316
    .line 317
    .line 318
    :cond_10
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->resetInsertionMode()V

    .line 322
    return v4

    .line 323
    .line 324
    :cond_11
    const-string v7, "body"

    .line 325
    .line 326
    const-string v8, "caption"

    .line 327
    .line 328
    const-string v9, "col"

    .line 329
    .line 330
    const-string v10, "colgroup"

    .line 331
    .line 332
    const-string v11, "html"

    .line 333
    .line 334
    const-string v12, "tbody"

    .line 335
    .line 336
    const-string v13, "td"

    .line 337
    .line 338
    const-string v14, "tfoot"

    .line 339
    .line 340
    const-string v15, "th"

    .line 341
    .line 342
    const-string v16, "thead"

    .line 343
    .line 344
    const-string v17, "tr"

    .line 345
    .line 346
    .line 347
    filled-new-array/range {v7 .. v17}, [Ljava/lang/String;

    .line 348
    move-result-object v4

    .line 349
    .line 350
    .line 351
    invoke-static {v3, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 352
    move-result v3

    .line 353
    .line 354
    if-eqz v3, :cond_12

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 358
    return v5

    .line 359
    .line 360
    .line 361
    :cond_12
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 362
    move-result v1

    .line 363
    return v1

    .line 364
    .line 365
    .line 366
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEOF()Z

    .line 367
    move-result v3

    .line 368
    .line 369
    if-eqz v3, :cond_15

    .line 370
    .line 371
    .line 372
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 373
    move-result-object v1

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    .line 377
    move-result-object v1

    .line 378
    .line 379
    const-string v3, "html"

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    move-result v1

    .line 384
    .line 385
    if-eqz v1, :cond_14

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 389
    :cond_14
    return v4

    .line 390
    .line 391
    .line 392
    :cond_15
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 393
    move-result v1

    .line 394
    return v1
.end method
