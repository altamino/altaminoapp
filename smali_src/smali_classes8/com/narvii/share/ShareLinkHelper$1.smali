.class Lcom/narvii/share/ShareLinkHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    .line 5
    .line 6
    iput p4, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$translationTarget:I

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 12
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
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/share/ShareLinkHelper;->b(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/share/ShareLinkHelper;->a(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iget-object p2, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    check-cast p1, Ljava/util/ArrayList;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result p2

    .line 64
    .line 65
    if-eqz p2, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    check-cast p2, Lcom/narvii/util/Callback;

    .line 72
    const/4 p3, 0x0

    .line 73
    .line 74
    .line 75
    invoke-interface {p2, p3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_1
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lcom/narvii/share/ShareLinkHelper;->a(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    iget-object p2, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
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

    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    .line 2
    invoke-static {p1}, Lcom/narvii/share/ShareLinkHelper;->b(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    iget v1, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$translationTarget:I

    .line 3
    iget-object v2, p2, Lcom/narvii/share/LinkV2TranslationResponse;->linkInfoV2:Lcom/narvii/share/LinkInfoV2;

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/share/ShareLinkHelper;->c(Lcom/narvii/share/ShareLinkHelper;Lcom/narvii/model/NVObject;ILcom/narvii/share/LinkInfoV2;)V

    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    .line 4
    invoke-static {p1}, Lcom/narvii/share/ShareLinkHelper;->a(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/Callback;

    .line 6
    iget-object v1, p2, Lcom/narvii/share/LinkV2TranslationResponse;->linkInfoV2:Lcom/narvii/share/LinkInfoV2;

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper$1;->this$0:Lcom/narvii/share/ShareLinkHelper;

    .line 7
    invoke-static {p1}, Lcom/narvii/share/ShareLinkHelper;->a(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/share/ShareLinkHelper$1;->val$feed:Lcom/narvii/model/NVObject;

    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
