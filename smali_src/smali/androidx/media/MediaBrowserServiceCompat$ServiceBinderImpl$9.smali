.class Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->h(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$receiver:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$action:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$extras:Landroid/os/Bundle;

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string/jumbo v1, "sendCustomAction for callback that isn\'t registered action="

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$action:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, ", extras="

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$extras:Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    const-string v1, "MBServiceCompat"

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 56
    .line 57
    :cond_0
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 58
    .line 59
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$action:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$extras:Landroid/os/Bundle;

    .line 64
    .line 65
    iget-object v4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2, v3, v0, v4}, Landroidx/media/MediaBrowserServiceCompat;->l(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/support/v4/os/ResultReceiver;)V

    .line 69
    return-void
.end method
