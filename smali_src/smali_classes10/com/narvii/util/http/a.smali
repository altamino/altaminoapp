.class public final synthetic Lcom/narvii/util/http/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/util/http/ApiService;

.field public final synthetic b:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/http/a;->a:Lcom/narvii/util/http/ApiService;

    iput-object p2, p0, Lcom/narvii/util/http/a;->b:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/util/http/a;->a:Lcom/narvii/util/http/ApiService;

    iget-object v1, p0, Lcom/narvii/util/http/a;->b:Lcom/narvii/util/Callback;

    check-cast p1, Lcom/narvii/util/http/ApiRequest;

    invoke-static {v0, v1, p1}, Lcom/narvii/util/http/ApiService;->a(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/Callback;Lcom/narvii/util/http/ApiRequest;)V

    return-void
.end method
