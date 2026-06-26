.class Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$2;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "AminoWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiJsonResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;


# direct methods
.method constructor <init>(Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;Ljava/lang/Class;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$2;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result p2

    .line 260
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 262
    new-instance v0, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;

    invoke-direct {v0}, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;-><init>()V

    .line 263
    iput-object p1, v0, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;->url:Ljava/lang/String;

    .line 264
    iput p2, v0, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;->value:I

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;->time:J

    .line 266
    sget-object v1, Lcom/narvii/app/AminoWebViewFragment;->safeBrowsingCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$2;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    iget-object p1, p1, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/app/AminoWebViewFragment;->setSafeValue(Ljava/lang/Integer;)V

    return-void
.end method
