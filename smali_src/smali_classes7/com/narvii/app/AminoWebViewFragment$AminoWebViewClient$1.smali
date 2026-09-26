.class Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;


# direct methods
.method constructor <init>(Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->pendingSafeUrl:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "safe-browsing"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->pendingSafeUrl:Ljava/lang/String;

    .line 39
    .line 40
    const-string v3, "url"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->pendingSafeUrl:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    iput-object v1, v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safeRequest:Lcom/narvii/util/http/ApiRequest;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    .line 61
    .line 62
    iget-object v1, v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->api:Lcom/narvii/util/http/ApiService;

    .line 63
    .line 64
    iget-object v2, v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safeRequest:Lcom/narvii/util/http/ApiRequest;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safeListener:Lcom/narvii/util/http/ApiJsonResponseListener;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 70
    :cond_0
    return-void
.end method
