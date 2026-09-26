.class Lcom/narvii/master/BottomDrawerHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/BottomDrawerHelper;->requestAnnouncement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/BlogListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/BottomDrawerHelper;


# direct methods
.method constructor <init>(Lcom/narvii/master/BottomDrawerHelper;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$1;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide p1

    .line 8
    .line 9
    sput-wide p1, Lcom/narvii/master/BottomDrawerHelper;->lastAnnouncementPromptRequestTime:J

    .line 10
    .line 11
    const-string p1, "bottom_drawer_check"

    .line 12
    .line 13
    const-string p2, "fail to fetched an data"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$1;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/master/BottomDrawerHelper;->a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$1;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/master/BottomDrawerHelper;->a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    .line 30
    move-result-object p1

    .line 31
    const/4 p2, -0x1

    .line 32
    const/4 p3, 0x0

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, p2, p3}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    .line 36
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

    .line 1
    check-cast p2, Lcom/narvii/model/api/BlogListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/BottomDrawerHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/narvii/master/BottomDrawerHelper;->lastAnnouncementPromptRequestTime:J

    const/4 p1, 0x0

    const/4 v0, -0x1

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p2}, Lcom/narvii/model/api/BlogListResponse;->list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/narvii/model/api/BlogListResponse;->list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/model/api/BlogListResponse;->list()Ljava/util/List;

    move-result-object p2

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Blog;

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/narvii/master/BottomDrawerHelper$1;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 6
    iget-object v3, v3, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    invoke-virtual {v3}, Lcom/narvii/util/PreferencesHelper;->getLastAnnouncementToastTime()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/narvii/master/BottomDrawerHelper$1;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 7
    iget-object v1, v1, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    iget-object v2, p2, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/util/PreferencesHelper;->saveLastAnnouncementShownId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/narvii/master/BottomDrawerHelper$1;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 8
    iget-object v1, v1, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    iget-object p2, p2, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/PreferencesHelper;->saveLastAnnouncementToastTime(J)V

    iget-object p2, p0, Lcom/narvii/master/BottomDrawerHelper$1;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 9
    invoke-static {p2}, Lcom/narvii/master/BottomDrawerHelper;->a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/narvii/master/BottomDrawerHelper$1;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 10
    invoke-static {p2}, Lcom/narvii/master/BottomDrawerHelper;->a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$1;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 11
    invoke-static {p1}, Lcom/narvii/master/BottomDrawerHelper;->a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/master/BottomDrawerHelper$1;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 12
    invoke-static {p1}, Lcom/narvii/master/BottomDrawerHelper;->a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/narvii/master/BottomDrawerHelper$1;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 13
    iget-object p2, p2, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    invoke-virtual {p2}, Lcom/narvii/util/PreferencesHelper;->getLastAnnouncementToastTime()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/narvii/master/BottomDrawerHelper$1;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 14
    iget-object p2, p2, Lcom/narvii/master/BottomDrawerHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    const-wide/16 v1, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/narvii/util/PreferencesHelper;->saveLastAnnouncementToastTime(J)V

    :cond_5
    iget-object p2, p0, Lcom/narvii/master/BottomDrawerHelper$1;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 15
    invoke-static {p2}, Lcom/narvii/master/BottomDrawerHelper;->a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/narvii/master/BottomDrawerHelper$1;->this$0:Lcom/narvii/master/BottomDrawerHelper;

    .line 16
    invoke-static {p2}, Lcom/narvii/master/BottomDrawerHelper;->a(Lcom/narvii/master/BottomDrawerHelper;)Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;->onStatusChanged(ILjava/lang/Object;)V

    :cond_6
    const-string p1, "bottom_drawer_check"

    const-string p2, "no data fetched in an"

    .line 17
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
