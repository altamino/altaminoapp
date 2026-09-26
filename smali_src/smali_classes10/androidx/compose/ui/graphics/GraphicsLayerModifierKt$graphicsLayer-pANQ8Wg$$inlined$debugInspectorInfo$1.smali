.class public final Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->b(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJ)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInspectableValue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1\n+ 2 GraphicsLayerModifier.kt\nandroidx/compose/ui/graphics/GraphicsLayerModifierKt\n*L\n1#1,170:1\n277#2,18:171\n*E\n"
.end annotation


# instance fields
.field final synthetic $alpha$inlined:F

.field final synthetic $ambientShadowColor$inlined:J

.field final synthetic $cameraDistance$inlined:F

.field final synthetic $clip$inlined:Z

.field final synthetic $renderEffect$inlined:Landroidx/compose/ui/graphics/RenderEffect;

.field final synthetic $rotationX$inlined:F

.field final synthetic $rotationY$inlined:F

.field final synthetic $rotationZ$inlined:F

.field final synthetic $scaleX$inlined:F

.field final synthetic $scaleY$inlined:F

.field final synthetic $shadowElevation$inlined:F

.field final synthetic $shape$inlined:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $spotShadowColor$inlined:J

.field final synthetic $transformOrigin$inlined:J

.field final synthetic $translationX$inlined:F

.field final synthetic $translationY$inlined:F


# direct methods
.method public constructor <init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJ)V
    .locals 3

    move-object v0, p0

    move v1, p1

    iput v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$scaleX$inlined:F

    move v1, p2

    iput v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$scaleY$inlined:F

    move v1, p3

    iput v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$alpha$inlined:F

    move v1, p4

    iput v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$translationX$inlined:F

    move v1, p5

    iput v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$translationY$inlined:F

    move v1, p6

    iput v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$shadowElevation$inlined:F

    move v1, p7

    iput v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$rotationX$inlined:F

    move v1, p8

    iput v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$rotationY$inlined:F

    move v1, p9

    iput v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$rotationZ$inlined:F

    move v1, p10

    iput v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$cameraDistance$inlined:F

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$transformOrigin$inlined:J

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$shape$inlined:Landroidx/compose/ui/graphics/Shape;

    move/from16 v1, p14

    iput-boolean v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$clip$inlined:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$renderEffect$inlined:Landroidx/compose/ui/graphics/RenderEffect;

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$ambientShadowColor$inlined:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$spotShadowColor$inlined:J

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/platform/InspectorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "graphicsLayer"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$scaleX$inlined:F

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, "scaleX"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$scaleY$inlined:F

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    const-string v2, "scaleY"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$alpha$inlined:F

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    const-string v2, "alpha"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$translationX$inlined:F

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    const-string v2, "translationX"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$translationY$inlined:F

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    const-string v2, "translationY"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$shadowElevation$inlined:F

    .line 92
    .line 93
    .line 94
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    const-string v2, "shadowElevation"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$rotationX$inlined:F

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    const-string v2, "rotationX"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$rotationY$inlined:F

    .line 122
    .line 123
    .line 124
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    const-string v2, "rotationY"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$rotationZ$inlined:F

    .line 137
    .line 138
    .line 139
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    const-string v2, "rotationZ"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$cameraDistance$inlined:F

    .line 152
    .line 153
    .line 154
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 155
    move-result-object v1

    .line 156
    .line 157
    const-string v2, "cameraDistance"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$transformOrigin$inlined:J

    .line 167
    .line 168
    .line 169
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)Landroidx/compose/ui/graphics/TransformOrigin;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    const-string v2, "transformOrigin"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    const-string v1, "shape"

    .line 182
    .line 183
    iget-object v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$shape$inlined:Landroidx/compose/ui/graphics/Shape;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$clip$inlined:Z

    .line 193
    .line 194
    .line 195
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 196
    move-result-object v1

    .line 197
    .line 198
    const-string v2, "clip"

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 205
    move-result-object v0

    .line 206
    .line 207
    const-string v1, "renderEffect"

    .line 208
    .line 209
    iget-object v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$renderEffect$inlined:Landroidx/compose/ui/graphics/RenderEffect;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 216
    move-result-object v0

    .line 217
    .line 218
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$ambientShadowColor$inlined:J

    .line 219
    .line 220
    .line 221
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    const-string v2, "ambientShadowColor"

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->a()Landroidx/compose/ui/platform/ValueElementSequence;

    .line 231
    move-result-object p1

    .line 232
    .line 233
    iget-wide v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->$spotShadowColor$inlined:J

    .line 234
    .line 235
    .line 236
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 237
    move-result-object v0

    .line 238
    .line 239
    const-string v1, "spotShadowColor"

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v1, v0}, Landroidx/compose/ui/platform/ValueElementSequence;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/platform/InspectorInfo;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;->a(Landroidx/compose/ui/platform/InspectorInfo;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
