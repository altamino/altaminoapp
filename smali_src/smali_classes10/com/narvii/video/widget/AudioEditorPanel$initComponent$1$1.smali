.class public final Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
.method constructor <init>(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/widget/AudioEditorPanel;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1$1;->$audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1$1;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

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
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1$1;->$audioClip:Lcom/narvii/video/model/AVClipInfoPack;

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
    iget-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1$1;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/video/widget/AudioEditorPanel;->access$getAudioPlayer$p(Lcom/narvii/video/widget/AudioEditorPanel;)Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1$1;->$audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 19
    .line 20
    iget v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->setVolume(F)V

    .line 24
    :cond_0
    return-void
.end method
