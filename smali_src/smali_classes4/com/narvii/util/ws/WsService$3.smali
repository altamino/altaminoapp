.class Lcom/narvii/util/ws/WsService$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ws/WsService;->setBroadcastRegister(Z)V
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$3;->this$0:Lcom/narvii/util/ws/WsService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/ws/WsService$3$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/util/ws/WsService$3$1;-><init>(Lcom/narvii/util/ws/WsService$3;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method
