.class Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;
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
    name = "SRHostStatusCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/screenroom/SRHostStatusListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 1247
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/screenroom/SRHostStatusListener;)V
    .locals 2

    .line 1256
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iget v1, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1257
    iget-boolean v0, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMuted:Z

    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/SRHostStatusListener;->onHostMutedChanged(Z)V

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iget v1, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1260
    iget v0, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostIndicatorLevel:F

    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/SRHostStatusListener;->onHostMicIndicatorLevelChanged(F)V

    .line 1262
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iget v1, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1263
    iget v0, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostVideoProgress:F

    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/SRHostStatusListener;->onHostVideoProgress(F)V

    :cond_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1247
    check-cast p1, Lcom/narvii/chat/screenroom/SRHostStatusListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;->call(Lcom/narvii/chat/screenroom/SRHostStatusListener;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1250
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$800(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 1251
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    const/4 v1, 0x0

    iput v1, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    return-void
.end method
