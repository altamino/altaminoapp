.class Lcom/narvii/amino/HomeFragment$7;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/HomeFragment;->sendSpeedDialRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;

.field final synthetic val$isRefresh:Z


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;Ljava/lang/Class;Z)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/narvii/amino/HomeFragment$7;->val$isRefresh:Z

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
    iget-boolean p1, p0, Lcom/narvii/amino/HomeFragment$7;->val$isRefresh:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/amino/HomeFragment;->r(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/util/Callback;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/amino/HomeFragment;->r(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/util/Callback;

    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x1

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 30
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 4
    invoke-static {v0}, Lcom/narvii/amino/HomeFragment;->s(Lcom/narvii/amino/HomeFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p2, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->threadList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 6
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getCurrentHeaderStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getCurrentHeaderStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 8
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothExpand()V

    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 9
    invoke-static {v0, p1}, Lcom/narvii/amino/HomeFragment;->w(Lcom/narvii/amino/HomeFragment;Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/narvii/amino/HomeFragment$7;->val$isRefresh:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 10
    invoke-static {v0}, Lcom/narvii/amino/HomeFragment;->r(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/util/Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 11
    invoke-static {v0}, Lcom/narvii/amino/HomeFragment;->r(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/util/Callback;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 12
    iget-object p1, p1, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getTopView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 13
    iget-object p1, p1, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getTopView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 14
    invoke-virtual {p1, p2}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V

    :cond_4
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
    check-cast p2, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/amino/HomeFragment$7;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V

    return-void
.end method
