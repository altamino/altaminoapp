.class Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->constructNewChildView(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

.field final synthetic val$user:Lcom/narvii/chat/rtc/ChannelUserWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/layout/VoiceParticipantLayout;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;->val$user:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0f21

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    instance-of v0, p1, Ljava/lang/Integer;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->onStartChatUserDialogListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->threadId:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, p1, v0}, Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;->onStartChatUserDialog(Lcom/narvii/chat/rtc/ChannelUserWrapper;Ljava/lang/String;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    .line 58
    .line 59
    iget-object v0, p1, Lcom/narvii/chat/video/layout/RtcBaseLayout;->onStartChatUserDialogListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;->val$user:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/narvii/chat/video/layout/RtcBaseLayout;->threadId:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v1, p1}, Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;->onStartChatUserDialog(Lcom/narvii/chat/rtc/ChannelUserWrapper;Ljava/lang/String;)V

    .line 67
    :cond_1
    :goto_0
    return-void
.end method
