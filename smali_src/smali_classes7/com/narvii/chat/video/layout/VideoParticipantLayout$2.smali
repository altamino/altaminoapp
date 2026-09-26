.class Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;
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
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;->val$user:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->a(Lcom/narvii/chat/video/layout/VideoParticipantLayout;)I

    .line 15
    move-result p1

    .line 16
    const/4 v0, -0x1

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->itemClickListener:Lcom/narvii/chat/video/layout/VideoParticipantLayout$ItemClickListener;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;->val$user:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 28
    .line 29
    iget v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout$ItemClickListener;->onItemClicked(I)V

    .line 33
    :cond_1
    return-void
.end method
