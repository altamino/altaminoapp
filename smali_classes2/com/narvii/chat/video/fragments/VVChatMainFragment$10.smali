.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

.field final synthetic val$finishActivity:Z

.field final synthetic val$isPresenter:Z

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$withFinish:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;ZZZLjava/lang/String;)V
    .locals 0

    .line 895
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iput-boolean p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$finishActivity:Z

    iput-boolean p3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$withFinish:Z

    iput-boolean p4, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$isPresenter:Z

    iput-object p5, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 898
    new-instance p1, Lcom/narvii/chat/video/ChatLogEventHelper;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-direct {p1, v0}, Lcom/narvii/chat/video/ChatLogEventHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$500(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$600(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/video/ChatLogEventHelper;->logQuitChat(ILcom/narvii/model/ChatThread;)V

    .line 900
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$finishActivity:Z

    if-eqz p1, :cond_0

    .line 901
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 902
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 904
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$withFinish:Z

    if-eqz p1, :cond_1

    .line 905
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    .line 907
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$isPresenter:Z

    if-eqz p1, :cond_2

    .line 908
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$700(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/video/utils/VVChatLogHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$500(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$source:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$600(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logStopPresentingLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 910
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$700(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/video/utils/VVChatLogHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$500(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->val$source:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$10;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$600(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logLeaveLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    return-void
.end method
