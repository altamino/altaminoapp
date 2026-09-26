.class public final synthetic Lcom/narvii/chat/screenroom/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/screenroom/ScreenRoomService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/n;->a:Lcom/narvii/chat/screenroom/ScreenRoomService;

    return-void
.end method


# virtual methods
.method public final onInfo(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/n;->a:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-static {v0, p1, p2, p3}, Lcom/narvii/chat/screenroom/ScreenRoomService;->g(Lcom/narvii/chat/screenroom/ScreenRoomService;Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
