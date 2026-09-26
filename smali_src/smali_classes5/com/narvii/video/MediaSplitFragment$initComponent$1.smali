.class public final Lcom/narvii/video/MediaSplitFragment$initComponent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/MediaSplitFragment;->initComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/MediaSplitFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/MediaSplitFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

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
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 12
    return-void
.end method

.method public onOptionDone(I)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result p1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/video/MediaSplitFragment;->access$getOrgClipCount$p(Lcom/narvii/video/MediaSplitFragment;)I

    .line 27
    move-result v0

    .line 28
    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v2, "videoClipList"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 84
    .line 85
    :cond_2
    const-string p1, "activeClipIndex"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInClip()I

    .line 98
    move-result p1

    .line 99
    .line 100
    const-string v1, "inClipPlaybackTime"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    .line 106
    const/4 v1, -0x1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 110
    .line 111
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 115
    :goto_1
    return-void
.end method
