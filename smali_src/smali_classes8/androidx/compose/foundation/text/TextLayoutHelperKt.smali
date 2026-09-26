.class public final Landroidx/compose/foundation/text/TextLayoutHelperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)Z
    .locals 2
    .param p0    # Landroidx/compose/ui/text/TextLayoutResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;IZI",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "J)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$canReuse"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "text"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "style"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "placeholders"

    .line 18
    .line 19
    .line 20
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "density"

    .line 23
    .line 24
    .line 25
    invoke-static {p7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    const-string v0, "layoutDirection"

    .line 28
    .line 29
    .line 30
    invoke-static {p8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    const-string v0, "fontFamilyResolver"

    .line 33
    .line 34
    .line 35
    invoke-static {p9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->v()Landroidx/compose/ui/text/MultiParagraph;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraph;->i()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b()Z

    .line 51
    move-result p0

    .line 52
    const/4 v1, 0x0

    .line 53
    .line 54
    if-eqz p0, :cond_0

    .line 55
    return v1

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->j()Landroidx/compose/ui/text/AnnotatedString;

    .line 59
    move-result-object p0

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result p0

    .line 64
    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->i()Landroidx/compose/ui/text/TextStyle;

    .line 69
    move-result-object p0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/TextStyle;->A(Landroidx/compose/ui/text/TextStyle;)Z

    .line 73
    move-result p0

    .line 74
    .line 75
    if-eqz p0, :cond_4

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->g()Ljava/util/List;

    .line 79
    move-result-object p0

    .line 80
    .line 81
    .line 82
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    move-result p0

    .line 84
    .line 85
    if-eqz p0, :cond_4

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->e()I

    .line 89
    move-result p0

    .line 90
    .line 91
    if-ne p0, p4, :cond_4

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->h()Z

    .line 95
    move-result p0

    .line 96
    .line 97
    if-ne p0, p5, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->f()I

    .line 101
    move-result p0

    .line 102
    .line 103
    .line 104
    invoke-static {p0, p6}, Landroidx/compose/ui/text/style/TextOverflow;->e(II)Z

    .line 105
    move-result p0

    .line 106
    .line 107
    if-eqz p0, :cond_4

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->b()Landroidx/compose/ui/unit/Density;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    .line 114
    invoke-static {p0, p7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    move-result p0

    .line 116
    .line 117
    if-eqz p0, :cond_4

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->d()Landroidx/compose/ui/unit/LayoutDirection;

    .line 121
    move-result-object p0

    .line 122
    .line 123
    if-ne p0, p8, :cond_4

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->c()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 127
    move-result-object p0

    .line 128
    .line 129
    .line 130
    invoke-static {p0, p9}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    move-result p0

    .line 132
    .line 133
    if-nez p0, :cond_1

    .line 134
    goto :goto_0

    .line 135
    .line 136
    .line 137
    :cond_1
    invoke-static {p10, p11}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 138
    move-result p0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->a()J

    .line 142
    move-result-wide p1

    .line 143
    .line 144
    .line 145
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 146
    move-result p1

    .line 147
    .line 148
    if-eq p0, p1, :cond_2

    .line 149
    return v1

    .line 150
    :cond_2
    const/4 p0, 0x1

    .line 151
    .line 152
    if-nez p5, :cond_3

    .line 153
    .line 154
    sget-object p1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->b()I

    .line 158
    move-result p1

    .line 159
    .line 160
    .line 161
    invoke-static {p6, p1}, Landroidx/compose/ui/text/style/TextOverflow;->e(II)Z

    .line 162
    move-result p1

    .line 163
    .line 164
    if-nez p1, :cond_3

    .line 165
    return p0

    .line 166
    .line 167
    .line 168
    :cond_3
    invoke-static {p10, p11}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 169
    move-result p1

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->a()J

    .line 173
    move-result-wide p2

    .line 174
    .line 175
    .line 176
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 177
    move-result p2

    .line 178
    .line 179
    if-ne p1, p2, :cond_4

    .line 180
    .line 181
    .line 182
    invoke-static {p10, p11}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 183
    move-result p1

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->a()J

    .line 187
    move-result-wide p2

    .line 188
    .line 189
    .line 190
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 191
    move-result p2

    .line 192
    .line 193
    if-ne p1, p2, :cond_4

    .line 194
    move v1, p0

    .line 195
    :cond_4
    :goto_0
    return v1
.end method
