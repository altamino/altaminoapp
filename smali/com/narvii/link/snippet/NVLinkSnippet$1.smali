.class Lcom/narvii/link/snippet/NVLinkSnippet$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "NVLinkSnippet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/link/snippet/NVLinkSnippet;->getSnippetBitmap(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/link/snippet/NVLinkSnippet;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/link/snippet/NVLinkSnippet;Ljava/lang/Class;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/link/snippet/NVLinkSnippet$1;->this$0:Lcom/narvii/link/snippet/NVLinkSnippet;

    iput-object p3, p0, Lcom/narvii/link/snippet/NVLinkSnippet$1;->val$callback:Lcom/narvii/util/Callback;

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

    .line 79
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 80
    iget-object p1, p0, Lcom/narvii/link/snippet/NVLinkSnippet$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 81
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    const-string p1, "linkSnippet"

    const-string p2, "5"

    .line 83
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    check-cast p2, Lcom/narvii/model/api/ObjectResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/link/snippet/NVLinkSnippet$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 66
    iget-object p1, p0, Lcom/narvii/link/snippet/NVLinkSnippet$1;->this$0:Lcom/narvii/link/snippet/NVLinkSnippet;

    invoke-virtual {p2}, Lcom/narvii/model/api/ObjectResponse;->object()Lcom/narvii/model/NVObject;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/link/snippet/NVLinkSnippet;->shareObject:Lcom/narvii/model/NVObject;

    .line 67
    iget-object p1, p0, Lcom/narvii/link/snippet/NVLinkSnippet$1;->this$0:Lcom/narvii/link/snippet/NVLinkSnippet;

    iget-object p1, p1, Lcom/narvii/link/snippet/NVLinkSnippet;->shareObject:Lcom/narvii/model/NVObject;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/narvii/link/snippet/NVLinkSnippet$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    .line 69
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, "linkSnippet"

    const-string p2, "6"

    .line 72
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/narvii/link/snippet/NVLinkSnippet$1;->this$0:Lcom/narvii/link/snippet/NVLinkSnippet;

    iget-object p2, p0, Lcom/narvii/link/snippet/NVLinkSnippet$1;->val$callback:Lcom/narvii/util/Callback;

    invoke-virtual {p1, p2}, Lcom/narvii/link/snippet/LinkSnippet;->getBitmapByObject(Lcom/narvii/util/Callback;)V

    return-void
.end method
