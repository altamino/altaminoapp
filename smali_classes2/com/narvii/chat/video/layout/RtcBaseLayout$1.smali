.class Lcom/narvii/chat/video/layout/RtcBaseLayout$1;
.super Ljava/lang/Object;
.source "RtcBaseLayout.java"

# interfaces
.implements Lcom/narvii/chat/video/layout/RtcBaseLayout$OnStartChatUserDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/layout/RtcBaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/layout/RtcBaseLayout;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/layout/RtcBaseLayout;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout$1;->this$0:Lcom/narvii/chat/video/layout/RtcBaseLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartChatUserDialog(Lcom/narvii/chat/rtc/ChannelUserWrapper;Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout$1;->this$0:Lcom/narvii/chat/video/layout/RtcBaseLayout;

    iget-object v0, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userClickedListener:Lcom/narvii/chat/video/layout/RtcBaseLayout$UserClickedListener;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout$UserClickedListener;->onUserClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
