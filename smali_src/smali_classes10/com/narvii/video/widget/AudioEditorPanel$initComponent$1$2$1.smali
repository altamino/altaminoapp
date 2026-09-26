.class public final Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/AudioEditorPanel;->initComponent(Lcom/narvii/video/model/AVClipInfoPack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/widget/AudioEditorPanel;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/AudioEditorPanel;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1$2$1;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAudioCompleted()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener$DefaultImpls;->onAudioCompleted(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V

    .line 4
    return-void
.end method

.method public onAudioError()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener$DefaultImpls;->onAudioError(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V

    .line 4
    return-void
.end method

.method public onAudioPrepared()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener$DefaultImpls;->onAudioPrepared(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1$2$1;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/video/widget/AudioEditorPanel;->access$onPlaybackStatusChanged(Lcom/narvii/video/widget/AudioEditorPanel;Z)V

    .line 10
    return-void
.end method
