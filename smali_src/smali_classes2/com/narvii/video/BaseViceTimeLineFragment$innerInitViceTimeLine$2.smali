.class public final Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseViceTimeLineFragment;->innerInitViceTimeLine(IIZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $trackIndex:I

.field final synthetic $viceTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

.field final synthetic $viewIndex:I

.field private scrolledDx:I

.field final synthetic this$0:Lcom/narvii/video/BaseViceTimeLineFragment;


# direct methods
.method constructor <init>(ILcom/narvii/video/BaseViceTimeLineFragment;Lcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$trackIndex:I

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$viceTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$viewIndex:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final getScrolledDx()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->scrolledDx:I

    return v0
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 10
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
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "view"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const/16 v0, 0x2d

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string v0, "onScrollStateChanged"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    iget p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$trackIndex:I

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->access$getClipListForViceTracks$p(Lcom/narvii/video/BaseViceTimeLineFragment;)Ljava/util/ArrayList;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    move-result v0

    .line 46
    .line 47
    if-lt p1, v0, :cond_0

    .line 48
    return-void

    .line 49
    :cond_0
    const/4 p1, 0x2

    .line 50
    const/4 v0, 0x0

    .line 51
    const/4 v1, 0x1

    .line 52
    const/4 v2, 0x0

    .line 53
    .line 54
    if-nez p2, :cond_4

    .line 55
    .line 56
    iget v3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->scrolledDx:I

    .line 57
    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    iget-object p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    .line 69
    invoke-static {p2, v2, v1, v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    .line 70
    move-result p2

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move p2, v2

    .line 73
    .line 74
    :goto_0
    iget-object v3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$viceTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v2, v1, v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    .line 78
    move-result v1

    .line 79
    .line 80
    iget-object v3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$viceTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getAdditionalFramePreOffsetDx()I

    .line 84
    move-result v3

    .line 85
    sub-int/2addr v1, v3

    .line 86
    .line 87
    iget-object v3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 91
    move-result-object v4

    .line 92
    .line 93
    if-eqz v4, :cond_2

    .line 94
    sub-int/2addr p2, v1

    .line 95
    .line 96
    .line 97
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 98
    move-result v5

    .line 99
    const/4 v6, 0x0

    .line 100
    const/4 v7, 0x0

    .line 101
    const/4 v8, 0x2

    .line 102
    const/4 v9, 0x0

    .line 103
    .line 104
    .line 105
    invoke-static/range {v4 .. v9}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getSectionDurationInMs$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I

    .line 106
    move-result p2

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    move p2, v2

    .line 109
    .line 110
    :goto_1
    iget-object v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Lcom/narvii/video/BaseViceTimeLineFragment;->access$getClipListForViceTracks$p(Lcom/narvii/video/BaseViceTimeLineFragment;)Ljava/util/ArrayList;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    iget v3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$trackIndex:I

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    check-cast v1, Lcom/narvii/video/model/BaseClipInfoPack;

    .line 123
    .line 124
    iput p2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 125
    .line 126
    iget-object p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    .line 127
    .line 128
    iget v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$trackIndex:I

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v1}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackOffsetChanged(I)V

    .line 132
    .line 133
    iget-object p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    .line 137
    move-result p2

    .line 138
    .line 139
    if-eqz p2, :cond_3

    .line 140
    .line 141
    iget-object p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    .line 142
    .line 143
    .line 144
    invoke-static {p2, v2, v2, p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 145
    .line 146
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeSeekStatus(Z)V

    .line 150
    goto :goto_2

    .line 151
    .line 152
    :cond_4
    if-lez p2, :cond_5

    .line 153
    .line 154
    iget-object v3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    .line 155
    .line 156
    .line 157
    invoke-static {v3, v1, v2, p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 158
    .line 159
    if-ne p2, v1, :cond_5

    .line 160
    .line 161
    iput v2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->scrolledDx:I

    .line 162
    :cond_5
    :goto_2
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
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
    .line 8
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 9
    .line 10
    iget p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$viewIndex:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->access$getClipListForViceTracks$p(Lcom/narvii/video/BaseViceTimeLineFragment;)Ljava/util/ArrayList;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-lt p1, v0, :cond_0

    .line 23
    return-void

    .line 24
    .line 25
    :cond_0
    if-nez p2, :cond_1

    .line 26
    .line 27
    if-nez p3, :cond_1

    .line 28
    return-void

    .line 29
    .line 30
    :cond_1
    iget p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->scrolledDx:I

    .line 31
    add-int/2addr p1, p2

    .line 32
    .line 33
    iput p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->scrolledDx:I

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    .line 36
    .line 37
    iget p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$viewIndex:I

    .line 38
    const/4 p3, 0x2

    .line 39
    const/4 v0, 0x0

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2, v1, p3, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackScrolled$default(Lcom/narvii/video/BaseViceTimeLineFragment;IZILjava/lang/Object;)V

    .line 44
    return-void
.end method

.method public final setScrolledDx(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->scrolledDx:I

    return-void
.end method
