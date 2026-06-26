.class Lcom/narvii/chat/detail/ThreadDetailFragment$10;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ThreadDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(IZ)V
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
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

.field final synthetic val$conflict:Z

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$properties:I

.field final synthetic val$resultValue:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;IZZ)V
    .locals 0

    .line 1833
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iput-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput p4, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$properties:I

    iput-boolean p5, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    iput-boolean p6, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$conflict:Z

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

    .line 1897
    iget p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$properties:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    const/16 p1, 0x67d

    if-eq p2, p1, :cond_0

    const/16 p1, 0x67e

    if-ne p2, p1, :cond_1

    .line 1898
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 1899
    invoke-virtual {p1, p4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p2, 0x7f0f073e

    const/4 p3, 0x0

    .line 1900
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1901
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 1903
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 1905
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 1906
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1837
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 1838
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 1840
    iget p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$properties:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1841
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isViewOnly()Z

    move-result p2

    iget-boolean v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    if-ne p2, v0, :cond_0

    return-void

    .line 1844
    :cond_0
    invoke-virtual {p1, v0}, Lcom/narvii/model/ChatThread;->setViewOnly(Z)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    .line 1846
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    if-eqz p1, :cond_3

    .line 1847
    iget-boolean p2, p1, Lcom/narvii/model/TippingInfo;->tippable:Z

    iget-boolean v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    if-ne p2, v0, :cond_2

    return-void

    .line 1850
    :cond_2
    iput-boolean v0, p1, Lcom/narvii/model/TippingInfo;->tippable:Z

    .line 1853
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 1854
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->tipInfo:Lcom/narvii/model/TippingInfo;

    if-eqz p1, :cond_4

    .line 1855
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    iput-boolean p2, p1, Lcom/narvii/model/TippingInfo;->tippable:Z

    .line 1857
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void

    :cond_5
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p2, v0, :cond_9

    .line 1860
    iget p2, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    iget-boolean v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    if-ne p2, v0, :cond_7

    .line 1861
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$conflict:Z

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1862
    invoke-virtual {p1, v1}, Lcom/narvii/model/ChatThread;->setFansOnly(Z)V

    goto :goto_0

    :cond_6
    return-void

    .line 1867
    :cond_7
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$conflict:Z

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1868
    invoke-virtual {p1, v1}, Lcom/narvii/model/ChatThread;->setFansOnly(Z)V

    .line 1870
    :cond_8
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    iput p2, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    goto :goto_0

    :cond_9
    const/4 v0, 0x4

    if-ne p2, v0, :cond_d

    .line 1874
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result p2

    iget-boolean v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    if-ne p2, v0, :cond_b

    .line 1875
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$conflict:Z

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isPublishToGlobal()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1876
    iput v1, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    goto :goto_0

    :cond_a
    return-void

    .line 1881
    :cond_b
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$conflict:Z

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isPublishToGlobal()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1882
    iput v1, p1, Lcom/narvii/model/ChatThread;->publishToGlobal:I

    .line 1884
    :cond_c
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->val$resultValue:Z

    invoke-virtual {p1, p2}, Lcom/narvii/model/ChatThread;->setFansOnly(Z)V

    .line 1888
    :cond_d
    :goto_0
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string/jumbo v0, "update"

    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1889
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 1890
    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    return-void
.end method
