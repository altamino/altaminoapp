.class public final Lcom/narvii/video/MediaSplitFragment$initComponent$1;
.super Ljava/lang/Object;
.source "MediaSplitFragment.kt"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMusicSelected()V
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener$DefaultImpls;->onAddMusicSelected(Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    return-void
.end method

.method public onOptionCancel(I)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 60
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onOptionDone(I)V
    .locals 3

    .line 64
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 65
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    invoke-static {v1}, Lcom/narvii/video/MediaSplitFragment;->access$getOrgClipCount$p(Lcom/narvii/video/MediaSplitFragment;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 67
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_1

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    goto :goto_0

    .line 73
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "videoClipList"

    .line 74
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object p1

    if-eqz p1, :cond_2

    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    :cond_2
    const-string p1, "activeClipIndex"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInClip()I

    move-result p1

    const-string v0, "inClipPlaybackTime"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 79
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/MediaSplitFragment$initComponent$1;->this$0:Lcom/narvii/video/MediaSplitFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :goto_1
    return-void
.end method
