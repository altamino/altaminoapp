.class Lcom/narvii/chat/screenroom/ScreenRoomService$21;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;->onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field final synthetic val$playList:Lcom/narvii/model/PlayList;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/model/PlayList;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$21;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$21;->val$playList:Lcom/narvii/model/PlayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$21;->val$playList:Lcom/narvii/model/PlayList;

    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;->onPlayListChanged(Lcom/narvii/model/PlayList;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 911
    check-cast p1, Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$21;->call(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V

    return-void
.end method
