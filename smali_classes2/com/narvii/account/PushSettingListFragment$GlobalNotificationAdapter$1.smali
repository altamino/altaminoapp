.class Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "PushSettingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->sendPushStatusRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/setting/CommunityPushResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter$1;->this$1:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

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

    .line 342
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter$1;->this$1:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    iput-object p4, p1, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->error:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/setting/CommunityPushResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 335
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter$1;->this$1:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    iget-object v0, p1, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iput-object p2, v0, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    const/4 p2, 0x0

    .line 336
    iput-object p2, p1, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->error:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    check-cast p2, Lcom/narvii/master/setting/CommunityPushResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/setting/CommunityPushResponse;)V

    return-void
.end method
