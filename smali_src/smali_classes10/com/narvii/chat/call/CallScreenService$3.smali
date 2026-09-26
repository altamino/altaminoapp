.class Lcom/narvii/chat/call/CallScreenService$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/call/CallScreenService$3;->this$0:Lcom/narvii/chat/call/CallScreenService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService$3;->this$0:Lcom/narvii/chat/call/CallScreenService;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/call/CallScreenService;->a(Lcom/narvii/chat/call/CallScreenService;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService$3;->this$0:Lcom/narvii/chat/call/CallScreenService;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/chat/call/CallScreenService;->a(Lcom/narvii/chat/call/CallScreenService;)I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService$3;->this$0:Lcom/narvii/chat/call/CallScreenService;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/chat/call/CallScreenService;->a(Lcom/narvii/chat/call/CallScreenService;)I

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x4

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService$3;->this$0:Lcom/narvii/chat/call/CallScreenService;

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 34
    :cond_1
    return-void
.end method
