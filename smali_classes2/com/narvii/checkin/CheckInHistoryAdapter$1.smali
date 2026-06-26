.class Lcom/narvii/checkin/CheckInHistoryAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CheckInHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInHistoryAdapter;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/checkin/CheckInHistoryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

.field final synthetic val$checkInHelper:Lcom/narvii/checkin/CheckInHelper;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInHistoryAdapter;Ljava/lang/Class;Lcom/narvii/checkin/CheckInHelper;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    iput-object p3, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->val$checkInHelper:Lcom/narvii/checkin/CheckInHelper;

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

    .line 106
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    iput-object p4, p1, Lcom/narvii/checkin/CheckInHistoryAdapter;->error:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInHistoryResponse;)V
    .locals 10

    .line 87
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    invoke-static {p1, p2}, Lcom/narvii/checkin/CheckInHistoryAdapter;->access$002(Lcom/narvii/checkin/CheckInHistoryAdapter;Lcom/narvii/checkin/CheckInHistoryResponse;)Lcom/narvii/checkin/CheckInHistoryResponse;

    .line 89
    iget-object p1, p2, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->val$checkInHelper:Lcom/narvii/checkin/CheckInHelper;

    iget-object v2, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    invoke-static {v2}, Lcom/narvii/checkin/CheckInHistoryAdapter;->access$100(Lcom/narvii/checkin/CheckInHistoryAdapter;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/narvii/checkin/CheckInHelper;->parseCheckInHistory(Lcom/narvii/model/CheckInHistory;I)[Z

    move-result-object v6

    .line 91
    iget-object p1, p2, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iget-wide v1, p1, Lcom/narvii/model/CheckInHistory;->joinedTime:J

    const-wide/16 v3, 0x3e8

    mul-long v7, v1, v3

    .line 92
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    invoke-static {p1}, Lcom/narvii/checkin/CheckInHistoryAdapter;->access$200(Lcom/narvii/checkin/CheckInHistoryAdapter;)Lcom/narvii/checkin/CheckInHistoryView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    invoke-static {p1}, Lcom/narvii/checkin/CheckInHistoryAdapter;->access$200(Lcom/narvii/checkin/CheckInHistoryAdapter;)Lcom/narvii/checkin/CheckInHistoryView;

    move-result-object v3

    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->val$checkInHelper:Lcom/narvii/checkin/CheckInHelper;

    iget-object v1, p2, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    array-length v2, v6

    invoke-virtual {p1, v1, v2}, Lcom/narvii/checkin/CheckInHelper;->getFixedStartTime(Lcom/narvii/model/CheckInHistory;I)J

    move-result-wide v4

    iget-object p1, p2, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iget-boolean v9, p1, Lcom/narvii/model/CheckInHistory;->hasAnyCheckIn:Z

    invoke-virtual/range {v3 .. v9}, Lcom/narvii/checkin/CheckInHistoryView;->setCheckins(J[ZJZ)V

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    invoke-static {p1}, Lcom/narvii/checkin/CheckInHistoryAdapter;->access$300(Lcom/narvii/checkin/CheckInHistoryAdapter;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    invoke-static {p1}, Lcom/narvii/checkin/CheckInHistoryAdapter;->access$300(Lcom/narvii/checkin/CheckInHistoryAdapter;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    iget-boolean v2, v1, Lcom/narvii/checkin/CheckInHistoryAdapter;->isMe:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->val$checkInHelper:Lcom/narvii/checkin/CheckInHelper;

    iget-object p2, p2, Lcom/narvii/checkin/CheckInHistoryResponse;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    invoke-static {v1}, Lcom/narvii/checkin/CheckInHistoryAdapter;->access$100(Lcom/narvii/checkin/CheckInHistoryAdapter;)I

    move-result v1

    invoke-virtual {v2, p2, v1}, Lcom/narvii/checkin/CheckInHelper;->shouldShowStrikeLost(Lcom/narvii/model/CheckInHistory;I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    invoke-static {p1, v0}, Lcom/narvii/checkin/CheckInHistoryAdapter;->access$402(Lcom/narvii/checkin/CheckInHistoryAdapter;Z)Z

    .line 100
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/checkin/CheckInHistoryAdapter;->error:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    check-cast p2, Lcom/narvii/checkin/CheckInHistoryResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInHistoryAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInHistoryResponse;)V

    return-void
.end method
