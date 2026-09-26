.class Lcom/narvii/account/CommunityPushSettingFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 3
    .line 4
    iput p3, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->val$which:I

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
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->myAdapter:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 18
    .line 19
    const/16 p1, 0x9ca

    .line 20
    .line 21
    if-ne p2, p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    new-instance p2, Lcom/narvii/account/CommunityPushSettingFragment$3$1;

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, p0, p1}, Lcom/narvii/account/CommunityPushSettingFragment$3$1;-><init>(Lcom/narvii/account/CommunityPushSettingFragment$3;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 41
    .line 42
    .line 43
    const p3, 0x7f1207e7

    .line 44
    .line 45
    const/16 p4, 0x40

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3, p4, p2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    check-cast p2, Landroid/widget/Button;

    .line 52
    .line 53
    .line 54
    const p3, -0xb56f1e

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 67
    move-result-object p1

    .line 68
    const/4 p2, 0x1

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 76
    :goto_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/setting/CommunityPushResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 3
    iput-object p2, p1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 4
    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 5
    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->myAdapter:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    if-eqz p2, :cond_4

    .line 6
    iget-object p1, p2, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->val$which:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 7
    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object p1, p1, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean p2, p1, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    const-string p1, "BroadcastsFromLeaders"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 8
    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object p1, p1, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    iget-boolean p2, p1, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    const-string p1, "ActivitiesFromOtherMembers"

    goto :goto_0

    .line 9
    :cond_2
    iget-boolean p2, p2, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    const-string p1, "AllNotifications"

    :goto_0
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$3;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    if-eqz p2, :cond_3

    .line 10
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOnAlert:Lcom/narvii/logging/ActSemantic;

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOffAlert:Lcom/narvii/logging/ActSemantic;

    :goto_1
    invoke-static {v0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

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

    .line 1
    check-cast p2, Lcom/narvii/master/setting/CommunityPushResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/CommunityPushSettingFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/setting/CommunityPushResponse;)V

    return-void
.end method
