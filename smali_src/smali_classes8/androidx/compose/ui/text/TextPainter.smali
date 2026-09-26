.class public final Landroidx/compose/ui/text/TextPainter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/TextPainter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/TextPainter;

    invoke-direct {v0}, Landroidx/compose/ui/text/TextPainter;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/TextPainter;->INSTANCE:Landroidx/compose/ui/text/TextPainter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/text/TextLayoutResult;)V
    .locals 7
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/TextLayoutResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "textLayoutResult"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->h()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->f()I

    .line 25
    move-result v0

    .line 26
    .line 27
    sget-object v2, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->a()I

    .line 31
    move-result v2

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Landroidx/compose/ui/text/style/TextOverflow;->e(II)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v0, v1

    .line 41
    .line 42
    :goto_0
    if-eqz v0, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->A()J

    .line 46
    move-result-wide v2

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 50
    move-result v2

    .line 51
    int-to-float v2, v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->A()J

    .line 55
    move-result-wide v3

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 59
    move-result v3

    .line 60
    int-to-float v3, v3

    .line 61
    .line 62
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 66
    move-result-wide v4

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 70
    move-result-wide v2

    .line 71
    .line 72
    .line 73
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->b(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 78
    const/4 v3, 0x2

    .line 79
    const/4 v4, 0x0

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v2, v1, v3, v4}, Landroidx/compose/ui/graphics/b1;->e(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;IILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->i()Landroidx/compose/ui/text/TextStyle;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->f()Landroidx/compose/ui/graphics/Brush;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->v()Landroidx/compose/ui/text/MultiParagraph;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->i()Landroidx/compose/ui/text/TextStyle;

    .line 108
    move-result-object v3

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->t()Landroidx/compose/ui/graphics/Shadow;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutInput;->i()Landroidx/compose/ui/text/TextStyle;

    .line 120
    move-result-object p2

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextStyle;->w()Landroidx/compose/ui/text/style/TextDecoration;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, p1, v1, v3, p2}, Landroidx/compose/ui/text/MultiParagraph;->A(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 128
    goto :goto_1

    .line 129
    :catchall_0
    move-exception p2

    .line 130
    goto :goto_2

    .line 131
    .line 132
    .line 133
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->v()Landroidx/compose/ui/text/MultiParagraph;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 138
    move-result-object v2

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Landroidx/compose/ui/text/TextLayoutInput;->i()Landroidx/compose/ui/text/TextStyle;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle;->g()J

    .line 146
    move-result-wide v3

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 150
    move-result-object v2

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Landroidx/compose/ui/text/TextLayoutInput;->i()Landroidx/compose/ui/text/TextStyle;

    .line 154
    move-result-object v2

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle;->t()Landroidx/compose/ui/graphics/Shadow;

    .line 158
    move-result-object v5

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 162
    move-result-object p2

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextLayoutInput;->i()Landroidx/compose/ui/text/TextStyle;

    .line 166
    move-result-object p2

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextStyle;->w()Landroidx/compose/ui/text/style/TextDecoration;

    .line 170
    move-result-object v6

    .line 171
    move-object v2, p1

    .line 172
    .line 173
    .line 174
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/text/MultiParagraph;->B(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .line 176
    :goto_1
    if-eqz v0, :cond_3

    .line 177
    .line 178
    .line 179
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 180
    :cond_3
    return-void

    .line 181
    .line 182
    :goto_2
    if-eqz v0, :cond_4

    .line 183
    .line 184
    .line 185
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 186
    :cond_4
    throw p2
.end method
