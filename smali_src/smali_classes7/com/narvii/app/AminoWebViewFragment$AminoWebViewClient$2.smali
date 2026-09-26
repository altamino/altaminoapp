.class Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$2;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$2;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 14
    move-result p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;-><init>()V

    .line 26
    .line 27
    iput-object p1, v0, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;->url:Ljava/lang/String;

    .line 28
    .line 29
    iput p2, v0, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;->value:I

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    move-result-wide v1

    .line 34
    .line 35
    iput-wide v1, v0, Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;->time:J

    .line 36
    .line 37
    sget-object v1, Lcom/narvii/app/AminoWebViewFragment;->safeBrowsingCache:Landroid/util/LruCache;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$2;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/narvii/app/AminoWebViewFragment;->setSafeValue(Ljava/lang/Integer;)V

    .line 52
    return-void
.end method
