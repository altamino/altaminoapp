.class Lcom/narvii/chat/screenroom/ScreenRoomService$25$1;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService$25;
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
.field final synthetic this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$25;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService$25;)V
    .locals 0

    .line 1186
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$25$1;->this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/screenroom/SRHostMicListener;)V
    .locals 0

    .line 1189
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/SRHostMicListener;->onMicMuted()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1186
    check-cast p1, Lcom/narvii/chat/screenroom/SRHostMicListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$25$1;->call(Lcom/narvii/chat/screenroom/SRHostMicListener;)V

    return-void
.end method
