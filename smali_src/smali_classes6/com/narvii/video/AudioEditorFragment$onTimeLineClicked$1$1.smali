.class public final Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/AudioEditorFragment;->onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/narvii/video/model/AVClipInfoPack;

.field final synthetic this$0:Lcom/narvii/video/AudioEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/AudioEditorFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$1$1;->$it:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$1$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onVolumeChanged(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$1$1;->$it:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    int-to-float p1, p1

    .line 4
    .line 5
    const/high16 v1, 0x42c80000    # 100.0f

    .line 6
    div-float/2addr p1, v1

    .line 7
    .line 8
    iput p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$1$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$1$1;->$it:Lcom/narvii/video/model/AVClipInfoPack;

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setVolume(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    .line 21
    return-void
.end method
