.class Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;
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

    .line 120
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;->val$user:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-static {p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->access$000(Lcom/narvii/chat/video/layout/VideoParticipantLayout;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;->this$0:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iget-object p1, p1, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->itemClickListener:Lcom/narvii/chat/video/layout/VideoParticipantLayout$ItemClickListener;

    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;->val$user:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-interface {p1, v0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout$ItemClickListener;->onItemClicked(I)V

    :cond_1
    return-void
.end method
