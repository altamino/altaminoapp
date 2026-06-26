.class Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SRAudioOnlyCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 1271
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;)V
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iget-boolean v0, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly:Z

    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;->onHostAudioOnlyChanged(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1271
    check-cast p1, Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;->call(Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;)V

    return-void
.end method

.method public run()V
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$900(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method
