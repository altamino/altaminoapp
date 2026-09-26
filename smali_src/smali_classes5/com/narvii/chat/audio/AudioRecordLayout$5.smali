.class Lcom/narvii/chat/audio/AudioRecordLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/RecordInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/audio/AudioRecordLayout;->onFinishInflate()V
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
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$5;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBeyondMaxDuration()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout$5;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToSend:Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120fd2

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    return-void
.end method

.method public onBeyondMaxOver()V
    .locals 0

    return-void
.end method

.method public onMessageTooShort()V
    .locals 0

    return-void
.end method

.method public onRecordCancel()V
    .locals 0

    return-void
.end method

.method public onRecordEnd()V
    .locals 0

    return-void
.end method

.method public onRecordStart(J)V
    .locals 0

    return-void
.end method
