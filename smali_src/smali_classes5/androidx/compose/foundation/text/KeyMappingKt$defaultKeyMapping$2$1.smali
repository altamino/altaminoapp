.class public final Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/KeyMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/KeyMappingKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $common:Landroidx/compose/foundation/text/KeyMapping;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/KeyMapping;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$2$1;->$common:Landroidx/compose/foundation/text/KeyMapping;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;
    .locals 6
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "event"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->e(Landroid/view/KeyEvent;)Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->d(Landroid/view/KeyEvent;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->h()J

    .line 28
    move-result-wide v4

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 32
    move-result v4

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->i()J

    .line 42
    move-result-wide v4

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 46
    move-result v4

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->j()J

    .line 56
    move-result-wide v4

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 60
    move-result v4

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->g()J

    .line 70
    move-result-wide v4

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-eqz v0, :cond_d

    .line 77
    .line 78
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->d(Landroid/view/KeyEvent;)Z

    .line 84
    move-result v0

    .line 85
    .line 86
    if-eqz v0, :cond_b

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    .line 90
    move-result-wide v2

    .line 91
    .line 92
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->h()J

    .line 96
    move-result-wide v4

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 100
    move-result v4

    .line 101
    .line 102
    if-eqz v4, :cond_4

    .line 103
    .line 104
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->i()J

    .line 110
    move-result-wide v4

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 114
    move-result v4

    .line 115
    .line 116
    if-eqz v4, :cond_5

    .line 117
    .line 118
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    .line 123
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->j()J

    .line 124
    move-result-wide v4

    .line 125
    .line 126
    .line 127
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 128
    move-result v4

    .line 129
    .line 130
    if-eqz v4, :cond_6

    .line 131
    .line 132
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 133
    goto :goto_0

    .line 134
    .line 135
    .line 136
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->g()J

    .line 137
    move-result-wide v4

    .line 138
    .line 139
    .line 140
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 141
    move-result v4

    .line 142
    .line 143
    if-eqz v4, :cond_7

    .line 144
    .line 145
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 146
    goto :goto_0

    .line 147
    .line 148
    .line 149
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->l()J

    .line 150
    move-result-wide v4

    .line 151
    .line 152
    .line 153
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 154
    move-result v4

    .line 155
    .line 156
    if-eqz v4, :cond_8

    .line 157
    .line 158
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 159
    goto :goto_0

    .line 160
    .line 161
    .line 162
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->f()J

    .line 163
    move-result-wide v4

    .line 164
    .line 165
    .line 166
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 167
    move-result v4

    .line 168
    .line 169
    if-eqz v4, :cond_9

    .line 170
    .line 171
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 172
    goto :goto_0

    .line 173
    .line 174
    .line 175
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->c()J

    .line 176
    move-result-wide v4

    .line 177
    .line 178
    .line 179
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 180
    move-result v4

    .line 181
    .line 182
    if-eqz v4, :cond_a

    .line 183
    .line 184
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 185
    goto :goto_0

    .line 186
    .line 187
    .line 188
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->b()J

    .line 189
    move-result-wide v4

    .line 190
    .line 191
    .line 192
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 193
    move-result v0

    .line 194
    .line 195
    if-eqz v0, :cond_d

    .line 196
    .line 197
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DESELECT:Landroidx/compose/foundation/text/KeyCommand;

    .line 198
    goto :goto_0

    .line 199
    .line 200
    .line 201
    :cond_b
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->e(Landroid/view/KeyEvent;)Z

    .line 202
    move-result v0

    .line 203
    .line 204
    if-eqz v0, :cond_d

    .line 205
    .line 206
    .line 207
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    .line 208
    move-result-wide v2

    .line 209
    .line 210
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->o()J

    .line 214
    move-result-wide v4

    .line 215
    .line 216
    .line 217
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 218
    move-result v4

    .line 219
    .line 220
    if-eqz v4, :cond_c

    .line 221
    .line 222
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_HOME:Landroidx/compose/foundation/text/KeyCommand;

    .line 223
    goto :goto_0

    .line 224
    .line 225
    .line 226
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->n()J

    .line 227
    move-result-wide v4

    .line 228
    .line 229
    .line 230
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->m(JJ)Z

    .line 231
    move-result v0

    .line 232
    .line 233
    if-eqz v0, :cond_d

    .line 234
    .line 235
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 236
    .line 237
    :cond_d
    :goto_0
    if-nez v1, :cond_e

    .line 238
    .line 239
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$2$1;->$common:Landroidx/compose/foundation/text/KeyMapping;

    .line 240
    .line 241
    .line 242
    invoke-interface {v0, p1}, Landroidx/compose/foundation/text/KeyMapping;->a(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;

    .line 243
    move-result-object v1

    .line 244
    :cond_e
    return-object v1
.end method
