.class public final synthetic Lcom/narvii/chat/screenroom/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/screenroom/ScreenRoomService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/o;->a:Lcom/narvii/chat/screenroom/ScreenRoomService;

    return-void
.end method


# virtual methods
.method public final onPrepared(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/o;->a:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-static {v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->o(Lcom/narvii/chat/screenroom/ScreenRoomService;Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    return-void
.end method
