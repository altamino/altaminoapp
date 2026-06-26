.class Lcom/narvii/util/ws/WsService$5;
.super Ljava/lang/Object;
.source "WsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/ws/WsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/ws/WsService;


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$5;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$5;->this$0:Lcom/narvii/util/ws/WsService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    return-void
.end method
