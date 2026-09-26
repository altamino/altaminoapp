.class public final synthetic Lcom/narvii/util/http/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/util/http/ApiService$WrappedRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/http/ApiService$WrappedRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/http/b;->a:Lcom/narvii/util/http/ApiService$WrappedRequest;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/util/http/b;->a:Lcom/narvii/util/http/ApiService$WrappedRequest;

    check-cast p1, Lcom/narvii/util/http/ApiService$WrappedRequest;

    invoke-static {v0, p1}, Lcom/narvii/util/http/ApiService$WrappedRequest;->b(Lcom/narvii/util/http/ApiService$WrappedRequest;Lcom/narvii/util/http/ApiService$WrappedRequest;)V

    return-void
.end method
