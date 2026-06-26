.class Lcom/narvii/chat/video/invite/VVChatInviteActivity$6;
.super Ljava/lang/Object;
.source "VVChatInviteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 430
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$6;->this$0:Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$6;->this$0:Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    invoke-static {v0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->access$100(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$6;->this$0:Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    invoke-static {v0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->access$100(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$6;->this$0:Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    invoke-static {v0}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->access$100(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
