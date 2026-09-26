.class final Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeLineAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final VIEW_TYPE_FAKE_TAIL_PREFIX:I

.field private final VIEW_TYPE_NORMAL:I

.field private final VIEW_TYPE_PRE_OFFSET:I

.field private final VIEW_TYPE_TAIL_PREFIX:I

.field private final itemHeight:I

.field private final showAdditionalBorderAtTail:Z

.field private final showItemBorder:Z

.field private final showRoundCorner:Z

.field final synthetic this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;


# direct methods
.method public constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-boolean p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showItemBorder:Z

    iput-boolean p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showRoundCorner:Z

    iput-boolean p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showAdditionalBorderAtTail:Z

    const/4 p2, 0x1

    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_NORMAL:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_PRE_OFFSET:I

    const/16 p2, 0x64

    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    const/16 p2, 0xc8

    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_FAKE_TAIL_PREFIX:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->itemHeight:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent;ZZZILkotlin/jvm/internal/k;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p4, 0x1

    .line 1
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;ZZZ)V

    return-void
.end method

.method public static synthetic g(Lcom/narvii/video/interfaces/ITimelineClip;Lcom/narvii/video/widget/MediaTimeLineComponent;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->onBindViewHolder$lambda$3(Lcom/narvii/video/interfaces/ITimelineClip;Lcom/narvii/video/widget/MediaTimeLineComponent;Landroid/view/View;)V

    return-void
.end method

.method private final getFrameTimeByPosition(I)Lw7/u;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lw7/u<",
            "Lcom/narvii/video/interfaces/ITimelineClip;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-lt p1, v0, :cond_6

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getItemCount()I

    .line 20
    move-result v0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 26
    move-result v2

    .line 27
    sub-int/2addr v0, v2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePostOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 33
    move-result v2

    .line 34
    sub-int/2addr v0, v2

    .line 35
    .line 36
    if-lt p1, v0, :cond_0

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCompositionLengthMsList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v0

    .line 49
    const/4 v2, 0x0

    .line 50
    move v3, v2

    .line 51
    move v4, v3

    .line 52
    .line 53
    :goto_0
    if-ge v3, v0, :cond_5

    .line 54
    .line 55
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 56
    .line 57
    .line 58
    invoke-static {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRoundCompositionVisibleFrameCountList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    .line 59
    move-result-object v5

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v5

    .line 64
    .line 65
    const-string v6, "get(...)"

    .line 66
    .line 67
    .line 68
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    check-cast v5, Ljava/lang/Number;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 74
    move-result v5

    .line 75
    add-int/2addr v4, v5

    .line 76
    .line 77
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 78
    .line 79
    .line 80
    invoke-static {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 81
    move-result v5

    .line 82
    .line 83
    sub-int v5, p1, v5

    .line 84
    .line 85
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 86
    .line 87
    .line 88
    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 89
    move-result v7

    .line 90
    sub-int/2addr v5, v7

    .line 91
    .line 92
    if-ge v5, v4, :cond_4

    .line 93
    .line 94
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 95
    .line 96
    .line 97
    invoke-static {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 98
    move-result v5

    .line 99
    .line 100
    sub-int v5, p1, v5

    .line 101
    .line 102
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 103
    .line 104
    .line 105
    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 106
    move-result v7

    .line 107
    sub-int/2addr v5, v7

    .line 108
    sub-int/2addr v5, v4

    .line 109
    .line 110
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 111
    .line 112
    .line 113
    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRoundCompositionVisibleFrameCountList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    .line 114
    move-result-object v7

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object v7

    .line 119
    .line 120
    .line 121
    invoke-static {v7, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    check-cast v7, Ljava/lang/Number;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 127
    move-result v6

    .line 128
    add-int/2addr v5, v6

    .line 129
    .line 130
    add-int/lit8 v6, v5, -0x1

    .line 131
    int-to-float v6, v6

    .line 132
    .line 133
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 134
    .line 135
    .line 136
    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineItemFrameLengthInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)F

    .line 137
    move-result v7

    .line 138
    mul-float/2addr v6, v7

    .line 139
    .line 140
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 141
    .line 142
    .line 143
    invoke-static {v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRoundCompositionVisibleFrameCountList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    .line 144
    move-result-object v7

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    move-result-object v7

    .line 149
    .line 150
    check-cast v7, Ljava/lang/Number;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 154
    move-result v7

    .line 155
    .line 156
    add-int/lit8 v7, v7, -0x1

    .line 157
    .line 158
    if-ne v5, v7, :cond_1

    .line 159
    .line 160
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 161
    .line 162
    .line 163
    invoke-static {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCompositionTailFrameLengthInMsList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    .line 164
    move-result-object v5

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    move-result-object v5

    .line 169
    .line 170
    check-cast v5, Ljava/lang/Float;

    .line 171
    goto :goto_1

    .line 172
    .line 173
    :cond_1
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 174
    .line 175
    .line 176
    invoke-static {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineItemFrameLengthInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)F

    .line 177
    move-result v5

    .line 178
    .line 179
    .line 180
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 181
    move-result-object v5

    .line 182
    .line 183
    .line 184
    :goto_1
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 188
    move-result v5

    .line 189
    add-float/2addr v6, v5

    .line 190
    .line 191
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 192
    .line 193
    .line 194
    invoke-static {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMediaClipList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    .line 195
    move-result-object v5

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 199
    move-result-object v5

    .line 200
    move v7, v2

    .line 201
    .line 202
    .line 203
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    move-result v8

    .line 205
    .line 206
    if-eqz v8, :cond_4

    .line 207
    .line 208
    .line 209
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    move-result-object v8

    .line 211
    .line 212
    check-cast v8, Lcom/narvii/video/interfaces/ITimelineClip;

    .line 213
    .line 214
    .line 215
    invoke-interface {v8}, Lcom/narvii/video/interfaces/ITimelineClip;->clipLengthComposition()Ljava/util/List;

    .line 216
    move-result-object v9

    .line 217
    .line 218
    .line 219
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 220
    move-result v9

    .line 221
    move v10, v2

    .line 222
    .line 223
    :goto_2
    if-ge v10, v9, :cond_2

    .line 224
    .line 225
    if-ne v7, v3, :cond_3

    .line 226
    .line 227
    new-instance p1, Lw7/u;

    .line 228
    float-to-int v0, v6

    .line 229
    .line 230
    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    move-result-object v0

    .line 233
    .line 234
    .line 235
    invoke-direct {p1, v8, v0}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    return-object p1

    .line 237
    .line 238
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 239
    .line 240
    add-int/lit8 v10, v10, 0x1

    .line 241
    goto :goto_2

    .line 242
    .line 243
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_5
    new-instance v0, Lw7/u;

    .line 248
    .line 249
    .line 250
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    move-result-object p1

    .line 252
    .line 253
    .line 254
    invoke-direct {v0, v1, p1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    return-object v0

    .line 256
    .line 257
    :cond_6
    :goto_3
    new-instance v0, Lw7/u;

    .line 258
    .line 259
    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    move-result-object p1

    .line 262
    .line 263
    .line 264
    invoke-direct {v0, v1, p1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    return-object v0
.end method

.method private static final onBindViewHolder$lambda$3(Lcom/narvii/video/interfaces/ITimelineClip;Lcom/narvii/video/widget/MediaTimeLineComponent;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineCallback$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTotalVisibleFrameCountForAdapter$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 12
    move-result v1

    .line 13
    .line 14
    mul-int/lit8 v1, v1, 0x2

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePostOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    return v0
.end method

.method public getItemViewType(I)I
    .locals 11

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_PRE_OFFSET:I

    .line 13
    return p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getFrameTimeByPosition(I)Lw7/u;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/video/interfaces/ITimelineClip;

    .line 24
    .line 25
    if-eqz v0, :cond_7

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->clipLengthComposition()Ljava/util/List;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 35
    move-result v2

    .line 36
    .line 37
    .line 38
    const-string/jumbo v3, "subList(...)"

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x1

    .line 41
    .line 42
    if-ne v2, v5, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRoundCompositionVisibleFrameCountList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->indexInScene()I

    .line 50
    move-result v6

    .line 51
    add-int/2addr v6, v5

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    check-cast v2, Ljava/lang/Iterable;

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lkotlin/collections/t;->M0(Ljava/lang/Iterable;)I

    .line 64
    move-result v2

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 68
    move-result v3

    .line 69
    add-int/2addr v2, v3

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 73
    move-result v1

    .line 74
    add-int/2addr v2, v1

    .line 75
    sub-int/2addr v2, v5

    .line 76
    .line 77
    if-ne p1, v2, :cond_1

    .line 78
    .line 79
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    .line 80
    .line 81
    .line 82
    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->indexInScene()I

    .line 83
    move-result v0

    .line 84
    add-int/2addr p1, v0

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_1
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_NORMAL:I

    .line 88
    :goto_0
    return p1

    .line 89
    .line 90
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->clipLengthComposition()Ljava/util/List;

    .line 97
    move-result-object v6

    .line 98
    .line 99
    .line 100
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object v6

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v7

    .line 106
    .line 107
    if-eqz v7, :cond_3

    .line 108
    .line 109
    .line 110
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object v7

    .line 112
    .line 113
    check-cast v7, Ljava/lang/Number;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 117
    move-result v7

    .line 118
    int-to-float v7, v7

    .line 119
    .line 120
    .line 121
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineItemFrameLengthInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)F

    .line 122
    move-result v8

    .line 123
    div-float/2addr v7, v8

    .line 124
    .line 125
    .line 126
    const v8, 0x3f7d70a4    # 0.99f

    .line 127
    add-float/2addr v7, v8

    .line 128
    float-to-int v7, v7

    .line 129
    .line 130
    .line 131
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v7

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    goto :goto_1

    .line 137
    .line 138
    .line 139
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 140
    move-result v6

    .line 141
    move v7, v4

    .line 142
    move v8, v7

    .line 143
    .line 144
    :goto_2
    if-ge v7, v6, :cond_7

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    move-result-object v9

    .line 149
    .line 150
    const-string v10, "get(...)"

    .line 151
    .line 152
    .line 153
    invoke-static {v9, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    check-cast v9, Ljava/lang/Number;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 159
    move-result v9

    .line 160
    add-int/2addr v8, v9

    .line 161
    .line 162
    .line 163
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 164
    move-result v9

    .line 165
    .line 166
    sub-int v9, p1, v9

    .line 167
    .line 168
    .line 169
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 170
    move-result v10

    .line 171
    sub-int/2addr v9, v10

    .line 172
    .line 173
    if-ge v9, v8, :cond_6

    .line 174
    .line 175
    add-int/lit8 v6, v7, 0x1

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v4, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 179
    move-result-object v4

    .line 180
    .line 181
    .line 182
    invoke-static {v4, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    check-cast v4, Ljava/lang/Iterable;

    .line 185
    .line 186
    .line 187
    invoke-static {v4}, Lkotlin/collections/t;->M0(Ljava/lang/Iterable;)I

    .line 188
    move-result v3

    .line 189
    .line 190
    .line 191
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 192
    move-result v4

    .line 193
    add-int/2addr v3, v4

    .line 194
    .line 195
    .line 196
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 197
    move-result v1

    .line 198
    add-int/2addr v3, v1

    .line 199
    sub-int/2addr v3, v5

    .line 200
    .line 201
    if-ne p1, v3, :cond_5

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 205
    move-result p1

    .line 206
    sub-int/2addr p1, v5

    .line 207
    .line 208
    if-ne v7, p1, :cond_4

    .line 209
    .line 210
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    .line 211
    .line 212
    .line 213
    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->indexInScene()I

    .line 214
    move-result v0

    .line 215
    add-int/2addr p1, v0

    .line 216
    goto :goto_3

    .line 217
    .line 218
    :cond_4
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_FAKE_TAIL_PREFIX:I

    .line 219
    add-int/2addr p1, v7

    .line 220
    goto :goto_3

    .line 221
    .line 222
    :cond_5
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_NORMAL:I

    .line 223
    :goto_3
    return p1

    .line 224
    .line 225
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 226
    goto :goto_2

    .line 227
    .line 228
    :cond_7
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_NORMAL:I

    .line 229
    return p1
.end method

.method public final getShowAdditionalBorderAtTail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showAdditionalBorderAtTail:Z

    return v0
.end method

.method public final getShowItemBorder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showItemBorder:Z

    return v0
.end method

.method public final getShowRoundCorner()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showRoundCorner:Z

    return v0
.end method

.method public final getTailFrameItemInfo(I)Lw7/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lw7/u<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lw7/u;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRoundCompositionVisibleFrameCountList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    add-int/lit8 p1, p1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "subList(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast p1, Ljava/lang/Iterable;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/collections/t;->M0(Ljava/lang/Iterable;)I

    .line 27
    move-result p1

    .line 28
    .line 29
    add-int/lit8 p1, p1, -0x1

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    .line 39
    move-result v1

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p1, v1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->onBindViewHolder(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;I)V
    .locals 11
    .param p1    # Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v2, "holder"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 2
    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v2

    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v3

    add-int/2addr v2, v3

    if-lt p2, v2, :cond_c

    invoke-virtual {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePostOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lt p2, v2, :cond_0

    goto/16 :goto_9

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getFrameTimeByPosition(I)Lw7/u;

    move-result-object v2

    invoke-virtual {v2}, Lw7/u;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/interfaces/ITimelineClip;

    invoke-virtual {v2}, Lw7/u;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 4
    new-instance v5, Lcom/narvii/video/widget/p;

    invoke-direct {v5, v3, v4}, Lcom/narvii/video/widget/p;-><init>(Lcom/narvii/video/interfaces/ITimelineClip;Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    invoke-virtual {p1, v5}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->setOnItemClickedListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getItemViewType(I)I

    move-result v4

    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 6
    invoke-static {v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v5

    iget-object v6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v6}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x0

    const/16 v7, 0x64

    const/4 v8, 0x1

    if-eq p2, v5, :cond_2

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {p0, v5}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getItemViewType(I)I

    move-result v5

    div-int/2addr v5, v7

    mul-int/2addr v5, v7

    iget v9, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    if-ne v5, v9, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v8

    .line 7
    :goto_1
    div-int/lit8 v9, v4, 0x64

    mul-int/2addr v9, v7

    iget v10, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    if-ne v9, v10, :cond_3

    move v9, v8

    goto :goto_2

    :cond_3
    move v9, v6

    :goto_2
    if-eqz v9, :cond_4

    .line 8
    rem-int/2addr v4, v10

    iget-object v10, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v10}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMediaClipList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v8

    if-ne v4, v10, :cond_4

    move v4, v8

    goto :goto_3

    :cond_4
    move v4, v6

    :goto_3
    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 9
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getRealTailFrameWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v1, v4

    :goto_4
    move v8, v1

    goto :goto_5

    :cond_5
    add-int/lit8 v1, p2, 0x1

    .line 10
    invoke-virtual {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getItemCount()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 11
    invoke-virtual {p0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getItemViewType(I)I

    move-result v4

    div-int/2addr v4, v7

    mul-int/2addr v4, v7

    iget v10, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    if-ne v4, v10, :cond_6

    .line 12
    invoke-virtual {p0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getItemViewType(I)I

    move-result v1

    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    rem-int/2addr v1, v4

    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMediaClipList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v8

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 13
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    move-result v1

    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getRealTailFrameWidth()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    goto :goto_4

    :cond_6
    const/high16 v1, -0x3b860000    # -1000.0f

    goto :goto_4

    :goto_5
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 14
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getDataType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    if-eq v1, v7, :cond_7

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getDataType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    const/16 v4, 0x68

    if-eq v1, v4, :cond_7

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$isForAudioWave$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_6

    .line 15
    :cond_7
    instance-of v1, v3, Lcom/narvii/video/interfaces/IAVClipInfoPack;

    if-eqz v1, :cond_b

    .line 16
    move-object v1, v3

    check-cast v1, Lcom/narvii/video/interfaces/IAVClipInfoPack;

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->hasInvisibleFrames()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->trimStartInMsWithSpeed()I

    move-result v6

    :cond_8
    add-int/2addr v2, v6

    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 17
    invoke-virtual {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    move-result v3

    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->itemHeight:I

    move-object v0, p1

    move v6, v9

    move v7, v8

    .line 18
    invoke-virtual/range {v0 .. v7}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->retrieveFrame(Lcom/narvii/video/interfaces/IAVClipInfoPack;IIIZZF)V

    goto :goto_8

    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 19
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getDataType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_audio_frame_color:I

    goto :goto_7

    :pswitch_0
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_sticker_frame_color:I

    goto :goto_7

    :pswitch_1
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_caption_frame_color:I

    goto :goto_7

    .line 20
    :pswitch_2
    instance-of v1, v3, Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v1, :cond_a

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    iget-boolean v1, v3, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    if-eqz v1, :cond_a

    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_sfx_frame_color:I

    goto :goto_7

    :cond_a
    sget v1, Lcom/narvii/mediaeditor/R$color;->media_timeline_audio_frame_color:I

    .line 21
    :goto_7
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 22
    invoke-virtual {p1, v2, v5, v9, v8}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->setDrawableFrame(Landroid/graphics/drawable/Drawable;ZZF)V

    :cond_b
    :goto_8
    return-void

    :cond_c
    :goto_9
    const/4 v1, -0x1

    .line 23
    invoke-virtual {p1, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->setTag(I)V

    .line 24
    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->setBlankFrame()V

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->setOnItemClickedListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p1, v1}, Lcom/narvii/mediaeditor/databinding/ItemMediaRetrieverBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/ItemMediaRetrieverBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    div-int/lit8 v0, p2, 0x64

    mul-int/lit8 v0, v0, 0x64

    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->VIEW_TYPE_TAIL_PREFIX:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    rem-int/2addr p2, v2

    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMediaClipList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne p2, v2, :cond_1

    move v1, v3

    :cond_1
    if-eqz v1, :cond_2

    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 6
    invoke-virtual {p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getRealTailFrameWidth()I

    move-result p2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 7
    invoke-virtual {p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    move-result p2

    .line 8
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/mediaeditor/databinding/ItemMediaRetrieverBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 10
    iput p2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    iget-boolean p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showAdditionalBorderAtTail:Z

    if-eqz p2, :cond_3

    .line 12
    iget-object p2, p1, Lcom/narvii/mediaeditor/databinding/ItemMediaRetrieverBinding;->frameMask:Lcom/narvii/video/widget/FrameItemMaskView;

    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFrameCellWidth()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    :cond_3
    new-instance p2, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    iget-boolean v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showItemBorder:Z

    iget-boolean v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->showRoundCorner:Z

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;Lcom/narvii/mediaeditor/databinding/ItemMediaRetrieverBinding;ZZ)V

    .line 17
    invoke-virtual {p1}, Lcom/narvii/mediaeditor/databinding/ItemMediaRetrieverBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final refreshVisibleArea()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLine$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/widget/HorizontalRecyclerView;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    .line 17
    :goto_0
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    move-object v1, v0

    .line 21
    .line 22
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 23
    .line 24
    :cond_1
    if-eqz v1, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 32
    move-result v2

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    :goto_1
    if-ge v0, v2, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    instance-of v4, v4, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    .line 49
    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    const-string v4, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent.TimeLineItemHolder"

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    check-cast v3, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v3, v0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->onBindViewHolder(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;I)V

    .line 65
    .line 66
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    return-void
.end method
