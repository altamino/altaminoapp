.class public final Landroidx/compose/material/Strings_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrings.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.android.kt\nandroidx/compose/material/Strings_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,38:1\n76#2:39\n76#2:40\n*S KotlinDebug\n*F\n+ 1 Strings.android.kt\nandroidx/compose/material/Strings_androidKt\n*L\n26#1:39\n27#1:40\n*E\n"
.end annotation


# direct methods
.method public static final a(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;
    .locals 2
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p2, -0x2b4f9f6b

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->g()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    check-cast p2, Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    sget-object v0, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->e()I

    .line 33
    move-result v1

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v1}, Landroidx/compose/material/Strings;->j(II)Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    sget p0, Landroidx/compose/ui/R$string;->navigation_menu:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    const-string p2, "resources.getString(R.string.navigation_menu)"

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->a()I

    .line 56
    move-result v1

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v1}, Landroidx/compose/material/Strings;->j(II)Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    sget p0, Landroidx/compose/ui/R$string;->close_drawer:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    const-string p2, "resources.getString(R.string.close_drawer)"

    .line 71
    .line 72
    .line 73
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->b()I

    .line 79
    move-result v1

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v1}, Landroidx/compose/material/Strings;->j(II)Z

    .line 83
    move-result v1

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    sget p0, Landroidx/compose/ui/R$string;->close_sheet:I

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    .line 93
    const-string p2, "resources.getString(R.string.close_sheet)"

    .line 94
    .line 95
    .line 96
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    goto :goto_0

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->c()I

    .line 101
    move-result v1

    .line 102
    .line 103
    .line 104
    invoke-static {p0, v1}, Landroidx/compose/material/Strings;->j(II)Z

    .line 105
    move-result v1

    .line 106
    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    sget p0, Landroidx/compose/ui/R$string;->default_error_message:I

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    .line 115
    const-string p2, "resources.getString(R.st\u2026ng.default_error_message)"

    .line 116
    .line 117
    .line 118
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    goto :goto_0

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->d()I

    .line 123
    move-result v1

    .line 124
    .line 125
    .line 126
    invoke-static {p0, v1}, Landroidx/compose/material/Strings;->j(II)Z

    .line 127
    move-result v1

    .line 128
    .line 129
    if-eqz v1, :cond_4

    .line 130
    .line 131
    sget p0, Landroidx/compose/ui/R$string;->dropdown_menu:I

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 135
    move-result-object p0

    .line 136
    .line 137
    const-string p2, "resources.getString(R.string.dropdown_menu)"

    .line 138
    .line 139
    .line 140
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    goto :goto_0

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->g()I

    .line 145
    move-result v1

    .line 146
    .line 147
    .line 148
    invoke-static {p0, v1}, Landroidx/compose/material/Strings;->j(II)Z

    .line 149
    move-result v1

    .line 150
    .line 151
    if-eqz v1, :cond_5

    .line 152
    .line 153
    sget p0, Landroidx/compose/ui/R$string;->range_start:I

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 157
    move-result-object p0

    .line 158
    .line 159
    const-string p2, "resources.getString(R.string.range_start)"

    .line 160
    .line 161
    .line 162
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    goto :goto_0

    .line 164
    .line 165
    .line 166
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->f()I

    .line 167
    move-result v0

    .line 168
    .line 169
    .line 170
    invoke-static {p0, v0}, Landroidx/compose/material/Strings;->j(II)Z

    .line 171
    move-result p0

    .line 172
    .line 173
    if-eqz p0, :cond_6

    .line 174
    .line 175
    sget p0, Landroidx/compose/ui/R$string;->range_end:I

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 179
    move-result-object p0

    .line 180
    .line 181
    const-string p2, "resources.getString(R.string.range_end)"

    .line 182
    .line 183
    .line 184
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    goto :goto_0

    .line 186
    .line 187
    :cond_6
    const-string p0, ""

    .line 188
    .line 189
    .line 190
    :goto_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 191
    return-object p0
.end method
