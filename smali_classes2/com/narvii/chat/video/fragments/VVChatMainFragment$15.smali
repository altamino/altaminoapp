.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;->onBackPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

.field final synthetic val$channel:Lcom/narvii/chat/signalling/SignallingChannel;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1213
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 1216
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$1402(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Z)Z

    .line 1217
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$200(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    .line 1218
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    const-string v0, "Alert"

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;)V

    .line 1219
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1220
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 1222
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$1500(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1223
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$1600(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/call/CallScreenService;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 1224
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$1700(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/video/utils/VVChatHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->sendCallNoAnswerMessage(Lcom/narvii/chat/signalling/SignallingChannel;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1213
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->call(Ljava/lang/Boolean;)V

    return-void
.end method
