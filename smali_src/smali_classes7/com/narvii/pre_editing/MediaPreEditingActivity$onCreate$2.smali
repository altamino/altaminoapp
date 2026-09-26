.class public final Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/MediaPreEditingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBufferingEnd()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getBinding$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "binding"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    :cond_0
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;->videoProgressView:Lcom/narvii/widget/SpinningView;

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    return-void
.end method

.method public onBufferingStart()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getBinding$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "binding"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    :cond_0
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/ActivityMediaPreEditingBinding;->videoProgressView:Lcom/narvii/widget/SpinningView;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    return-void
.end method

.method public onComplete()V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    const-string v3, "timeLineComponent"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 15
    move-object v1, v2

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->getCutterStartPosition()J

    .line 19
    move-result-wide v4

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v2, v1

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v2}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->getCutterEndPosition()J

    .line 36
    move-result-wide v6

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    xor-int/lit8 v8, v1, 0x1

    .line 43
    const/4 v9, 0x1

    .line 44
    move-wide v1, v4

    .line 45
    move-wide v3, v6

    .line 46
    move v5, v8

    .line 47
    move v6, v9

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->onFrameLocatedDuringMove(JJZZ)V

    .line 51
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "msg"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$showError(Lcom/narvii/pre_editing/MediaPreEditingActivity;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public onPlayPauseStateChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$updatePlayState(Lcom/narvii/pre_editing/MediaPreEditingActivity;Z)V

    .line 6
    return-void
.end method

.method public onPrepared()V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getPlayer$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "player"

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 17
    move-object v1, v3

    .line 18
    .line 19
    :cond_0
    const/16 v4, 0x32

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v4}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->pause(I)V

    .line 23
    .line 24
    iget-object v1, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getPreEditVideoUrl$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    return-void

    .line 32
    .line 33
    :cond_1
    iget-object v1, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getPreEditVideoUrl$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/bean/PreEditVideoUrl;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->getThumbnailVideoUrl()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    :cond_2
    const-string v1, ""

    .line 48
    .line 49
    :cond_3
    iget-object v4, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 50
    .line 51
    .line 52
    invoke-static {v4}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getPlayer$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    if-nez v4, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 59
    move-object v4, v3

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-virtual {v4}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->getDuration()J

    .line 63
    move-result-wide v6

    .line 64
    .line 65
    iget-object v2, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getRetriever$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/PreEditFrameRetriever;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->initRetriever(Ljava/lang/String;)V

    .line 73
    .line 74
    iget-object v1, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    const-string v2, "maxOutputTime"

    .line 81
    .line 82
    .line 83
    const-wide/32 v4, 0xea60

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 87
    move-result-wide v8

    .line 88
    .line 89
    iget-object v1, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    const-string v2, "minOutputTime"

    .line 96
    .line 97
    const-wide/16 v4, 0x3a98

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 101
    move-result-wide v10

    .line 102
    .line 103
    iget-object v1, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    const-string v2, "trimStartTime"

    .line 110
    .line 111
    const-wide/16 v4, 0x0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 115
    move-result-wide v12

    .line 116
    .line 117
    iget-object v1, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    const-string v2, "trimEndTime"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 127
    move-result-wide v14

    .line 128
    .line 129
    iget-object v1, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    if-nez v1, :cond_5

    .line 136
    .line 137
    const-string v1, "timeLineComponent"

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 141
    move-object v5, v3

    .line 142
    goto :goto_0

    .line 143
    :cond_5
    move-object v5, v1

    .line 144
    .line 145
    :goto_0
    iget-object v1, v0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getRetriever$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/PreEditFrameRetriever;

    .line 149
    move-result-object v17

    .line 150
    .line 151
    move-object/from16 v16, v1

    .line 152
    .line 153
    .line 154
    invoke-virtual/range {v5 .. v17}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->initTimeLine(JJJJJLcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;Lcom/narvii/pre_editing/PreEditFrameRetriever;)V

    .line 155
    return-void
.end method

.method public onProgressUpdate(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$onCreate$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTimeLineComponent$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "timeLineComponent"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->updatePlaybackTime(J)V

    .line 18
    return-void
.end method
