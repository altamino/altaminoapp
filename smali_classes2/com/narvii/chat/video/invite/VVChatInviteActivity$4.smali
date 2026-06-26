.class Lcom/narvii/chat/video/invite/VVChatInviteActivity$4;
.super Ljava/lang/Object;
.source "VVChatInviteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/invite/VVChatInviteActivity;->onCallStatusChanged(I)V
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

    .line 380
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$4;->this$0:Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$4;->this$0:Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$4;->this$0:Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method
