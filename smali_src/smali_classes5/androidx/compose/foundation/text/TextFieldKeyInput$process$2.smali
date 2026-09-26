.class final Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextFieldKeyInput;->j(Landroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldKeyInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldKeyInput.kt\nandroidx/compose/foundation/text/TextFieldKeyInput$process$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,257:1\n1#2:258\n*E\n"
.end annotation


# instance fields
.field final synthetic $command:Landroidx/compose/foundation/text/KeyCommand;

.field final synthetic $consumed:Lkotlin/jvm/internal/k0;

.field final synthetic this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/KeyCommand;Landroidx/compose/foundation/text/TextFieldKeyInput;Lkotlin/jvm/internal/k0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->$command:Landroidx/compose/foundation/text/KeyCommand;

    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    iput-object p3, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->$consumed:Lkotlin/jvm/internal/k0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;)V
    .locals 3
    .param p1    # Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$commandExecutionContext"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->$command:Landroidx/compose/foundation/text/KeyCommand;

    .line 8
    .line 9
    sget-object v1, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v0

    .line 14
    .line 15
    aget v0, v1, v0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    .line 25
    :pswitch_0
    invoke-static {}, Landroidx/compose/foundation/text/KeyEventHelpers_androidKt;->b()V

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :pswitch_1
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->i()Landroidx/compose/foundation/text/UndoManager;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/compose/foundation/text/UndoManager;->c()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->c(Landroidx/compose/foundation/text/TextFieldKeyInput;)Le8/l;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :pswitch_2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->i()Landroidx/compose/foundation/text/UndoManager;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->b0()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/UndoManager;->b(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 68
    .line 69
    :cond_0
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->i()Landroidx/compose/foundation/text/UndoManager;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/compose/foundation/text/UndoManager;->g()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->c(Landroidx/compose/foundation/text/TextFieldKeyInput;)Le8/l;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    .line 95
    :pswitch_3
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->d()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    .line 100
    :pswitch_4
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->M()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    .line 111
    :pswitch_5
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->N()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    .line 122
    :pswitch_6
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->d0()Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    .line 131
    :pswitch_7
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->e0()Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    .line 140
    :pswitch_8
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->B()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    .line 151
    :pswitch_9
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->S()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 152
    move-result-object p1

    .line 153
    .line 154
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    .line 162
    :pswitch_a
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->Q()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    .line 173
    :pswitch_b
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->P()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    .line 184
    :pswitch_c
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->O()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    .line 195
    :pswitch_d
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->R()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    .line 206
    :pswitch_e
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->F()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 207
    move-result-object p1

    .line 208
    .line 209
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    .line 217
    :pswitch_f
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->I()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 218
    move-result-object p1

    .line 219
    .line 220
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    .line 228
    :pswitch_10
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->L()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    .line 239
    :pswitch_11
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->D()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    .line 250
    :pswitch_12
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->K()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 251
    move-result-object p1

    .line 252
    .line 253
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    .line 261
    :pswitch_13
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->C()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 262
    move-result-object p1

    .line 263
    .line 264
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->U()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    .line 272
    :pswitch_14
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->T()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :pswitch_15
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->h()Z

    .line 280
    move-result p1

    .line 281
    .line 282
    if-nez p1, :cond_1

    .line 283
    .line 284
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 285
    .line 286
    new-instance v0, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 287
    .line 288
    const-string v2, "\t"

    .line 289
    .line 290
    .line 291
    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 292
    .line 293
    .line 294
    invoke-static {p1, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->a(Landroidx/compose/foundation/text/TextFieldKeyInput;Landroidx/compose/ui/text/input/EditCommand;)V

    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->$consumed:Lkotlin/jvm/internal/k0;

    .line 299
    .line 300
    iput-boolean v2, p1, Lkotlin/jvm/internal/k0;->element:Z

    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :pswitch_16
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->h()Z

    .line 308
    move-result p1

    .line 309
    .line 310
    if-nez p1, :cond_2

    .line 311
    .line 312
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 313
    .line 314
    new-instance v0, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 315
    .line 316
    const-string v2, "\n"

    .line 317
    .line 318
    .line 319
    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 320
    .line 321
    .line 322
    invoke-static {p1, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->a(Landroidx/compose/foundation/text/TextFieldKeyInput;Landroidx/compose/ui/text/input/EditCommand;)V

    .line 323
    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->$consumed:Lkotlin/jvm/internal/k0;

    .line 327
    .line 328
    iput-boolean v2, p1, Lkotlin/jvm/internal/k0;->element:Z

    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :pswitch_17
    sget-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$8;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$8;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->a0(Le8/l;)Ljava/util/List;

    .line 336
    move-result-object p1

    .line 337
    .line 338
    if-eqz p1, :cond_3

    .line 339
    .line 340
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 341
    .line 342
    .line 343
    invoke-static {v0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->b(Landroidx/compose/foundation/text/TextFieldKeyInput;Ljava/util/List;)V

    .line 344
    .line 345
    goto/16 :goto_0

    .line 346
    .line 347
    :pswitch_18
    sget-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$7;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$7;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->a0(Le8/l;)Ljava/util/List;

    .line 351
    move-result-object p1

    .line 352
    .line 353
    if-eqz p1, :cond_3

    .line 354
    .line 355
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 356
    .line 357
    .line 358
    invoke-static {v0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->b(Landroidx/compose/foundation/text/TextFieldKeyInput;Ljava/util/List;)V

    .line 359
    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :pswitch_19
    sget-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$6;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$6;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->a0(Le8/l;)Ljava/util/List;

    .line 366
    move-result-object p1

    .line 367
    .line 368
    if-eqz p1, :cond_3

    .line 369
    .line 370
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 371
    .line 372
    .line 373
    invoke-static {v0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->b(Landroidx/compose/foundation/text/TextFieldKeyInput;Ljava/util/List;)V

    .line 374
    .line 375
    goto/16 :goto_0

    .line 376
    .line 377
    :pswitch_1a
    sget-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$5;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$5;

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->a0(Le8/l;)Ljava/util/List;

    .line 381
    move-result-object p1

    .line 382
    .line 383
    if-eqz p1, :cond_3

    .line 384
    .line 385
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 386
    .line 387
    .line 388
    invoke-static {v0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->b(Landroidx/compose/foundation/text/TextFieldKeyInput;Ljava/util/List;)V

    .line 389
    .line 390
    goto/16 :goto_0

    .line 391
    .line 392
    :pswitch_1b
    sget-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$4;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$4;

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->a0(Le8/l;)Ljava/util/List;

    .line 396
    move-result-object p1

    .line 397
    .line 398
    if-eqz p1, :cond_3

    .line 399
    .line 400
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 401
    .line 402
    .line 403
    invoke-static {v0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->b(Landroidx/compose/foundation/text/TextFieldKeyInput;Ljava/util/List;)V

    .line 404
    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :pswitch_1c
    sget-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->a0(Le8/l;)Ljava/util/List;

    .line 411
    move-result-object p1

    .line 412
    .line 413
    if-eqz p1, :cond_3

    .line 414
    .line 415
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 416
    .line 417
    .line 418
    invoke-static {v0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->b(Landroidx/compose/foundation/text/TextFieldKeyInput;Ljava/util/List;)V

    .line 419
    .line 420
    goto/16 :goto_0

    .line 421
    .line 422
    .line 423
    :pswitch_1d
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->M()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 424
    .line 425
    goto/16 :goto_0

    .line 426
    .line 427
    .line 428
    :pswitch_1e
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->N()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 429
    goto :goto_0

    .line 430
    .line 431
    .line 432
    :pswitch_1f
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->Q()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 433
    goto :goto_0

    .line 434
    .line 435
    .line 436
    :pswitch_20
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->P()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 437
    goto :goto_0

    .line 438
    .line 439
    .line 440
    :pswitch_21
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->O()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 441
    goto :goto_0

    .line 442
    .line 443
    .line 444
    :pswitch_22
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->R()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 445
    goto :goto_0

    .line 446
    .line 447
    .line 448
    :pswitch_23
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->d0()Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 449
    goto :goto_0

    .line 450
    .line 451
    .line 452
    :pswitch_24
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->e0()Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 453
    goto :goto_0

    .line 454
    .line 455
    .line 456
    :pswitch_25
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->B()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 457
    goto :goto_0

    .line 458
    .line 459
    .line 460
    :pswitch_26
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->S()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 461
    goto :goto_0

    .line 462
    .line 463
    .line 464
    :pswitch_27
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->F()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 465
    goto :goto_0

    .line 466
    .line 467
    .line 468
    :pswitch_28
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->I()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 469
    goto :goto_0

    .line 470
    .line 471
    .line 472
    :pswitch_29
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->L()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 473
    goto :goto_0

    .line 474
    .line 475
    .line 476
    :pswitch_2a
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->D()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 477
    goto :goto_0

    .line 478
    .line 479
    :pswitch_2b
    sget-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$2;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$2;

    .line 480
    .line 481
    .line 482
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->c(Le8/l;)Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 483
    goto :goto_0

    .line 484
    .line 485
    :pswitch_2c
    sget-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$1;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$1;

    .line 486
    .line 487
    .line 488
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->b(Le8/l;)Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    .line 489
    goto :goto_0

    .line 490
    .line 491
    :pswitch_2d
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 492
    .line 493
    .line 494
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->g()Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 495
    move-result-object p1

    .line 496
    .line 497
    .line 498
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()V

    .line 499
    goto :goto_0

    .line 500
    .line 501
    :pswitch_2e
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 502
    .line 503
    .line 504
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->g()Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 505
    move-result-object p1

    .line 506
    .line 507
    .line 508
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->L()V

    .line 509
    goto :goto_0

    .line 510
    .line 511
    :pswitch_2f
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 512
    .line 513
    .line 514
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->g()Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 515
    move-result-object p1

    .line 516
    .line 517
    .line 518
    invoke-virtual {p1, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->k(Z)V

    .line 519
    :cond_3
    :goto_0
    return-void

    .line 520
    nop

    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->a(Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
