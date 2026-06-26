.class Lcom/narvii/chat/audio/AudioRecordLayout$1;
.super Ljava/lang/Object;
.source "AudioRecordLayout.java"

# interfaces
.implements Lcom/narvii/media/IMediaRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/audio/AudioRecordLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/audio/AudioRecordLayout;


# direct methods
.method constructor <init>(Lcom/narvii/chat/audio/AudioRecordLayout;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordFinish(Landroid/net/Uri;JZ)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object v1, v0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    if-eqz v1, :cond_1

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    .line 162
    iput-boolean p4, v0, Lcom/narvii/chat/audio/AudioRecordLayout;->beyondMaxDuration:Z

    .line 163
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/RecordInfoListener;

    .line 164
    invoke-interface {v0}, Lcom/narvii/chat/RecordInfoListener;->onBeyondMaxDuration()V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p4, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object p4, p4, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/RecordInfoListener;

    .line 168
    invoke-interface {v0}, Lcom/narvii/chat/RecordInfoListener;->onRecordEnd()V

    goto :goto_1

    .line 173
    :cond_1
    iget-object p4, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object p4, p4, Lcom/narvii/chat/audio/AudioRecordLayout;->recordFinishListener:Lcom/narvii/chat/RecordFinishListener;

    if-eqz p4, :cond_2

    const/16 v0, 0x6e

    .line 174
    invoke-interface {p4, p1, p2, p3, v0}, Lcom/narvii/chat/RecordFinishListener;->onRecordFinish(Landroid/net/Uri;JI)V

    :cond_2
    return-void
.end method

.method public onRecordStart(J)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object v0, v0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/RecordInfoListener;

    .line 183
    invoke-interface {v1, p1, p2}, Lcom/narvii/chat/RecordInfoListener;->onRecordStart(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRecordTimeChange(J)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object v0, v0, Lcom/narvii/chat/audio/AudioRecordLayout;->onRecordTimeChangeListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;

    .line 199
    invoke-interface {v1, p1, p2}, Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;->onRecordTimeChange(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVolumeChange(I)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    invoke-static {v0}, Lcom/narvii/chat/audio/AudioRecordLayout;->access$000(Lcom/narvii/chat/audio/AudioRecordLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object v0, v0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->setVolume(I)V

    :cond_0
    return-void
.end method
