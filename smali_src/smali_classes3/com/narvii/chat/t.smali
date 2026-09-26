.class public final synthetic Lcom/narvii/chat/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/ChatThreadUserOperationHelper;

.field public final synthetic b:Lcom/narvii/util/Callback;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/Callback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/t;->a:Lcom/narvii/chat/ChatThreadUserOperationHelper;

    iput-object p2, p0, Lcom/narvii/chat/t;->b:Lcom/narvii/util/Callback;

    iput-object p3, p0, Lcom/narvii/chat/t;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/t;->a:Lcom/narvii/chat/ChatThreadUserOperationHelper;

    iget-object v1, p0, Lcom/narvii/chat/t;->b:Lcom/narvii/util/Callback;

    iget-object v2, p0, Lcom/narvii/chat/t;->c:Ljava/lang/String;

    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->a(Lcom/narvii/chat/ChatThreadUserOperationHelper;Lcom/narvii/util/Callback;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
