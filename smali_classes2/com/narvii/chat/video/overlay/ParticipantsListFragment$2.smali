.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ParticipantsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->fetchChatThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/chat/ThreadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Ljava/lang/Class;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$2;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

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

    .line 803
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 794
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 795
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$2;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    iget-object p2, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    invoke-static {p1, p2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$1502(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/model/ChatThread;)Lcom/narvii/model/ChatThread;

    .line 796
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$2;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz p1, :cond_0

    .line 797
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 790
    check-cast p2, Lcom/narvii/chat/ThreadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V

    return-void
.end method
