.class final Lcom/narvii/chat/video/utils/LiveChannelMusicHelper$playHintMusic$1;
.super Ljava/lang/Object;
.source "LiveChannelMusicHelper.kt"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->playHintMusic(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper$playHintMusic$1;->this$0:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper$playHintMusic$1;->this$0:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->setPlayingMusic(Z)V

    return-void
.end method
