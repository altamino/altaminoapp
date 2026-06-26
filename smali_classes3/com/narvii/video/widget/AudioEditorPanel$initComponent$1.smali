.class public final Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1;
.super Ljava/lang/Object;
.source "AudioEditorPanel.kt"

# interfaces
.implements Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/AudioEditorPanel;->initComponent(Lcom/narvii/video/model/AVClipInfoPack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $audioClip:Lcom/narvii/video/model/AVClipInfoPack;

.field final synthetic this$0:Lcom/narvii/video/widget/AudioEditorPanel;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/AudioEditorPanel;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ")V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    iput-object p2, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1;->$audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(I)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1;->$audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    iput p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 112
    iget-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    invoke-static {p1}, Lcom/narvii/video/widget/AudioEditorPanel;->access$getAudioPlayer$p(Lcom/narvii/video/widget/AudioEditorPanel;)Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1;->$audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method
