.class Lcom/narvii/account/CommunityPushSettingFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CommunityPushSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/CommunityPushSettingFragment;->changePushSetting(Lcom/narvii/master/setting/CommunityPushResponse;I)V
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
.field final synthetic this$0:Lcom/narvii/account/CommunityPushSettingFragment;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/narvii/account/CommunityPushSettingFragment;Ljava/lang/Class;I)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iput p3, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->val$which:I

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

    .line 278
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 279
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 280
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->myAdapter:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    const/16 p1, 0x9ca

    if-ne p2, p1, :cond_0

    .line 282
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object p2, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 283
    invoke-virtual {p1, p4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p2, 0x7f0f073e

    const/16 p3, 0x40

    .line 284
    new-instance p4, Lcom/narvii/account/CommunityPushSettingFragment$3$1;

    invoke-direct {p4, p0, p1}, Lcom/narvii/account/CommunityPushSettingFragment$3$1;-><init>(Lcom/narvii/account/CommunityPushSettingFragment$3;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, p2, p3, p4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, -0xb56f1e

    .line 291
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 292
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 251
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iput-object p2, p1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 252
    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 253
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->myAdapter:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    if-eqz p2, :cond_4

    .line 255
    iget-object p1, p2, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 258
    iget v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->val$which:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p2, 0x2

    if-eq v1, p2, :cond_1

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object p1, p1, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v0, p1, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    const-string p1, "BroadcastsFromLeaders"

    goto :goto_0

    .line 265
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object p1, p1, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean v0, p1, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    const-string p1, "ActivitiesFromOtherMembers"

    goto :goto_0

    .line 261
    :cond_2
    iget-boolean v0, p2, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    const-string p1, "AllNotifications"

    .line 272
    :goto_0
    iget-object p2, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/narvii/logging/ActSemantic;->turnOnAlert:Lcom/narvii/logging/ActSemantic;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/narvii/logging/ActSemantic;->turnOffAlert:Lcom/narvii/logging/ActSemantic;

    :goto_1
    invoke-static {p2, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

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

    .line 247
    check-cast p2, Lcom/narvii/master/setting/CommunityPushResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/CommunityPushSettingFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/setting/CommunityPushResponse;)V

    return-void
.end method
