.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->z(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Z)V

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->D(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    const-string v0, "Alert"

    .line 4
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->E(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 8
    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->p(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/call/CallScreenService;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 9
    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->x(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/video/utils/VVChatHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->sendCallNoAnswerMessage(Lcom/narvii/chat/signalling/SignallingChannel;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$15;->call(Ljava/lang/Boolean;)V

    return-void
.end method
