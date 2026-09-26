.class public final synthetic Lcom/narvii/chat/screenroom/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/i;->a:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput p2, p0, Lcom/narvii/chat/screenroom/i;->b:I

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/i;->a:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iget v1, p0, Lcom/narvii/chat/screenroom/i;->b:I

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->k(Lcom/narvii/chat/screenroom/ScreenRoomService;II)V

    return-void
.end method
