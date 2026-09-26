.class Lcom/narvii/chat/audio/AudioRecordLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onRecordFinish(Landroid/net/Uri;JZ)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-eqz p4, :cond_0

    .line 9
    const/4 p4, 0x1

    .line 10
    .line 11
    iput-boolean p4, v0, Lcom/narvii/chat/audio/AudioRecordLayout;->beyondMaxDuration:Z

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p4

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/chat/RecordInfoListener;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Lcom/narvii/chat/RecordInfoListener;->onBeyondMaxDuration()V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object p4, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 34
    .line 35
    iget-object p4, p4, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p4

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Lcom/narvii/chat/RecordInfoListener;

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Lcom/narvii/chat/RecordInfoListener;->onRecordEnd()V

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_1
    iget-object p4, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 58
    .line 59
    iget-object p4, p4, Lcom/narvii/chat/audio/AudioRecordLayout;->recordFinishListener:Lcom/narvii/chat/RecordFinishListener;

    .line 60
    .line 61
    if-eqz p4, :cond_2

    .line 62
    .line 63
    const/16 v0, 0x6e

    .line 64
    .line 65
    .line 66
    invoke-interface {p4, p1, p2, p3, v0}, Lcom/narvii/chat/RecordFinishListener;->onRecordFinish(Landroid/net/Uri;JI)V

    .line 67
    :cond_2
    return-void
.end method

.method public onRecordStart(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/chat/RecordInfoListener;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, p1, p2}, Lcom/narvii/chat/RecordInfoListener;->onRecordStart(J)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onRecordTimeChange(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/audio/AudioRecordLayout;->onRecordTimeChangeListenerList:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, p1, p2}, Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;->onRecordTimeChange(J)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onVolumeChange(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/audio/AudioRecordLayout;->a(Lcom/narvii/chat/audio/AudioRecordLayout;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout$1;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->setVolume(I)V

    .line 17
    :cond_0
    return-void
.end method
