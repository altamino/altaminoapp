.class Lcom/narvii/poll/PollAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "PollAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poll/PollAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/poll/VotersSummaryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poll/PollAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/poll/PollAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/narvii/poll/PollAdapter$1;->this$0:Lcom/narvii/poll/PollAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    check-cast p2, Lcom/narvii/poll/VotersSummaryResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/poll/PollAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/poll/VotersSummaryResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/poll/VotersSummaryResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter$1;->this$0:Lcom/narvii/poll/PollAdapter;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/poll/PollAdapter;->votersSummaryRequest:Lcom/narvii/util/http/ApiRequest;

    .line 159
    iput-object p2, p1, Lcom/narvii/poll/PollAdapter;->votersSummary:Lcom/narvii/poll/VotersSummaryResponse;

    .line 160
    iget-object p2, p1, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter$1;->this$0:Lcom/narvii/poll/PollAdapter;

    iget-object p2, p1, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    iget-object p1, p1, Lcom/narvii/poll/PollAdapter;->votersSummary:Lcom/narvii/poll/VotersSummaryResponse;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1, v0}, Lcom/narvii/poll/PollOptionListLayout;->setVotersSummary(ZLcom/narvii/poll/VotersSummaryResponse;Z)V

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter$1;->this$0:Lcom/narvii/poll/PollAdapter;

    iget-object p1, p1, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
