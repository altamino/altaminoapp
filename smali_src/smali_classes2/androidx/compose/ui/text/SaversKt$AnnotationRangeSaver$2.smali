.class final Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/SaversKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/text/AnnotatedString$Range<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2\n+ 2 Savers.kt\nandroidx/compose/ui/text/SaversKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,398:1\n70#2:399\n70#2:401\n70#2:403\n70#2:405\n55#2,2:407\n55#2,2:410\n55#2,2:413\n70#2:416\n1#3:400\n1#3:402\n1#3:404\n1#3:406\n1#3:409\n1#3:412\n1#3:415\n1#3:417\n*S KotlinDebug\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2\n*L\n147#1:399\n148#1:401\n149#1:403\n150#1:405\n154#1:407,2\n158#1:410,2\n162#1:413,2\n166#1:416\n147#1:400\n148#1:402\n149#1:404\n150#1:406\n154#1:409\n158#1:412\n162#1:415\n166#1:417\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString$Range;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast v0, Landroidx/compose/ui/text/AnnotationType;

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 23
    const/4 v2, 0x2

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    check-cast v3, Ljava/lang/Integer;

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v3, v1

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x3

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v5

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    check-cast v5, Ljava/lang/Integer;

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move-object v5, v1

    .line 52
    .line 53
    .line 54
    :goto_2
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 58
    move-result v5

    .line 59
    const/4 v6, 0x4

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v7

    .line 64
    .line 65
    if-eqz v7, :cond_3

    .line 66
    .line 67
    check-cast v7, Ljava/lang/String;

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    move-object v7, v1

    .line 70
    .line 71
    .line 72
    :goto_3
    invoke-static {v7}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 73
    .line 74
    sget-object v8, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 78
    move-result v0

    .line 79
    .line 80
    aget v0, v8, v0

    .line 81
    const/4 v8, 0x1

    .line 82
    .line 83
    if-eq v0, v8, :cond_c

    .line 84
    .line 85
    if-eq v0, v2, :cond_9

    .line 86
    .line 87
    if-eq v0, v4, :cond_6

    .line 88
    .line 89
    if-ne v0, v6, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    if-eqz p1, :cond_4

    .line 96
    move-object v1, p1

    .line 97
    .line 98
    check-cast v1, Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 102
    .line 103
    new-instance p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, v1, v3, v5, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .line 107
    .line 108
    goto/16 :goto_7

    .line 109
    .line 110
    :cond_5
    new-instance p1, Lw7/s;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 114
    throw p1

    .line 115
    .line 116
    .line 117
    :cond_6
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->c()Landroidx/compose/runtime/saveable/Saver;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 125
    .line 126
    .line 127
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    move-result v2

    .line 129
    .line 130
    if-eqz v2, :cond_7

    .line 131
    goto :goto_4

    .line 132
    .line 133
    :cond_7
    if-eqz p1, :cond_8

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, p1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-result-object p1

    .line 138
    move-object v1, p1

    .line 139
    .line 140
    check-cast v1, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 141
    .line 142
    .line 143
    :cond_8
    :goto_4
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 144
    .line 145
    new-instance p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 146
    .line 147
    .line 148
    invoke-direct {p1, v1, v3, v5, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .line 149
    goto :goto_7

    .line 150
    .line 151
    .line 152
    :cond_9
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    .line 156
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->r()Landroidx/compose/runtime/saveable/Saver;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 160
    .line 161
    .line 162
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    move-result v2

    .line 164
    .line 165
    if-eqz v2, :cond_a

    .line 166
    goto :goto_5

    .line 167
    .line 168
    :cond_a
    if-eqz p1, :cond_b

    .line 169
    .line 170
    .line 171
    invoke-interface {v0, p1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    move-result-object p1

    .line 173
    move-object v1, p1

    .line 174
    .line 175
    check-cast v1, Landroidx/compose/ui/text/SpanStyle;

    .line 176
    .line 177
    .line 178
    :cond_b
    :goto_5
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 179
    .line 180
    new-instance p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 181
    .line 182
    .line 183
    invoke-direct {p1, v1, v3, v5, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .line 184
    goto :goto_7

    .line 185
    .line 186
    .line 187
    :cond_c
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    move-result-object p1

    .line 189
    .line 190
    .line 191
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->e()Landroidx/compose/runtime/saveable/Saver;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 195
    .line 196
    .line 197
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    move-result v2

    .line 199
    .line 200
    if-eqz v2, :cond_d

    .line 201
    goto :goto_6

    .line 202
    .line 203
    :cond_d
    if-eqz p1, :cond_e

    .line 204
    .line 205
    .line 206
    invoke-interface {v0, p1}, Landroidx/compose/runtime/saveable/Saver;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    move-result-object p1

    .line 208
    move-object v1, p1

    .line 209
    .line 210
    check-cast v1, Landroidx/compose/ui/text/ParagraphStyle;

    .line 211
    .line 212
    .line 213
    :cond_e
    :goto_6
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 214
    .line 215
    new-instance p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 216
    .line 217
    .line 218
    invoke-direct {p1, v1, v3, v5, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .line 219
    :goto_7
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;->a(Ljava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
