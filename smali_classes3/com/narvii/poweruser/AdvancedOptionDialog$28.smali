.class Lcom/narvii/poweruser/AdvancedOptionDialog$28;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AdvancedOptionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;->changeCategory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/BlogResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1272
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$28;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iput-object p3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$28;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 1275
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 1276
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$28;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 1277
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$28;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$2400(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1272
    check-cast p2, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$28;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1282
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 1283
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$28;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iget-object p2, p2, Lcom/narvii/model/api/BlogResponse;->taggedBlogCategoryList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$2502(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/util/List;)Ljava/util/List;

    .line 1284
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$28;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 1285
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$28;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$2400(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    return-void
.end method
