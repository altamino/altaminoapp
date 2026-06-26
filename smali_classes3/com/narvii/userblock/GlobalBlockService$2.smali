.class Lcom/narvii/userblock/GlobalBlockService$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "GlobalBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/userblock/GlobalBlockService;->refresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/userblock/BlockListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/userblock/GlobalBlockService;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/narvii/userblock/GlobalBlockService;Ljava/lang/Class;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/narvii/userblock/GlobalBlockService$2;->this$0:Lcom/narvii/userblock/GlobalBlockService;

    iput-object p3, p0, Lcom/narvii/userblock/GlobalBlockService$2;->val$prefs:Landroid/content/SharedPreferences;

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

    .line 142
    iget-object p1, p0, Lcom/narvii/userblock/GlobalBlockService$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "blockListTime"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    check-cast p2, Lcom/narvii/userblock/BlockListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/userblock/GlobalBlockService$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/userblock/BlockListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/userblock/BlockListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    iget-object p1, p0, Lcom/narvii/userblock/GlobalBlockService$2;->this$0:Lcom/narvii/userblock/GlobalBlockService;

    iget-object v0, p2, Lcom/narvii/userblock/BlockListResponse;->blockedUidList:Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/narvii/userblock/BlockListResponse;->blockerUidList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Lcom/narvii/userblock/GlobalBlockService;->updateBlockList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
