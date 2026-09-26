.class final Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/SaversKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/saveable/SaverScope;",
        "Landroidx/compose/ui/text/SpanStyle;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/SpanStyle;)Ljava/lang/Object;
    .locals 6
    .param p1    # Landroidx/compose/runtime/saveable/SaverScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$Saver"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "it"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const/16 v0, 0xe

    .line 13
    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/text/SpanStyle;->f()J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->g(Landroidx/compose/ui/graphics/Color$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v3, p1}, Landroidx/compose/ui/text/SaversKt;->t(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    aput-object v1, v0, v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroidx/compose/ui/text/SpanStyle;->i()J

    .line 39
    move-result-wide v3

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->b(J)Landroidx/compose/ui/unit/TextUnit;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    sget-object v3, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    .line 46
    .line 47
    .line 48
    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->q(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v4, p1}, Landroidx/compose/ui/text/SaversKt;->t(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    const/4 v4, 0x1

    .line 55
    .line 56
    aput-object v1, v0, v4

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Landroidx/compose/ui/text/SpanStyle;->l()Landroidx/compose/ui/text/font/FontWeight;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 63
    .line 64
    .line 65
    invoke-static {v4}, Landroidx/compose/ui/text/SaversKt;->j(Landroidx/compose/ui/text/font/FontWeight$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v4, p1}, Landroidx/compose/ui/text/SaversKt;->t(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 71
    const/4 v4, 0x2

    .line 72
    .line 73
    aput-object v1, v0, v4

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroidx/compose/ui/text/SpanStyle;->j()Landroidx/compose/ui/text/font/FontStyle;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Landroidx/compose/ui/text/SaversKt;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    const/4 v4, 0x3

    .line 83
    .line 84
    aput-object v1, v0, v4

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Landroidx/compose/ui/text/SpanStyle;->k()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Landroidx/compose/ui/text/SaversKt;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 93
    const/4 v4, 0x4

    .line 94
    .line 95
    aput-object v1, v0, v4

    .line 96
    const/4 v1, -0x1

    .line 97
    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Landroidx/compose/ui/text/SaversKt;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 105
    const/4 v4, 0x5

    .line 106
    .line 107
    aput-object v1, v0, v4

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroidx/compose/ui/text/SpanStyle;->h()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Landroidx/compose/ui/text/SaversKt;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object v1

    .line 116
    const/4 v4, 0x6

    .line 117
    .line 118
    aput-object v1, v0, v4

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Landroidx/compose/ui/text/SpanStyle;->m()J

    .line 122
    move-result-wide v4

    .line 123
    .line 124
    .line 125
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/TextUnit;->b(J)Landroidx/compose/ui/unit/TextUnit;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    .line 129
    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->q(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v3, p1}, Landroidx/compose/ui/text/SaversKt;->t(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 134
    move-result-object v1

    .line 135
    const/4 v3, 0x7

    .line 136
    .line 137
    aput-object v1, v0, v3

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Landroidx/compose/ui/text/SpanStyle;->d()Landroidx/compose/ui/text/style/BaselineShift;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    sget-object v3, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    .line 144
    .line 145
    .line 146
    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->m(Landroidx/compose/ui/text/style/BaselineShift$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v3, p1}, Landroidx/compose/ui/text/SaversKt;->t(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    const/16 v3, 0x8

    .line 154
    .line 155
    aput-object v1, v0, v3

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Landroidx/compose/ui/text/SpanStyle;->s()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    sget-object v3, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    .line 162
    .line 163
    .line 164
    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->o(Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 165
    move-result-object v3

    .line 166
    .line 167
    .line 168
    invoke-static {v1, v3, p1}, Landroidx/compose/ui/text/SaversKt;->t(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 169
    move-result-object v1

    .line 170
    .line 171
    const/16 v3, 0x9

    .line 172
    .line 173
    aput-object v1, v0, v3

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Landroidx/compose/ui/text/SpanStyle;->n()Landroidx/compose/ui/text/intl/LocaleList;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    sget-object v3, Landroidx/compose/ui/text/intl/LocaleList;->Companion:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    .line 180
    .line 181
    .line 182
    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->l(Landroidx/compose/ui/text/intl/LocaleList$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 183
    move-result-object v3

    .line 184
    .line 185
    .line 186
    invoke-static {v1, v3, p1}, Landroidx/compose/ui/text/SaversKt;->t(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    const/16 v3, 0xa

    .line 190
    .line 191
    aput-object v1, v0, v3

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2}, Landroidx/compose/ui/text/SpanStyle;->c()J

    .line 195
    move-result-wide v3

    .line 196
    .line 197
    .line 198
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 199
    move-result-object v1

    .line 200
    .line 201
    .line 202
    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->g(Landroidx/compose/ui/graphics/Color$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 203
    move-result-object v2

    .line 204
    .line 205
    .line 206
    invoke-static {v1, v2, p1}, Landroidx/compose/ui/text/SaversKt;->t(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 207
    move-result-object v1

    .line 208
    .line 209
    const/16 v2, 0xb

    .line 210
    .line 211
    aput-object v1, v0, v2

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Landroidx/compose/ui/text/SpanStyle;->q()Landroidx/compose/ui/text/style/TextDecoration;

    .line 215
    move-result-object v1

    .line 216
    .line 217
    sget-object v2, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 218
    .line 219
    .line 220
    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->n(Landroidx/compose/ui/text/style/TextDecoration$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 221
    move-result-object v2

    .line 222
    .line 223
    .line 224
    invoke-static {v1, v2, p1}, Landroidx/compose/ui/text/SaversKt;->t(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 225
    move-result-object v1

    .line 226
    .line 227
    const/16 v2, 0xc

    .line 228
    .line 229
    aput-object v1, v0, v2

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Landroidx/compose/ui/text/SpanStyle;->p()Landroidx/compose/ui/graphics/Shadow;

    .line 233
    move-result-object p2

    .line 234
    .line 235
    sget-object v1, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    .line 236
    .line 237
    .line 238
    invoke-static {v1}, Landroidx/compose/ui/text/SaversKt;->h(Landroidx/compose/ui/graphics/Shadow$Companion;)Landroidx/compose/runtime/saveable/Saver;

    .line 239
    move-result-object v1

    .line 240
    .line 241
    .line 242
    invoke-static {p2, v1, p1}, Landroidx/compose/ui/text/SaversKt;->t(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 243
    move-result-object p1

    .line 244
    .line 245
    const/16 p2, 0xd

    .line 246
    .line 247
    aput-object p1, v0, p2

    .line 248
    .line 249
    .line 250
    invoke-static {v0}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 251
    move-result-object p1

    .line 252
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/text/SpanStyle;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;->a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/SpanStyle;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
