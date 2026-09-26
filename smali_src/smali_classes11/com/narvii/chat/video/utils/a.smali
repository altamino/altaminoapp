.class public final synthetic Lcom/narvii/chat/video/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/utils/a;->a:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/utils/a;->a:Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;

    invoke-static {v0, p1}, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->a(Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;Landroid/media/MediaPlayer;)V

    return-void
.end method
