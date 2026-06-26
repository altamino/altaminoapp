.class Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;
.super Ljava/lang/Object;
.source "VideoParticipantLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/layout/VideoParticipantLayout;->constructNewChildView(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

.field final synthetic val$user:Lcom/narvii/chat/rtc/ChannelUserWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/layout/VideoParticipantLayout;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;->val$user:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-static {v0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->access$000(Lcom/narvii/chat/video/layout/VideoParticipantLayout;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iget-object v0, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    if-eqz v0, :cond_1

    const v0, 0x7f090bfe

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 109
    invoke-static {v1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->access$000(Lcom/narvii/chat/video/layout/VideoParticipantLayout;)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v1, p1, :cond_1

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iget-object v0, p1, Lcom/narvii/chat/video/layout/RtcBaseLayout;->onStartChatUserDialogListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;

    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;->val$user:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object p1, p1, Lcom/narvii/chat/video/layout/RtcBaseLayout;->threadId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;->onStartChatUserDialog(Lcom/narvii/chat/rtc/ChannelUserWrapper;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
