.class public final Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "AudioEditorFragment.kt"

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

    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$$inlined$let$lambda$1;->$it:Lcom/narvii/video/model/AVClipInfoPack;

    iput-object p2, p0, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(I)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$$inlined$let$lambda$1;->$it:Lcom/narvii/video/model/AVClipInfoPack;

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    iput p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 305
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$$inlined$let$lambda$1;->$it:Lcom/narvii/video/model/AVClipInfoPack;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setVolume(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    return-void
.end method
