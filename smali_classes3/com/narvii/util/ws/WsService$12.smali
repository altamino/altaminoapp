.class Lcom/narvii/util/ws/WsService$12;
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

    .line 774
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$12;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 777
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$12;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-virtual {v0}, Lcom/narvii/util/ws/WsService;->pingServer()V

    .line 778
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
