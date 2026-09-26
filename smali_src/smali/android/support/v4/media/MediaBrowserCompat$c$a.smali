.class Landroid/support/v4/media/MediaBrowserCompat$c$a;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$c;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$c;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$c$a;->this$0:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$c$a;->this$0:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 3
    .line 4
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$c;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$c$b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$c$b;->onConnected()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$c$a;->this$0:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$c;->a()V

    .line 15
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$c$a;->this$0:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 3
    .line 4
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$c;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$c$b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$c$b;->e()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$c$a;->this$0:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$c;->b()V

    .line 15
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$c$a;->this$0:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 3
    .line 4
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$c;->mConnectionCallbackInternal:Landroid/support/v4/media/MediaBrowserCompat$c$b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$c$b;->b()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$c$a;->this$0:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$c;->c()V

    .line 15
    return-void
.end method
