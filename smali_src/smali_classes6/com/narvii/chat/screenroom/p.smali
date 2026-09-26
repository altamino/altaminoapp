.class public final synthetic Lcom/narvii/chat/screenroom/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field public final synthetic b:Lcom/narvii/chat/screenroom/widgets/GLVideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/p;->a:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/p;->b:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    return-void
.end method


# virtual methods
.method public final onError(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/p;->a:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/p;->b:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/narvii/chat/screenroom/ScreenRoomService;->f(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/widgets/GLVideoView;Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
