.class Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/ScenesBackgroundMusicFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$000(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$000(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->setBackToBeginningWhenStop(Z)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$000(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$100(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/model/SceneDraft;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->setSceneDraft(Lcom/narvii/scene/model/SceneDraft;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$200(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$200(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iget v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 51
    int-to-long v1, v1

    .line 52
    .line 53
    iget-object v3, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->getEditDuration()J

    .line 57
    move-result-wide v3

    .line 58
    add-long/2addr v1, v3

    .line 59
    long-to-int v1, v1

    .line 60
    .line 61
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$400(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$300(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/video/services/FrameRetrieverManager;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/EditSceneBGMLayout;->init(Lcom/narvii/video/services/FrameRetrieverManager;)V

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$400(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    iget-object v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$200(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    iget-object v2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->getEditDuration()J

    .line 94
    move-result-wide v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/scene/view/EditSceneBGMLayout;->setBGMusicClip(Lcom/narvii/video/model/AVClipInfoPack;J)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$500()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    const-string v2, "editSceneBGMLayout init >>> duration : "

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->getEditDuration()J

    .line 117
    move-result-wide v2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method
