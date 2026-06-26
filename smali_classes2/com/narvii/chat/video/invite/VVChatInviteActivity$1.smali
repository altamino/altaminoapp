.class Lcom/narvii/chat/video/invite/VVChatInviteActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "VVChatInviteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/invite/VVChatInviteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/invite/VVChatInviteActivity;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$1;->this$0:Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$1;->this$0:Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    iget-object p1, p1, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/narvii/chat/call/CallScreenService;->silenceMode()V

    :cond_0
    return-void
.end method
