.class public final Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/AudioEditorFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/AudioEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/AudioEditorFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAddMusicSelected()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener$DefaultImpls;->onAddMusicSelected(Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    .line 4
    return-void
.end method

.method public onOptionCancel(I)V
    .locals 6

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$getAudioEditorPanel$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/widget/AudioEditorPanel;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "audioEditorPanel"

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 15
    move-object p1, v0

    .line 16
    .line 17
    :cond_0
    const/16 v1, 0x8

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$getAudioWaveRetrieverManager$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/services/FrameRetrieverManager;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v1, v2, v0}, Lcom/narvii/video/services/FrameRetrieverManager;->release$default(Lcom/narvii/video/services/FrameRetrieverManager;ZILjava/lang/Object;)V

    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result p1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/narvii/video/AudioEditorFragment;->access$getSelectedAudioTrackIndex$p(Lcom/narvii/video/AudioEditorFragment;)I

    .line 53
    move-result v0

    .line 54
    .line 55
    if-ltz v0, :cond_2

    .line 56
    .line 57
    if-ge v0, p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Lcom/narvii/video/AudioEditorFragment;->access$getSelectedAudioTrackIndex$p(Lcom/narvii/video/AudioEditorFragment;)I

    .line 79
    move-result v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    const-string v1, "get(...)"

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->removeAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)Ljava/util/ArrayList;

    .line 94
    .line 95
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$updateAddMusicButton(Lcom/narvii/video/AudioEditorFragment;)V

    .line 99
    .line 100
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 104
    move-result p1

    .line 105
    .line 106
    new-instance v2, Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    move-result v1

    .line 128
    .line 129
    if-eqz v1, :cond_3

    .line 130
    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 136
    .line 137
    iget v1, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 138
    .line 139
    sub-int v1, p1, v1

    .line 140
    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    goto :goto_0

    .line 148
    .line 149
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 150
    const/4 v1, 0x1

    .line 151
    const/4 v3, 0x0

    .line 152
    const/4 v4, 0x4

    .line 153
    const/4 v5, 0x0

    .line 154
    .line 155
    .line 156
    invoke-static/range {v0 .. v5}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel$default(Lcom/narvii/video/BaseViceTimeLineFragment;ZLjava/util/List;ZILjava/lang/Object;)V

    .line 157
    return-void
.end method

.method public onOptionDone(I)V
    .locals 8

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$getAudioEditorPanel$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/widget/AudioEditorPanel;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "audioEditorPanel"

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 15
    move-object p1, v0

    .line 16
    .line 17
    :cond_0
    const/16 v1, 0x8

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/video/AudioEditorFragment;->access$getAudioWaveRetrieverManager$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/services/FrameRetrieverManager;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v1, v2, v0}, Lcom/narvii/video/services/FrameRetrieverManager;->release$default(Lcom/narvii/video/services/FrameRetrieverManager;ZILjava/lang/Object;)V

    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 39
    move-result p1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Lcom/narvii/video/AudioEditorFragment;->access$getSelectedAudioTrackIndex$p(Lcom/narvii/video/AudioEditorFragment;)I

    .line 55
    move-result v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    const-string v1, "get(...)"

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 70
    move-result v1

    .line 71
    .line 72
    iput v1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 73
    .line 74
    iget-object v1, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetAudioClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 82
    .line 83
    new-instance v4, Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v1

    .line 105
    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 113
    .line 114
    iget v1, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 115
    .line 116
    sub-int v1, p1, v1

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    goto :goto_0

    .line 125
    .line 126
    :cond_2
    iget-object v2, p0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 127
    const/4 v3, 0x1

    .line 128
    const/4 v5, 0x0

    .line 129
    const/4 v6, 0x4

    .line 130
    const/4 v7, 0x0

    .line 131
    .line 132
    .line 133
    invoke-static/range {v2 .. v7}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel$default(Lcom/narvii/video/BaseViceTimeLineFragment;ZLjava/util/List;ZILjava/lang/Object;)V

    .line 134
    return-void
.end method
