.class Lcom/narvii/chat/screenroom/ScreenRoomService$18;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;->updatePlayList(ILjava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$18;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$18;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 816
    instance-of v0, p1, Lcom/narvii/util/ws/WsMessage;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$18;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_1

    .line 820
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
