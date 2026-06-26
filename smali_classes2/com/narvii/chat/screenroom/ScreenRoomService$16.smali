.class Lcom/narvii/chat/screenroom/ScreenRoomService$16;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;->setPlayListItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/screenroom/VideoPlayListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$16;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$16;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-static {v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$200(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 625
    check-cast p1, Lcom/narvii/chat/screenroom/VideoPlayListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$16;->call(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method
