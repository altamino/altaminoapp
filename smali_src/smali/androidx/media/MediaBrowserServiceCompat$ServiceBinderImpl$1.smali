.class Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->b(Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final synthetic val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field final synthetic val$pid:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rootHints:Landroid/os/Bundle;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    .line 7
    .line 8
    iput p4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pid:I

    .line 9
    .line 10
    iput p5, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    .line 11
    .line 12
    iput-object p6, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 20
    .line 21
    iget-object v3, v2, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 22
    .line 23
    iget-object v4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    .line 24
    .line 25
    iget v5, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pid:I

    .line 26
    .line 27
    iget v6, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    .line 28
    .line 29
    iget-object v7, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Landroid/os/Bundle;

    .line 30
    .line 31
    iget-object v8, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 32
    move-object v2, v1

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v2 .. v8}, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 38
    .line 39
    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 40
    .line 41
    iput-object v1, v2, Landroidx/media/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    .line 44
    .line 45
    iget v4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    .line 46
    .line 47
    iget-object v5, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3, v4, v5}, Landroidx/media/MediaBrowserServiceCompat;->e(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    iput-object v2, v1, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 54
    .line 55
    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 56
    .line 57
    iget-object v3, v3, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 58
    const/4 v4, 0x0

    .line 59
    .line 60
    iput-object v4, v3, Landroidx/media/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 61
    .line 62
    const-string v4, "MBServiceCompat"

    .line 63
    .line 64
    if-nez v2, :cond_0

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    const-string v1, "No root for client "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v1, " from service "

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    :try_start_0
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 105
    .line 106
    .line 107
    invoke-interface {v0}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    const-string v1, "Calling onConnectFailed() failed. Ignoring. pkg="

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    goto :goto_0

    .line 132
    .line 133
    :cond_0
    :try_start_1
    iget-object v2, v3, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v0, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v2, 0x0

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 141
    .line 142
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 143
    .line 144
    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 145
    .line 146
    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 147
    .line 148
    if-eqz v2, :cond_1

    .line 149
    .line 150
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 151
    .line 152
    iget-object v3, v1, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;->d()Ljava/lang/String;

    .line 156
    move-result-object v3

    .line 157
    .line 158
    iget-object v5, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 159
    .line 160
    iget-object v5, v5, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 161
    .line 162
    iget-object v5, v5, Landroidx/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 163
    .line 164
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;->c()Landroid/os/Bundle;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    .line 171
    invoke-interface {v2, v3, v5, v1}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->c(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    goto :goto_0

    .line 173
    .line 174
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    const-string v2, "Calling onConnect() failed. Dropping client. pkg="

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 192
    .line 193
    .line 194
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 197
    .line 198
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 199
    .line 200
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_1
    :goto_0
    return-void
.end method
