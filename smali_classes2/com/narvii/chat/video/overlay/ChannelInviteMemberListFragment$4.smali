.class Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ChannelInviteMemberListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteUser(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;Ljava/lang/Class;Lcom/narvii/model/User;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    iput-object p3, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->val$user:Lcom/narvii/model/User;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 545
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 546
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 529
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 530
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->access$200(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 531
    sget-object p1, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->Companion:Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;

    invoke-virtual {p1}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;->getInstance()Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    invoke-virtual {p2}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    invoke-virtual {p2}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->val$user:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->addInviteUserLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 532
    new-instance p1, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4$1;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;)V

    const-wide/32 v0, 0x493e0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 540
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0cbf

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method
