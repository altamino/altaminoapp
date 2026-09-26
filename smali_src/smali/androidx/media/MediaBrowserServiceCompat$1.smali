.class Landroidx/media/MediaBrowserServiceCompat$1;
.super Landroidx/media/MediaBrowserServiceCompat$Result;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat;->m(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media/MediaBrowserServiceCompat$Result<",
        "Ljava/util/List<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media/MediaBrowserServiceCompat;

.field final synthetic val$connection:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

.field final synthetic val$notifyChildrenChangedOptions:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;

.field final synthetic val$subscribeOptions:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$1;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 3
    .line 4
    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$connection:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 5
    .line 6
    iput-object p4, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$subscribeOptions:Landroid/os/Bundle;

    .line 9
    .line 10
    iput-object p6, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$notifyChildrenChangedOptions:Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Landroidx/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method bridge synthetic d(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$1;->h(Ljava/util/List;)V

    .line 6
    return-void
.end method

.method h(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$1;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$connection:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$connection:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 19
    .line 20
    const-string v2, "MBServiceCompat"

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    sget-boolean p1, Landroidx/media/MediaBrowserServiceCompat;->DEBUG:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v0, "Not sending onLoadChildren result for connection that has been disconnected. pkg="

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$connection:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 39
    .line 40
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v0, " id="

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Landroidx/media/MediaBrowserServiceCompat$Result;->a()I

    .line 65
    move-result v0

    .line 66
    .line 67
    and-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$1;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 72
    .line 73
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$subscribeOptions:Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1, v1}, Landroidx/media/MediaBrowserServiceCompat;->b(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$connection:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 80
    .line 81
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 82
    .line 83
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$subscribeOptions:Landroid/os/Bundle;

    .line 86
    .line 87
    iget-object v4, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$notifyChildrenChangedOptions:Landroid/os/Bundle;

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, v1, p1, v3, v4}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    const-string v0, "Calling onLoadChildren() failed for id="

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v0, " package="

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$1;->val$connection:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 114
    .line 115
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-void
.end method
