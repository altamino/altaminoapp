.class Landroidx/cardview/widget/CardViewBaseImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/cardview/widget/CardViewBaseImpl;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/cardview/widget/CardViewBaseImpl;


# direct methods
.method constructor <init>(Landroidx/cardview/widget/CardViewBaseImpl;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    move-object/from16 v8, p2

    .line 7
    .line 8
    const/high16 v1, 0x40000000    # 2.0f

    .line 9
    .line 10
    mul-float v1, v1, p3

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    .line 14
    move-result v2

    .line 15
    sub-float/2addr v2, v1

    .line 16
    .line 17
    const/high16 v9, 0x3f800000    # 1.0f

    .line 18
    .line 19
    sub-float v10, v2, v9

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    .line 23
    move-result v2

    .line 24
    sub-float/2addr v2, v1

    .line 25
    .line 26
    sub-float v11, v2, v9

    .line 27
    .line 28
    cmpl-float v1, p3, v9

    .line 29
    .line 30
    if-ltz v1, :cond_0

    .line 31
    .line 32
    const/high16 v1, 0x3f000000    # 0.5f

    .line 33
    .line 34
    add-float v12, p3, v1

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    .line 37
    .line 38
    iget-object v1, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    .line 39
    neg-float v2, v12

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2, v2, v12, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    move-result v13

    .line 47
    .line 48
    iget v1, v8, Landroid/graphics/RectF;->left:F

    .line 49
    add-float/2addr v1, v12

    .line 50
    .line 51
    iget v2, v8, Landroid/graphics/RectF;->top:F

    .line 52
    add-float/2addr v2, v12

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    .line 57
    iget-object v1, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    .line 58
    .line 59
    iget-object v2, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    .line 60
    .line 61
    const/high16 v3, 0x43340000    # 180.0f

    .line 62
    .line 63
    const/high16 v4, 0x42b40000    # 90.0f

    .line 64
    const/4 v5, 0x1

    .line 65
    .line 66
    move-object/from16 v1, p1

    .line 67
    .line 68
    move-object/from16 v6, p4

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 72
    const/4 v14, 0x0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v10, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 76
    .line 77
    const/high16 v15, 0x42b40000    # 90.0f

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    .line 81
    .line 82
    iget-object v1, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    .line 83
    .line 84
    iget-object v2, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    .line 85
    .line 86
    move-object/from16 v1, p1

    .line 87
    .line 88
    .line 89
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v11, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    .line 96
    .line 97
    iget-object v1, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    .line 98
    .line 99
    iget-object v2, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    .line 100
    .line 101
    move-object/from16 v1, p1

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v10, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    .line 111
    .line 112
    iget-object v1, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    .line 113
    .line 114
    iget-object v2, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    .line 115
    .line 116
    move-object/from16 v1, p1

    .line 117
    .line 118
    .line 119
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 123
    .line 124
    iget v1, v8, Landroid/graphics/RectF;->left:F

    .line 125
    add-float/2addr v1, v12

    .line 126
    .line 127
    sub-float v2, v1, v9

    .line 128
    .line 129
    iget v3, v8, Landroid/graphics/RectF;->top:F

    .line 130
    .line 131
    iget v1, v8, Landroid/graphics/RectF;->right:F

    .line 132
    sub-float/2addr v1, v12

    .line 133
    .line 134
    add-float v4, v1, v9

    .line 135
    .line 136
    add-float v5, v3, v12

    .line 137
    .line 138
    move-object/from16 v1, p1

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 142
    .line 143
    iget v1, v8, Landroid/graphics/RectF;->left:F

    .line 144
    add-float/2addr v1, v12

    .line 145
    .line 146
    sub-float v2, v1, v9

    .line 147
    .line 148
    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    .line 149
    .line 150
    sub-float v3, v5, v12

    .line 151
    .line 152
    iget v1, v8, Landroid/graphics/RectF;->right:F

    .line 153
    sub-float/2addr v1, v12

    .line 154
    .line 155
    add-float v4, v1, v9

    .line 156
    .line 157
    move-object/from16 v1, p1

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 161
    .line 162
    :cond_0
    iget v2, v8, Landroid/graphics/RectF;->left:F

    .line 163
    .line 164
    iget v1, v8, Landroid/graphics/RectF;->top:F

    .line 165
    .line 166
    add-float v3, v1, p3

    .line 167
    .line 168
    iget v4, v8, Landroid/graphics/RectF;->right:F

    .line 169
    .line 170
    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    .line 171
    .line 172
    sub-float v5, v1, p3

    .line 173
    .line 174
    move-object/from16 v1, p1

    .line 175
    .line 176
    move-object/from16 v6, p4

    .line 177
    .line 178
    .line 179
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 180
    return-void
.end method
