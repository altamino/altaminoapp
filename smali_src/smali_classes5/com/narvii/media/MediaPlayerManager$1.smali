.class Lcom/narvii/media/MediaPlayerManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPlayerManager;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPlayerManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager$1;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    const-string p2, "android.intent.action.HEADSET_PLUG"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$1;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/media/MediaPlayerManager;->resetSpeakMode()V

    .line 22
    :goto_0
    return-void
.end method
