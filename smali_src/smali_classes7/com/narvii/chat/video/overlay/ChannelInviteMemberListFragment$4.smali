.class Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->val$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 18
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->u(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)Lcom/narvii/list/MergeAdapter;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    .line 14
    sget-object p1, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->Companion:Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;->getInstance()Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    const/4 p2, 0x0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->val$user:Lcom/narvii/model/User;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    move-result-wide v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->addInviteUserLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 52
    .line 53
    new-instance p1, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4$1;

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4$1;-><init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;)V

    .line 57
    .line 58
    .line 59
    const-wide/32 v0, 0x493e0

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    const p2, 0x7f120ddc

    .line 72
    const/4 v0, 0x1

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 80
    return-void
.end method
