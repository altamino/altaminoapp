.class Lcom/narvii/chat/call/CallScreenService$2;
.super Ljava/lang/Object;
.source "CallScreenService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/call/CallScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/call/CallScreenService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/call/CallScreenService;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/narvii/chat/call/CallScreenService$2;->this$0:Lcom/narvii/chat/call/CallScreenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService$2;->this$0:Lcom/narvii/chat/call/CallScreenService;

    invoke-static {v0}, Lcom/narvii/chat/call/CallScreenService;->access$000(Lcom/narvii/chat/call/CallScreenService;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService$2;->this$0:Lcom/narvii/chat/call/CallScreenService;

    invoke-static {v0}, Lcom/narvii/chat/call/CallScreenService;->access$000(Lcom/narvii/chat/call/CallScreenService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService$2;->this$0:Lcom/narvii/chat/call/CallScreenService;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    :cond_1
    return-void
.end method
