.class final Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/BorderKt;->m(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Border.kt\nandroidx/compose/foundation/BorderKt$drawRoundRectBorder$1\n+ 2 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,459:1\n221#2:460\n261#2,11:461\n*S KotlinDebug\n*F\n+ 1 Border.kt\nandroidx/compose/foundation/BorderKt$drawRoundRectBorder$1\n*L\n353#1:460\n353#1:461,11\n*E\n"
.end annotation


# instance fields
.field final synthetic $borderSize:J

.field final synthetic $borderStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field final synthetic $brush:Landroidx/compose/ui/graphics/Brush;

.field final synthetic $cornerRadius:J

.field final synthetic $fillArea:Z

.field final synthetic $halfStroke:F

.field final synthetic $strokeWidth:F

.field final synthetic $topLeft:J


# direct methods
.method constructor <init>(ZLandroidx/compose/ui/graphics/Brush;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$fillArea:Z

    iput-object p2, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    iput-wide p3, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$cornerRadius:J

    iput p5, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$halfStroke:F

    iput p6, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$strokeWidth:F

    iput-wide p7, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$topLeft:J

    iput-wide p9, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$borderSize:J

    iput-object p11, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$borderStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 22
    .param p1    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "$this$onDrawWithContent"

    .line 5
    .line 6
    move-object/from16 v2, p1

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->Z()V

    .line 13
    .line 14
    iget-boolean v1, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$fillArea:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v3, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    const-wide/16 v6, 0x0

    .line 23
    .line 24
    iget-wide v8, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$cornerRadius:J

    .line 25
    const/4 v10, 0x0

    .line 26
    const/4 v11, 0x0

    .line 27
    const/4 v12, 0x0

    .line 28
    const/4 v13, 0x0

    .line 29
    .line 30
    const/16 v14, 0xf6

    .line 31
    const/4 v15, 0x0

    .line 32
    .line 33
    move-object/from16 v2, p1

    .line 34
    .line 35
    .line 36
    invoke-static/range {v2 .. v15}, Landroidx/compose/ui/graphics/drawscope/a;->o(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_0
    iget-wide v3, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$cornerRadius:J

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 44
    move-result v1

    .line 45
    .line 46
    iget v3, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$halfStroke:F

    .line 47
    .line 48
    cmpg-float v1, v1, v3

    .line 49
    .line 50
    if-gez v1, :cond_1

    .line 51
    .line 52
    iget v6, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$strokeWidth:F

    .line 53
    .line 54
    .line 55
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 56
    move-result-wide v3

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 60
    move-result v1

    .line 61
    .line 62
    iget v3, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$strokeWidth:F

    .line 63
    .line 64
    sub-float v7, v1, v3

    .line 65
    .line 66
    .line 67
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 68
    move-result-wide v3

    .line 69
    .line 70
    .line 71
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 72
    move-result v1

    .line 73
    .line 74
    iget v3, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$strokeWidth:F

    .line 75
    .line 76
    sub-float v8, v1, v3

    .line 77
    .line 78
    sget-object v1, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/ClipOp$Companion;->a()I

    .line 82
    move-result v9

    .line 83
    .line 84
    iget-object v3, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    .line 85
    .line 86
    iget-wide v10, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$cornerRadius:J

    .line 87
    .line 88
    .line 89
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->c()J

    .line 94
    move-result-wide v14

    .line 95
    .line 96
    .line 97
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 98
    move-result-object v4

    .line 99
    .line 100
    .line 101
    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 102
    .line 103
    .line 104
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 105
    move-result-object v4

    .line 106
    move v5, v6

    .line 107
    .line 108
    .line 109
    invoke-interface/range {v4 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->a(FFFFI)V

    .line 110
    .line 111
    const-wide/16 v4, 0x0

    .line 112
    .line 113
    const-wide/16 v6, 0x0

    .line 114
    const/4 v12, 0x0

    .line 115
    const/4 v13, 0x0

    .line 116
    .line 117
    const/16 v16, 0x0

    .line 118
    .line 119
    const/16 v17, 0x0

    .line 120
    .line 121
    const/16 v18, 0xf6

    .line 122
    .line 123
    const/16 v19, 0x0

    .line 124
    .line 125
    move-object/from16 v2, p1

    .line 126
    move-wide v8, v10

    .line 127
    move v10, v12

    .line 128
    move-object v11, v13

    .line 129
    .line 130
    move-object/from16 v12, v16

    .line 131
    .line 132
    move/from16 v13, v17

    .line 133
    .line 134
    move-wide/from16 v20, v14

    .line 135
    .line 136
    move/from16 v14, v18

    .line 137
    .line 138
    move-object/from16 v15, v19

    .line 139
    .line 140
    .line 141
    invoke-static/range {v2 .. v15}, Landroidx/compose/ui/graphics/drawscope/a;->o(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 145
    move-result-object v2

    .line 146
    .line 147
    .line 148
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 149
    .line 150
    move-wide/from16 v2, v20

    .line 151
    .line 152
    .line 153
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->b(J)V

    .line 154
    goto :goto_0

    .line 155
    .line 156
    :cond_1
    iget-object v1, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    .line 157
    .line 158
    iget-wide v4, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$topLeft:J

    .line 159
    .line 160
    iget-wide v6, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$borderSize:J

    .line 161
    .line 162
    iget-wide v8, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$cornerRadius:J

    .line 163
    .line 164
    .line 165
    invoke-static {v8, v9, v3}, Landroidx/compose/foundation/BorderKt;->e(JF)J

    .line 166
    move-result-wide v8

    .line 167
    const/4 v10, 0x0

    .line 168
    .line 169
    iget-object v11, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$borderStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 170
    const/4 v12, 0x0

    .line 171
    const/4 v13, 0x0

    .line 172
    .line 173
    const/16 v14, 0xd0

    .line 174
    const/4 v15, 0x0

    .line 175
    .line 176
    move-object/from16 v2, p1

    .line 177
    move-object v3, v1

    .line 178
    .line 179
    .line 180
    invoke-static/range {v2 .. v15}, Landroidx/compose/ui/graphics/drawscope/a;->o(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 181
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
