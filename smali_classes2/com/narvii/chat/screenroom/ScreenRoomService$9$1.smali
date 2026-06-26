.class Lcom/narvii/chat/screenroom/ScreenRoomService$9$1;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/screenroom/SRHostLoadingListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$9;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService$9;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$9$1;->this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/screenroom/SRHostLoadingListener;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$9$1;->this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$9;

    iget-boolean v0, v0, Lcom/narvii/chat/screenroom/ScreenRoomService$9;->val$loading:Z

    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/SRHostLoadingListener;->onHostLoading(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 332
    check-cast p1, Lcom/narvii/chat/screenroom/SRHostLoadingListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$9$1;->call(Lcom/narvii/chat/screenroom/SRHostLoadingListener;)V

    return-void
.end method
