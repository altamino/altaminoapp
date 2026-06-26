.class Lcom/narvii/util/EventDispatcher$1;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/EventDispatcher;

.field final synthetic val$handler:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/util/EventDispatcher;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/narvii/util/EventDispatcher$1;->this$0:Lcom/narvii/util/EventDispatcher;

    iput-object p2, p0, Lcom/narvii/util/EventDispatcher$1;->val$handler:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/EventDispatcher$1;->val$handler:Lcom/narvii/util/Callback;

    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "error when dispatch event"

    .line 103
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
