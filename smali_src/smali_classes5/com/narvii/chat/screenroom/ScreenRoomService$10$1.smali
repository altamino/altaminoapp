.class Lcom/narvii/chat/screenroom/ScreenRoomService$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService$10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/screenroom/SRHostMicListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$10;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService$10;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$10$1;->this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$10;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/screenroom/SRHostMicListener;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$10$1;->this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$10;

    .line 2
    iget v0, v0, Lcom/narvii/chat/screenroom/ScreenRoomService$10;->v:F

    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/SRHostMicListener;->onMicLevelIndicator(F)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/screenroom/SRHostMicListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$10$1;->call(Lcom/narvii/chat/screenroom/SRHostMicListener;)V

    return-void
.end method
