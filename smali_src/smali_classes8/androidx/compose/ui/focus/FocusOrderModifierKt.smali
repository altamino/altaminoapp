.class public final Landroidx/compose/ui/focus/FocusOrderModifierKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusOrderModifierKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusOrderModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusOrderModifier.kt\nandroidx/compose/ui/focus/FocusOrderModifierKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,251:1\n1#2:252\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/focus/FocusModifier;ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/focus/FocusRequester;
    .locals 5
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$customFocusSearch"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layoutDirection"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->d()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->f()Landroidx/compose/ui/focus/FocusProperties;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Landroidx/compose/ui/focus/FocusProperties;->k()Landroidx/compose/ui/focus/FocusRequester;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->f()I

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->f()Landroidx/compose/ui/focus/FocusProperties;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    .line 49
    invoke-interface {p0}, Landroidx/compose/ui/focus/FocusProperties;->j()Landroidx/compose/ui/focus/FocusRequester;

    .line 50
    move-result-object p0

    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->h()I

    .line 56
    move-result v1

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->f()Landroidx/compose/ui/focus/FocusProperties;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    .line 69
    invoke-interface {p0}, Landroidx/compose/ui/focus/FocusProperties;->d()Landroidx/compose/ui/focus/FocusRequester;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->a()I

    .line 76
    move-result v1

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 80
    move-result v1

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->f()Landroidx/compose/ui/focus/FocusProperties;

    .line 86
    move-result-object p0

    .line 87
    .line 88
    .line 89
    invoke-interface {p0}, Landroidx/compose/ui/focus/FocusProperties;->f()Landroidx/compose/ui/focus/FocusRequester;

    .line 90
    move-result-object p0

    .line 91
    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->c()I

    .line 96
    move-result v1

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 100
    move-result v1

    .line 101
    const/4 v2, 0x0

    .line 102
    const/4 v3, 0x2

    .line 103
    const/4 v4, 0x1

    .line 104
    .line 105
    if-eqz v1, :cond_8

    .line 106
    .line 107
    sget-object p1, Landroidx/compose/ui/focus/FocusOrderModifierKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 111
    move-result p2

    .line 112
    .line 113
    aget p1, p1, p2

    .line 114
    .line 115
    if-eq p1, v4, :cond_5

    .line 116
    .line 117
    if-ne p1, v3, :cond_4

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->f()Landroidx/compose/ui/focus/FocusProperties;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusProperties;->getEnd()Landroidx/compose/ui/focus/FocusRequester;

    .line 125
    move-result-object p1

    .line 126
    goto :goto_0

    .line 127
    .line 128
    :cond_4
    new-instance p0, Lw7/s;

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 132
    throw p0

    .line 133
    .line 134
    .line 135
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->f()Landroidx/compose/ui/focus/FocusProperties;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    .line 139
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusProperties;->getStart()Landroidx/compose/ui/focus/FocusRequester;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    :goto_0
    sget-object p2, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 146
    move-result-object p2

    .line 147
    .line 148
    .line 149
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    move-result p2

    .line 151
    .line 152
    if-nez p2, :cond_6

    .line 153
    goto :goto_1

    .line 154
    :cond_6
    move-object p1, v2

    .line 155
    .line 156
    :goto_1
    if-nez p1, :cond_7

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->f()Landroidx/compose/ui/focus/FocusProperties;

    .line 160
    move-result-object p0

    .line 161
    .line 162
    .line 163
    invoke-interface {p0}, Landroidx/compose/ui/focus/FocusProperties;->c()Landroidx/compose/ui/focus/FocusRequester;

    .line 164
    move-result-object p0

    .line 165
    .line 166
    goto/16 :goto_4

    .line 167
    :cond_7
    move-object p0, p1

    .line 168
    goto :goto_4

    .line 169
    .line 170
    .line 171
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->g()I

    .line 172
    move-result v1

    .line 173
    .line 174
    .line 175
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 176
    move-result v1

    .line 177
    .line 178
    if-eqz v1, :cond_c

    .line 179
    .line 180
    sget-object p1, Landroidx/compose/ui/focus/FocusOrderModifierKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 184
    move-result p2

    .line 185
    .line 186
    aget p1, p1, p2

    .line 187
    .line 188
    if-eq p1, v4, :cond_a

    .line 189
    .line 190
    if-ne p1, v3, :cond_9

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->f()Landroidx/compose/ui/focus/FocusProperties;

    .line 194
    move-result-object p1

    .line 195
    .line 196
    .line 197
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusProperties;->getStart()Landroidx/compose/ui/focus/FocusRequester;

    .line 198
    move-result-object p1

    .line 199
    goto :goto_2

    .line 200
    .line 201
    :cond_9
    new-instance p0, Lw7/s;

    .line 202
    .line 203
    .line 204
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 205
    throw p0

    .line 206
    .line 207
    .line 208
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->f()Landroidx/compose/ui/focus/FocusProperties;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    .line 212
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusProperties;->getEnd()Landroidx/compose/ui/focus/FocusRequester;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    :goto_2
    sget-object p2, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 219
    move-result-object p2

    .line 220
    .line 221
    .line 222
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    move-result p2

    .line 224
    .line 225
    if-nez p2, :cond_b

    .line 226
    goto :goto_3

    .line 227
    :cond_b
    move-object p1, v2

    .line 228
    .line 229
    :goto_3
    if-nez p1, :cond_7

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->f()Landroidx/compose/ui/focus/FocusProperties;

    .line 233
    move-result-object p0

    .line 234
    .line 235
    .line 236
    invoke-interface {p0}, Landroidx/compose/ui/focus/FocusProperties;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 237
    move-result-object p0

    .line 238
    goto :goto_4

    .line 239
    .line 240
    .line 241
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->b()I

    .line 242
    move-result p0

    .line 243
    .line 244
    .line 245
    invoke-static {p1, p0}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 246
    move-result p0

    .line 247
    .line 248
    if-eqz p0, :cond_d

    .line 249
    .line 250
    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 254
    move-result-object p0

    .line 255
    goto :goto_4

    .line 256
    .line 257
    .line 258
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->e()I

    .line 259
    move-result p0

    .line 260
    .line 261
    .line 262
    invoke-static {p1, p0}, Landroidx/compose/ui/focus/FocusDirection;->l(II)Z

    .line 263
    move-result p0

    .line 264
    .line 265
    if-eqz p0, :cond_e

    .line 266
    .line 267
    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 271
    move-result-object p0

    .line 272
    :goto_4
    return-object p0

    .line 273
    .line 274
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 275
    .line 276
    const-string p1, "invalid FocusDirection"

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 280
    move-result-object p1

    .line 281
    .line 282
    .line 283
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 284
    throw p0
.end method
