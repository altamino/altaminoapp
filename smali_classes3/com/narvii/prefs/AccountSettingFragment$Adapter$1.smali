.class Lcom/narvii/prefs/AccountSettingFragment$Adapter$1;
.super Lcom/narvii/account/AccountResponseListener;
.source "AccountSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/AccountSettingFragment$Adapter;->sendAccountInfoRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/prefs/AccountSettingFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/AccountSettingFragment$Adapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter$1;->this$1:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    invoke-direct {p0, p2}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    .line 280
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter$1;->this$1:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

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

    .line 276
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/prefs/AccountSettingFragment$Adapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
