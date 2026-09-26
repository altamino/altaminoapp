.class Lcom/narvii/chat/screenroom/ScreenRoomService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;->onScreenRoomHostLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field final synthetic val$loading:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$4;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$4;->val$loading:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static synthetic a(ZLcom/narvii/chat/screenroom/SRHostLoadingListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$4;->lambda$run$0(ZLcom/narvii/chat/screenroom/SRHostLoadingListener;)V

    return-void
.end method

.method private static synthetic lambda$run$0(ZLcom/narvii/chat/screenroom/SRHostLoadingListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/narvii/chat/screenroom/SRHostLoadingListener;->onHostLoading(Z)V

    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$4;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->s(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$4;->val$loading:Z

    .line 9
    .line 10
    new-instance v2, Lcom/narvii/chat/screenroom/r;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v1}, Lcom/narvii/chat/screenroom/r;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 17
    return-void
.end method
