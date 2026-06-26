.class Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;
.super Ljava/lang/Object;
.source "AminoWebViewFragment.java"

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

    .line 246
    iput-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    iget-object v1, v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->pendingSafeUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "safe-browsing"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    iget-object v2, v2, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->pendingSafeUrl:Ljava/lang/String;

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    iget-object v2, v2, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->pendingSafeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safeRequest:Lcom/narvii/util/http/ApiRequest;

    .line 251
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient$1;->this$1:Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    iget-object v1, v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->api:Lcom/narvii/util/http/ApiService;

    iget-object v2, v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safeRequest:Lcom/narvii/util/http/ApiRequest;

    iget-object v0, v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;->safeListener:Lcom/narvii/util/http/ApiJsonResponseListener;

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_0
    return-void
.end method
