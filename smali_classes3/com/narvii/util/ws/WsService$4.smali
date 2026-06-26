.class Lcom/narvii/util/ws/WsService$4;
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

    .line 236
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$4;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$4;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-virtual {v0}, Lcom/narvii/util/ws/WsService;->stop()V

    return-void
.end method
