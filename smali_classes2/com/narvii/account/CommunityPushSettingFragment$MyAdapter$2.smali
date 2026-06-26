.class Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CommunityPushSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->sendPushStatusRequest()V
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
.field final synthetic this$1:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$2;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

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

    .line 426
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$2;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    iput-object p4, p1, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->error:Ljava/lang/String;

    .line 427
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

    .line 419
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$2;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    iget-object v0, p1, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iput-object p2, v0, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    const/4 p2, 0x0

    .line 420
    iput-object p2, p1, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->error:Ljava/lang/String;

    .line 421
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

    .line 416
    check-cast p2, Lcom/narvii/master/setting/CommunityPushResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/setting/CommunityPushResponse;)V

    return-void
.end method
