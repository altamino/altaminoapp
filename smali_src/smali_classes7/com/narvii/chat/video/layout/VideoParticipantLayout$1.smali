.class Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;->val$user:Lcom/narvii/chat/rtc/ChannelUserWrapper;

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
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->a(Lcom/narvii/chat/video/layout/VideoParticipantLayout;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a0f21

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    instance-of v1, v1, Ljava/lang/Integer;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->a(Lcom/narvii/chat/video/layout/VideoParticipantLayout;)I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result p1

    .line 43
    .line 44
    if-ne v1, p1, :cond_1

    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 47
    .line 48
    iget-object v0, p1, Lcom/narvii/chat/video/layout/RtcBaseLayout;->onStartChatUserDialogListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;->val$user:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/narvii/chat/video/layout/RtcBaseLayout;->threadId:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1, p1}, Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;->onStartChatUserDialog(Lcom/narvii/chat/rtc/ChannelUserWrapper;Ljava/lang/String;)V

    .line 56
    :cond_1
    return-void
.end method
