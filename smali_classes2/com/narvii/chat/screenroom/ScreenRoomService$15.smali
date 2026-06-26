.class Lcom/narvii/chat/screenroom/ScreenRoomService$15;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;->setBuffering(Z)V
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

.field final synthetic val$buffering:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$15;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-boolean p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$15;->val$buffering:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/screenroom/VideoPlayListener;)V
    .locals 1

    .line 599
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$15;->val$buffering:Z

    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/VideoPlayListener;->onBuffering(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 596
    check-cast p1, Lcom/narvii/chat/screenroom/VideoPlayListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$15;->call(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method
