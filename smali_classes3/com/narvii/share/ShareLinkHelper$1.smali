.class Lcom/narvii/share/ShareLinkHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ShareLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/share/ShareLinkHelper;->startLinkTranslation(Lcom/narvii/model/NVObject;Lcom/narvii/util/Callback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/share/LinkV2TranslationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/ShareLinkHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$feed:Lcom/narvii/model/NVObject;

.field final synthetic val$translationTarget:I


# direct methods
.method constructor <init>(Lcom/narvii/share/ShareLinkHelper;Ljava/lang/Class;Lcom/narvii/model/NVObject;ILcom/narvii/util/Callback;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    iput-object p3, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    iput p4, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$translationTarget:I

    iput-object p5, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$callback:Lcom/narvii/util/Callback;

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

    .line 515
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 516
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    iget-object p1, p1, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 517
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 520
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    invoke-static {p1}, Lcom/narvii/share/ShareLinkHelper;->access$000(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    invoke-static {p1}, Lcom/narvii/share/ShareLinkHelper;->access$200(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 523
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/Callback;

    const/4 p3, 0x0

    .line 524
    invoke-interface {p2, p3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 527
    :cond_1
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    invoke-static {p1}, Lcom/narvii/share/ShareLinkHelper;->access$200(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 496
    check-cast p2, Lcom/narvii/share/LinkV2TranslationResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/share/ShareLinkHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/share/LinkV2TranslationResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/share/LinkV2TranslationResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 500
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    invoke-static {p1}, Lcom/narvii/share/ShareLinkHelper;->access$000(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    iget v1, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$translationTarget:I

    iget-object v2, p2, Lcom/narvii/share/LinkV2TranslationResponse;->linkInfoV2:Lcom/narvii/share/LinkInfoV2;

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/share/ShareLinkHelper;->access$100(Lcom/narvii/share/ShareLinkHelper;Lcom/narvii/model/NVObject;ILcom/narvii/share/LinkInfoV2;)V

    .line 502
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    invoke-static {p1}, Lcom/narvii/share/ShareLinkHelper;->access$200(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 504
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/Callback;

    .line 505
    iget-object v1, p2, Lcom/narvii/share/LinkV2TranslationResponse;->linkInfoV2:Lcom/narvii/share/LinkInfoV2;

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    invoke-static {p1}, Lcom/narvii/share/ShareLinkHelper;->access$200(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
