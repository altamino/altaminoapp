.class Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "LanguageSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/explorer/SupportLanguageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;Ljava/lang/Class;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;->this$1:Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;

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

    .line 225
    iget-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;->this$1:Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;

    iput-object p4, p1, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->error:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/SupportLanguageResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    iget-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;->this$1:Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;

    invoke-static {p1}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->access$000(Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "language"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/LanguageManager;

    .line 207
    iget-object v0, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;->this$1:Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->languages:Ljava/util/List;

    .line 208
    iget-object p2, p2, Lcom/narvii/master/explorer/SupportLanguageResponse;->supportedLanguages:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 209
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    new-instance v1, Lcom/narvii/language/LanguageSpec;

    invoke-virtual {p1, v0}, Lcom/narvii/language/LanguageManager;->getDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/narvii/language/LanguageManager;->getLocalDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/narvii/language/LanguageSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;->this$1:Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->languages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;->this$1:Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;

    iget-object p2, p1, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->languages:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->access$100(Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->languages:Ljava/util/List;

    .line 215
    iget-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;->this$1:Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->languages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;->this$1:Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->this$0:Lcom/narvii/master/setting/LanguageSettingFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/FragmentWrapperActivity;

    const/4 p2, 0x1

    .line 217
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->setRightViewVisible(Z)V

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;->this$1:Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->error:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    check-cast p2, Lcom/narvii/master/explorer/SupportLanguageResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/SupportLanguageResponse;)V

    return-void
.end method
