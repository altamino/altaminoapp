.class public final Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2$1;
.super Ljava/lang/Object;
.source "AudioEditorPanel.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2$1;->this$0:Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioCompleted()V
    .locals 0

    .line 124
    invoke-static {p0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener$DefaultImpls;->onAudioCompleted(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V

    return-void
.end method

.method public onAudioError()V
    .locals 0

    .line 124
    invoke-static {p0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener$DefaultImpls;->onAudioError(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V

    return-void
.end method

.method public onAudioPrepared()V
    .locals 2

    .line 126
    invoke-static {p0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener$DefaultImpls;->onAudioPrepared(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V

    .line 127
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2$1;->this$0:Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;

    iget-object v0, v0, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;->this$0:Lcom/narvii/video/widget/AudioEditorPanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/video/widget/AudioEditorPanel;->access$onPlaybackStatusChanged(Lcom/narvii/video/widget/AudioEditorPanel;Z)V

    return-void
.end method
