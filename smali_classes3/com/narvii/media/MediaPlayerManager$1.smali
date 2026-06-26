.class Lcom/narvii/media/MediaPlayerManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlayerManager.java"


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

    .line 53
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager$1;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x63ecb970

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$1;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-virtual {p1}, Lcom/narvii/media/MediaPlayerManager;->resetSpeakMode()V

    :goto_2
    return-void
.end method
