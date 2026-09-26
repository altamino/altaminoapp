.class public final Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Popup.kt\nandroidx/compose/ui/window/AlignmentOffsetPositionProvider\n+ 2 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,102:1\n86#2:103\n86#2:104\n79#2:105\n86#2:106\n*S KotlinDebug\n*F\n+ 1 Popup.kt\nandroidx/compose/ui/window/AlignmentOffsetPositionProvider\n*L\n84#1:103\n87#1:104\n90#1:105\n97#1:106\n*E\n"
.end annotation


# instance fields
.field private final alignment:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final offset:J


# direct methods
.method private constructor <init>(Landroidx/compose/ui/Alignment;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;->alignment:Landroidx/compose/ui/Alignment;

    iput-wide p2, p0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;->offset:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Alignment;JLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;-><init>(Landroidx/compose/ui/Alignment;J)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 14
    .param p1    # Landroidx/compose/ui/unit/IntRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p4

    .line 4
    .line 5
    const-string v1, "anchorBounds"

    .line 6
    move-object v8, p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v1, "layoutDirection"

    .line 12
    .line 13
    .line 14
    invoke-static {v7, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 19
    move-result-wide v9

    .line 20
    .line 21
    iget-object v1, v0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;->alignment:Landroidx/compose/ui/Alignment;

    .line 22
    .line 23
    sget-object v11, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v11}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 27
    move-result-wide v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->f()I

    .line 31
    move-result v4

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->b()I

    .line 35
    move-result v5

    .line 36
    .line 37
    .line 38
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 39
    move-result-wide v4

    .line 40
    .line 41
    move-object/from16 v6, p4

    .line 42
    .line 43
    .line 44
    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 45
    move-result-wide v12

    .line 46
    .line 47
    iget-object v1, v0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;->alignment:Landroidx/compose/ui/Alignment;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v11}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 51
    move-result-wide v2

    .line 52
    .line 53
    .line 54
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 55
    move-result v4

    .line 56
    .line 57
    .line 58
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 59
    move-result v5

    .line 60
    .line 61
    .line 62
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 63
    move-result-wide v4

    .line 64
    .line 65
    .line 66
    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 67
    move-result-wide v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->c()I

    .line 71
    move-result v3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->e()I

    .line 75
    move-result v4

    .line 76
    .line 77
    .line 78
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 79
    move-result-wide v3

    .line 80
    .line 81
    .line 82
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 83
    move-result v5

    .line 84
    .line 85
    .line 86
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 87
    move-result v6

    .line 88
    add-int/2addr v5, v6

    .line 89
    .line 90
    .line 91
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 92
    move-result v6

    .line 93
    .line 94
    .line 95
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 96
    move-result v3

    .line 97
    add-int/2addr v6, v3

    .line 98
    .line 99
    .line 100
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 101
    move-result-wide v3

    .line 102
    .line 103
    .line 104
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 105
    move-result v5

    .line 106
    .line 107
    .line 108
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 109
    move-result v6

    .line 110
    add-int/2addr v5, v6

    .line 111
    .line 112
    .line 113
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 114
    move-result v3

    .line 115
    .line 116
    .line 117
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 118
    move-result v4

    .line 119
    add-int/2addr v3, v4

    .line 120
    .line 121
    .line 122
    invoke-static {v5, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 123
    move-result-wide v3

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 127
    move-result v5

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 131
    move-result v1

    .line 132
    .line 133
    .line 134
    invoke-static {v5, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 135
    move-result-wide v1

    .line 136
    .line 137
    .line 138
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 139
    move-result v5

    .line 140
    .line 141
    .line 142
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 143
    move-result v6

    .line 144
    sub-int/2addr v5, v6

    .line 145
    .line 146
    .line 147
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 148
    move-result v3

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 152
    move-result v1

    .line 153
    sub-int/2addr v3, v1

    .line 154
    .line 155
    .line 156
    invoke-static {v5, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 157
    move-result-wide v1

    .line 158
    .line 159
    iget-wide v3, v0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;->offset:J

    .line 160
    .line 161
    .line 162
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 163
    move-result v3

    .line 164
    .line 165
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 166
    .line 167
    if-ne v7, v4, :cond_0

    .line 168
    const/4 v4, 0x1

    .line 169
    goto :goto_0

    .line 170
    :cond_0
    const/4 v4, -0x1

    .line 171
    :goto_0
    mul-int/2addr v3, v4

    .line 172
    .line 173
    iget-wide v4, v0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;->offset:J

    .line 174
    .line 175
    .line 176
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 177
    move-result v4

    .line 178
    .line 179
    .line 180
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 181
    move-result-wide v3

    .line 182
    .line 183
    .line 184
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 185
    move-result v5

    .line 186
    .line 187
    .line 188
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 189
    move-result v6

    .line 190
    add-int/2addr v5, v6

    .line 191
    .line 192
    .line 193
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 194
    move-result v1

    .line 195
    .line 196
    .line 197
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 198
    move-result v2

    .line 199
    add-int/2addr v1, v2

    .line 200
    .line 201
    .line 202
    invoke-static {v5, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 203
    move-result-wide v1

    .line 204
    return-wide v1
.end method
