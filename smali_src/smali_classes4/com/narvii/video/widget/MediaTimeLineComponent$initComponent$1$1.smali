.class public final Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent;->initComponent(ZZZZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/narvii/widget/HorizontalRecyclerView;

.field final synthetic this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent;Lcom/narvii/widget/HorizontalRecyclerView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->$it:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "recyclerView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->setCurRecyclerViewState(I)V

    .line 11
    .line 12
    if-nez p2, :cond_d

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLine$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/widget/HorizontalRecyclerView;

    .line 18
    move-result-object p1

    .line 19
    const/4 p2, 0x0

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p1, p2

    .line 28
    .line 29
    :goto_0
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object p1, p2

    .line 36
    :goto_1
    const/4 v0, 0x0

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 42
    move-result p1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move p1, v0

    .line 45
    .line 46
    :goto_2
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLine$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/widget/HorizontalRecyclerView;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 62
    move-result v1

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    move v1, v0

    .line 65
    :goto_3
    const/4 v2, 0x1

    .line 66
    sub-int/2addr v1, v2

    .line 67
    .line 68
    if-ne p1, v1, :cond_4

    .line 69
    move p1, v2

    .line 70
    goto :goto_4

    .line 71
    :cond_4
    move p1, v0

    .line 72
    .line 73
    :goto_4
    if-eqz p1, :cond_5

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 79
    move-result v1

    .line 80
    .line 81
    const/16 v3, 0xca

    .line 82
    .line 83
    if-ne v1, v3, :cond_5

    .line 84
    .line 85
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getMediaLengthInMs()I

    .line 89
    move-result v1

    .line 90
    goto :goto_5

    .line 91
    .line 92
    :cond_5
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstMediaFrameTime(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 96
    move-result v1

    .line 97
    .line 98
    :goto_5
    if-eqz v1, :cond_6

    .line 99
    .line 100
    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 101
    .line 102
    .line 103
    invoke-static {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 104
    move-result v3

    .line 105
    .line 106
    if-ne v1, v3, :cond_6

    .line 107
    .line 108
    if-eqz p1, :cond_d

    .line 109
    .line 110
    :cond_6
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 114
    move-result p1

    .line 115
    .line 116
    sub-int p1, v1, p1

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 120
    move-result p1

    .line 121
    .line 122
    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 123
    .line 124
    .line 125
    invoke-static {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMaxVisibleSectionIntervalInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 126
    move-result v3

    .line 127
    .line 128
    if-lt p1, v3, :cond_7

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/services/FrameRetrieverManager;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    .line 140
    .line 141
    :cond_7
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->$it:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    instance-of v3, p1, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    .line 148
    .line 149
    if-eqz v3, :cond_8

    .line 150
    .line 151
    check-cast p1, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    .line 152
    goto :goto_6

    .line 153
    :cond_8
    move-object p1, p2

    .line 154
    .line 155
    :goto_6
    if-eqz p1, :cond_9

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->refreshVisibleArea()V

    .line 159
    .line 160
    :cond_9
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 161
    .line 162
    .line 163
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRetrieveCutter$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaRetrieveController;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    if-eqz p1, :cond_a

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v1}, Lcom/narvii/video/widget/MediaRetrieveController;->updateMediaSectionStartTime(I)V

    .line 170
    .line 171
    :cond_a
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineCallback$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    if-eqz p1, :cond_b

    .line 178
    .line 179
    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 180
    .line 181
    .line 182
    invoke-static {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 183
    move-result v3

    .line 184
    add-int/2addr v3, v1

    .line 185
    const/4 v4, -0x1

    .line 186
    .line 187
    .line 188
    invoke-interface {p1, v3, v4}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onFrameLocatedDuringMove(II)V

    .line 189
    .line 190
    :cond_b
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 191
    .line 192
    .line 193
    invoke-static {p1, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$setCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V

    .line 194
    .line 195
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 196
    .line 197
    .line 198
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineCallback$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    if-eqz p1, :cond_c

    .line 202
    .line 203
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 204
    .line 205
    .line 206
    invoke-static {v1, v0, v2, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    .line 207
    move-result p2

    .line 208
    .line 209
    .line 210
    invoke-interface {p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onTimeLineScrolledOffsetChanged(I)V

    .line 211
    .line 212
    :cond_c
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 213
    .line 214
    .line 215
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 216
    move-result p2

    .line 217
    .line 218
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 219
    .line 220
    .line 221
    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 222
    move-result v0

    .line 223
    add-int/2addr p2, v0

    .line 224
    .line 225
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 226
    .line 227
    .line 228
    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 229
    move-result v0

    .line 230
    .line 231
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 232
    .line 233
    .line 234
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerEndTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 235
    move-result v1

    .line 236
    add-int/2addr v0, v1

    .line 237
    const/4 v1, 0x3

    .line 238
    .line 239
    .line 240
    invoke-static {p1, p2, v0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$replay(Lcom/narvii/video/widget/MediaTimeLineComponent;III)V

    .line 241
    :cond_d
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 11
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "recyclerView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getCurRecyclerViewState()I

    .line 16
    move-result p1

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstMediaFrameTime(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 24
    move-result p1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 30
    move-result p2

    .line 31
    sub-int/2addr p1, p2

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 35
    move-result p1

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMaxVisibleSectionIntervalInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 41
    move-result p2

    .line 42
    .line 43
    if-lt p1, p2, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/services/FrameRetrieverManager;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    .line 55
    :cond_1
    return-void

    .line 56
    .line 57
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLine$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/widget/HorizontalRecyclerView;

    .line 61
    move-result-object p1

    .line 62
    const/4 p2, 0x0

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 68
    move-result-object p1

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    move-object p1, p2

    .line 71
    .line 72
    :goto_0
    instance-of p3, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 73
    .line 74
    if-eqz p3, :cond_4

    .line 75
    move-object p2, p1

    .line 76
    .line 77
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 78
    :cond_4
    const/4 p1, 0x0

    .line 79
    .line 80
    if-eqz p2, :cond_5

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 84
    move-result p2

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    move p2, p1

    .line 87
    .line 88
    :goto_1
    iget-object p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 89
    .line 90
    .line 91
    invoke-static {p3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLine$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/widget/HorizontalRecyclerView;

    .line 92
    move-result-object p3

    .line 93
    .line 94
    if-eqz p3, :cond_6

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 98
    move-result-object p3

    .line 99
    .line 100
    if-eqz p3, :cond_6

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 104
    move-result p1

    .line 105
    .line 106
    :cond_6
    add-int/lit8 p1, p1, -0x1

    .line 107
    .line 108
    if-ne p2, p1, :cond_7

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 114
    move-result p1

    .line 115
    .line 116
    const/16 p2, 0xca

    .line 117
    .line 118
    if-ne p1, p2, :cond_7

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getMediaLengthInMs()I

    .line 124
    move-result p1

    .line 125
    goto :goto_2

    .line 126
    .line 127
    :cond_7
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstMediaFrameTime(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 131
    move-result p1

    .line 132
    .line 133
    :goto_2
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 134
    .line 135
    .line 136
    invoke-static {p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRetrieveCutter$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaRetrieveController;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    if-eqz p2, :cond_8

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, p1}, Lcom/narvii/video/widget/MediaRetrieveController;->updateMediaSectionStartTime(I)V

    .line 143
    .line 144
    :cond_8
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 145
    .line 146
    .line 147
    invoke-static {p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineCallback$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 148
    move-result-object p2

    .line 149
    .line 150
    if-eqz p2, :cond_9

    .line 151
    .line 152
    iget-object p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 153
    .line 154
    .line 155
    invoke-static {p3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 156
    move-result p3

    .line 157
    add-int/2addr p3, p1

    .line 158
    const/4 v0, -0x1

    .line 159
    .line 160
    .line 161
    invoke-interface {p2, p3, v0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onFrameLocatedDuringMove(II)V

    .line 162
    .line 163
    :cond_9
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 164
    .line 165
    .line 166
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 167
    move-result p2

    .line 168
    .line 169
    add-int v2, p1, p2

    .line 170
    const/4 v3, 0x0

    .line 171
    const/4 v4, 0x0

    .line 172
    const/4 v5, 0x0

    .line 173
    const/4 v6, 0x0

    .line 174
    const/4 v7, 0x0

    .line 175
    const/4 v8, 0x1

    .line 176
    .line 177
    const/16 v9, 0x3e

    .line 178
    const/4 v10, 0x0

    .line 179
    .line 180
    .line 181
    invoke-static/range {v1 .. v10}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 182
    return-void
.end method
