.class Lcom/narvii/chat/screenroom/ScreenRoomService$22;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;->onFail(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$22;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$22;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$100(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    return-void
.end method
