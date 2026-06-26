.class Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;
.super Ljava/lang/Object;
.source "VoiceParticipantLayout.java"

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

    .line 203
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;->val$user:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090bfe

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 207
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    iget-object v0, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    iget-object v0, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    iget-object v1, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->onStartChatUserDialogListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;

    iget-object v0, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->threadId:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;->onStartChatUserDialog(Lcom/narvii/chat/rtc/ChannelUserWrapper;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VoiceParticipantLayout;

    iget-object v0, p1, Lcom/narvii/chat/video/layout/RtcBaseLayout;->onStartChatUserDialogListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;

    iget-object v1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;->val$user:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object p1, p1, Lcom/narvii/chat/video/layout/RtcBaseLayout;->threadId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;->onStartChatUserDialog(Lcom/narvii/chat/rtc/ChannelUserWrapper;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
