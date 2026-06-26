.class public final Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "VisitorsSettingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->sendPrivacyRequest(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVisitorsSettingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisitorsSettingFragment.kt\ncom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3\n*L\n1#1,299:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $mode:Ljava/lang/Integer;

.field final synthetic $notifiStatus:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->$mode:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->$notifiStatus:Ljava/lang/Integer;

    invoke-direct {p0, p4}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 217
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 218
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getProgressDialog$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getProgressDialog$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    const/16 p1, 0x12c

    if-ne p2, p1, :cond_1

    .line 221
    invoke-static {p4}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 222
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p2, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {p1, p4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p2, 0x7f0f073e

    const/4 p3, 0x0

    .line 224
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 225
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_1

    .line 227
    :cond_1
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    const-string p4, ""

    :goto_0
    invoke-static {p1, p4}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    :goto_1
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getAdapter$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 182
    check-cast p2, Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;)V
    .locals 1

    .line 185
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 186
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getProgressDialog$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getProgressDialog$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    if-eqz p2, :cond_1

    .line 189
    invoke-virtual {p2}, Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;->getVisitSettings()Lcom/narvii/model/VisitorSetting;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 190
    iget-object p2, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    iget v0, p1, Lcom/narvii/model/VisitorSetting;->privacyMode:I

    invoke-static {p2, v0}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$setPrivacyMode$p(Lcom/narvii/visitor/VisitorsSettingFragment;I)V

    .line 191
    iget-object p2, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    iget p1, p1, Lcom/narvii/model/VisitorSetting;->notificationStatus:I

    invoke-static {p2, p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$setNotificationStatus$p(Lcom/narvii/visitor/VisitorsSettingFragment;I)V

    .line 192
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getAccount$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p2}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getPrivacyMode$p(Lcom/narvii/visitor/VisitorsSettingFragment;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v0}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getNotificationStatus$p(Lcom/narvii/visitor/VisitorsSettingFragment;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/account/AccountService;->updateVisitorSetting(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 193
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getAdapter$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->$mode:Ljava/lang/Integer;

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    if-nez p1, :cond_2

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_3

    const-string p1, "PublicMode"

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v0, 0x2

    if-nez p1, :cond_4

    goto :goto_1

    .line 201
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_5

    const-string p1, "PrivateMode"

    goto :goto_2

    :cond_5
    :goto_1
    const-string p1, ""

    .line 206
    :goto_2
    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 209
    :cond_6
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->$notifiStatus:Ljava/lang/Integer;

    if-eqz p1, :cond_9

    .line 210
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "NewProfileVisitors"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$3;->$notifiStatus:Ljava/lang/Integer;

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_8

    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    goto :goto_4

    :cond_8
    :goto_3
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOff:Lcom/narvii/logging/ActSemantic;

    :goto_4
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_9
    return-void
.end method
