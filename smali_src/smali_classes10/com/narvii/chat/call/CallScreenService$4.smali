.class Lcom/narvii/chat/call/CallScreenService$4;
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
    iput-object p1, p0, Lcom/narvii/chat/call/CallScreenService$4;->this$0:Lcom/narvii/chat/call/CallScreenService;

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
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService$4;->this$0:Lcom/narvii/chat/call/CallScreenService;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/call/CallScreenService;->a(Lcom/narvii/chat/call/CallScreenService;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x9

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService$4;->this$0:Lcom/narvii/chat/call/CallScreenService;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/chat/call/CallScreenService;->a(Lcom/narvii/chat/call/CallScreenService;)I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService$4;->this$0:Lcom/narvii/chat/call/CallScreenService;

    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 26
    :cond_1
    return-void
.end method
