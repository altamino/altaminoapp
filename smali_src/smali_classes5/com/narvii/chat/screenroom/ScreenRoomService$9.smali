.class Lcom/narvii/chat/screenroom/ScreenRoomService$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;->onChannelStarted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field final synthetic val$hostUid:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$9;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$9;->val$uid:I

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$9;->val$hostUid:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$9;->val$uid:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$9;->val$hostUid:I

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$9;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->z(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$9;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    iput-boolean v1, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostDataCame:Z

    .line 18
    :cond_0
    return-void
.end method
