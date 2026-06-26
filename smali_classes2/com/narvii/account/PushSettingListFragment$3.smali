.class Lcom/narvii/account/PushSettingListFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "PushSettingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/PushSettingListFragment;->changePushSetting(Lcom/narvii/master/setting/CommunityPushResponse;)V
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
.field final synthetic this$0:Lcom/narvii/account/PushSettingListFragment;

.field final synthetic val$res:Lcom/narvii/master/setting/CommunityPushResponse;


# direct methods
.method constructor <init>(Lcom/narvii/account/PushSettingListFragment;Ljava/lang/Class;Lcom/narvii/master/setting/CommunityPushResponse;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment$3;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iput-object p3, p0, Lcom/narvii/account/PushSettingListFragment$3;->val$res:Lcom/narvii/master/setting/CommunityPushResponse;

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

    .line 222
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 223
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$3;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object p1, p1, Lcom/narvii/account/PushSettingListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 224
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$3;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object p1, p1, Lcom/narvii/account/PushSettingListFragment;->myAdapter:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    const/16 p1, 0x9ca

    if-ne p2, p1, :cond_0

    .line 226
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object p2, p0, Lcom/narvii/account/PushSettingListFragment$3;->this$0:Lcom/narvii/account/PushSettingListFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-virtual {p1, p4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p2, 0x7f0f073e

    const/16 p3, 0x40

    .line 228
    new-instance p4, Lcom/narvii/account/PushSettingListFragment$3$1;

    invoke-direct {p4, p0, p1}, Lcom/narvii/account/PushSettingListFragment$3$1;-><init>(Lcom/narvii/account/PushSettingListFragment$3;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, p2, p3, p4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, -0xb56f1e

    .line 235
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 236
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$3;->this$0:Lcom/narvii/account/PushSettingListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/setting/CommunityPushResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 214
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$3;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iput-object p2, p1, Lcom/narvii/account/PushSettingListFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 215
    iget-object p1, p1, Lcom/narvii/account/PushSettingListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 216
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$3;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object p1, p1, Lcom/narvii/account/PushSettingListFragment;->myAdapter:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 217
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$3;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object p2, p0, Lcom/narvii/account/PushSettingListFragment$3;->val$res:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-boolean p2, p2, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOnAlert:Lcom/narvii/logging/ActSemantic;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOffAlert:Lcom/narvii/logging/ActSemantic;

    :goto_0
    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "PauseAllPush"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    check-cast p2, Lcom/narvii/master/setting/CommunityPushResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/PushSettingListFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/setting/CommunityPushResponse;)V

    return-void
.end method
