.class public final Landroidx/compose/ui/text/font/FontSynthesis_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/Font;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "typeface"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "font"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "requestedWeight"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    instance-of v0, p1, Landroid/graphics/Typeface;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    return-object p1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/text/font/FontSynthesis;->k(I)Z

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroidx/compose/ui/text/font/AndroidFontUtils_androidKt;->a(Landroidx/compose/ui/text/font/FontWeight$Companion;)Landroidx/compose/ui/text/font/FontWeight;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v3}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 48
    move-result v3

    .line 49
    .line 50
    if-ltz v3, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Landroidx/compose/ui/text/font/AndroidFontUtils_androidKt;->a(Landroidx/compose/ui/text/font/FontWeight$Companion;)Landroidx/compose/ui/text/font/FontWeight;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/font/FontWeight;->j(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 62
    move-result v0

    .line 63
    .line 64
    if-gez v0, :cond_1

    .line 65
    move v0, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move v0, v1

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-static {p0}, Landroidx/compose/ui/text/font/FontSynthesis;->j(I)Z

    .line 71
    move-result p0

    .line 72
    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->c()I

    .line 77
    move-result p0

    .line 78
    .line 79
    .line 80
    invoke-static {p4, p0}, Landroidx/compose/ui/text/font/FontStyle;->f(II)Z

    .line 81
    move-result p0

    .line 82
    .line 83
    if-nez p0, :cond_2

    .line 84
    move p0, v2

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move p0, v1

    .line 87
    .line 88
    :goto_1
    if-nez p0, :cond_3

    .line 89
    .line 90
    if-nez v0, :cond_3

    .line 91
    return-object p1

    .line 92
    .line 93
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    .line 95
    const/16 v4, 0x1c

    .line 96
    .line 97
    if-ge v3, v4, :cond_5

    .line 98
    .line 99
    if-eqz p0, :cond_4

    .line 100
    .line 101
    sget-object p0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->a()I

    .line 105
    move-result p0

    .line 106
    .line 107
    .line 108
    invoke-static {p4, p0}, Landroidx/compose/ui/text/font/FontStyle;->f(II)Z

    .line 109
    move-result p0

    .line 110
    .line 111
    if-eqz p0, :cond_4

    .line 112
    move v1, v2

    .line 113
    .line 114
    .line 115
    :cond_4
    invoke-static {v0, v1}, Landroidx/compose/ui/text/font/AndroidFontUtils_androidKt;->b(ZZ)I

    .line 116
    move-result p0

    .line 117
    .line 118
    check-cast p1, Landroid/graphics/Typeface;

    .line 119
    .line 120
    .line 121
    invoke-static {p1, p0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 122
    move-result-object p0

    .line 123
    goto :goto_4

    .line 124
    .line 125
    :cond_5
    if-eqz v0, :cond_6

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight;->k()I

    .line 129
    move-result p3

    .line 130
    goto :goto_2

    .line 131
    .line 132
    .line 133
    :cond_6
    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 134
    move-result-object p3

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight;->k()I

    .line 138
    move-result p3

    .line 139
    .line 140
    :goto_2
    if-eqz p0, :cond_7

    .line 141
    .line 142
    sget-object p0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->a()I

    .line 146
    move-result p0

    .line 147
    .line 148
    .line 149
    invoke-static {p4, p0}, Landroidx/compose/ui/text/font/FontStyle;->f(II)Z

    .line 150
    move-result p0

    .line 151
    goto :goto_3

    .line 152
    .line 153
    .line 154
    :cond_7
    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->c()I

    .line 155
    move-result p0

    .line 156
    .line 157
    sget-object p2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontStyle$Companion;->a()I

    .line 161
    move-result p2

    .line 162
    .line 163
    .line 164
    invoke-static {p0, p2}, Landroidx/compose/ui/text/font/FontStyle;->f(II)Z

    .line 165
    move-result p0

    .line 166
    .line 167
    :goto_3
    sget-object p2, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->INSTANCE:Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;

    .line 168
    .line 169
    check-cast p1, Landroid/graphics/Typeface;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, p1, p3, p0}, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 173
    move-result-object p0

    .line 174
    .line 175
    :goto_4
    const-string p1, "if (Build.VERSION.SDK_IN\u2026ht, finalFontStyle)\n    }"

    .line 176
    .line 177
    .line 178
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    return-object p0
.end method
